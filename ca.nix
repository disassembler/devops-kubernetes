{ pkgs, ... }:
{
  runWithOpenSSL = file: cmd: pkgs.runCommand file {
    buildInputs = [ pkgs.openssl ];
  } cmd;

  ca_key = runWithOpenSSL "ca-key.pem" "openssl genrsa -out $out 2048";
  ca_pem = runWithOpenSSL "ca.pem" ''
    openssl req \
      -x509 -new -nodes -key ${ca_key} \
      -days 10000 -out $out -subj "/CN=etcd-ca"
  '';
  etcd_key = runWithOpenSSL "etcd-key.pem" "openssl genrsa -out $out 2048";
  etcd_csr = runWithOpenSSL "etcd.csr" ''
    openssl req \
       -new -key ${etcd_key} \
       -out $out -subj "/CN=etcd" \
       -config ${openssl_cnf}
  '';
  etcd_cert = runWithOpenSSL "etcd.pem" ''
    openssl x509 \
      -req -in ${etcd_csr} \
      -CA ${ca_pem} -CAkey ${ca_key} \
      -CAcreateserial -out $out \
      -days 365 -extensions v3_req \
      -extfile ${openssl_cnf}
  '';

  etcd_client_key = runWithOpenSSL "etcd-client-key.pem"
    "openssl genrsa -out $out 2048";

  etcd_client_csr = runWithOpenSSL "etcd-client-key.pem" ''
    openssl req \
      -new -key ${etcd_client_key} \
      -out $out -subj "/CN=etcd-client" \
      -config ${client_openssl_cnf}
  '';

  etcd_client_cert = runWithOpenSSL "etcd-client.crt" ''
    openssl x509 \
      -req -in ${etcd_client_csr} \
      -CA ${ca_pem} -CAkey ${ca_key} -CAcreateserial \
      -out $out -days 365 -extensions v3_req \
      -extfile ${client_openssl_cnf}
  '';

  openssl_cnf = pkgs.writeText "openssl.cnf" ''
    ions = v3_req
    distinguished_name = req_distinguished_name
    [req_distinguished_name]
    [ v3_req ]
    basicConstraints = CA:FALSE
    keyUsage = digitalSignature, keyEncipherment
    extendedKeyUsage = serverAuth
    subjectAltName = @alt_names
    [alt_names]
    DNS.1 = node1
    DNS.2 = node2
    DNS.3 = node3
    IP.1 = 127.0.0.1
  '';

  client_openssl_cnf = pkgs.writeText "client-openssl.cnf" ''
    ions = v3_req
    distinguished_name = req_distinguished_name
    [req_distinguished_name]
    [ v3_req ]
    basicConstraints = CA:FALSE
    keyUsage = digitalSignature, keyEncipherment
    extendedKeyUsage = clientAuth
  '';
}
