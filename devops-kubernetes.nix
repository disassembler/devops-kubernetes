let
  pkgs = import <nixpkgs> {};
    ca_key = pkgs.writeText "ca-key.pem" ''
-----BEGIN RSA PRIVATE KEY-----
MIIEpAIBAAKCAQEAuMIiRV/AIkVSPTIaF/J+GmWpAFuf6AAoxTMyrwhPnDJYqsbm
3mfDWOULwnmtAKCdQTxcpTG/T4a5FnFpMKt+7gwUSW/zwy7PnyGdaR/e3uiiV2iq
YWfidmB1RkZRKhtGLXqdIEnb72wjVNz/LdY2An3AFK+Nl544kfKig4S16iAKfc5H
2kXUyAWWBqlQWcGjQ3yEjZYzbWZ2a0iyH3WQ89mXaOUnepR1JAdrL9ArLPt0ok8Z
7Tpx6Sy4LN2e0NjyRiDBigfczOz62Vbvu/vrZ5yu4Ed5skNlc8BpVZNDiU+63Vsu
EGZ1+pSvBU4RJHDAwRTaThR1WxV4MdfRaowxTwIDAQABAoIBADIgkdXKrcFel3p8
/nFi3G3jCSBMu6zhZi5ivqyYj6jsS/xBrN/IvUqAElm4U4TpDuFlNCmpvqMgBVWe
fZCz5uNFKbfnBPb+21vsbd3YxMoryef3QMreuaWudAMWDu1iqv6p1rms8FwcNdXP
g/h2tv6kCZpTKxJo3iZS817Fgem8Q0uTz3A1iN48RkWt5+mgvcJkUbuntStMXWZ4
2XUM2LQiJkBPfiE2AEMXUQnLuR2D+RMK7imkQmiow5YkiVz4Rft65GONszAVud8E
ndFYsCuGlBvvgIx5twpbDHPtgJcGNQYGXsKtFhuL5Si4OFVoUAnpRN57eX7T1zG0
jgnWy2kCgYEA7ND/IgRfcPOgDXjM7Qf3a9gAMmR47a9XZjB+yWXmVLsIqqhgFp6C
DquAeEKPtCbMzQMkwCL0LKhCXa4zrEOSJTcJ/jLetLIe1WFr3rpuvKX1avtuAuKo
saWwz8z1EtA4zLhjW8YhhbsVmB/PKb6Bs1wxN8+JTsqicSOkC8lMEqUCgYEAx7mU
AMpwpaEKAHwtpxg/nyMCDnblqGhbnmCfF55bxKMzVv+GxdbQoE3F4MjQwcHv9cVC
x7hqaEE6zXWTzAgTv6E1uCW0VwdmGNh5eS+lCBxcTaIx9Thp2+aQYxyjXa2wlBmL
lb+YiGeqRX3xuOoUAQYFNm5bHwtiQRkPvS/1teMCgYAETM81KOsqu+G+HOFrtGdT
t/pY7+YaOsLVgi/rLESAaV0A7EnCX2JxLcAJbvv5A3NYjaQPMRNJ9EwwM0eQ6zEu
J8+wo+/TTCCvMzOoOa5lEoZgSOx4dPEnOKD7RPd2Pf2qCfcT5YcaTIlZ18oFMgZc
4WGrZ8NQgPFuKH2EEUWmWQKBgQCeOU+d/MKXBGgXEEleeeBVIvfLG7g+3UXPx33h
ySusMRpIDrDnZJHsnRBpTs3K4ehHDRolfNyXcS2zfTU0SyXSB1W2Z/BhjdP9VOmO
7wbP0R/yxM7NFP8QHa0/R33IhgRAn6gsXxfo4C9NVEQ+GPr2AJ36jByWEH+rUL5e
Q3NlvwKBgQCyPj0ZilzoaV5AZpkpHjpBICM1d4VXAa28r5oEgOMNQxIB+/iC/TbW
NytysRoLvC5W7C3IUHFDMKEfXWG0XwEbfvoZgXkqKfuem/rNO1dmzK1ltKNoh33L
Me1j/EURUWSCbchfH6T022q4f85p1cs+Qv3LWYBQEDqKsI+8+NSSNQ==
-----END RSA PRIVATE KEY-----
    '';
    ca_pem = pkgs.writeText "ca.pem" ''
-----BEGIN CERTIFICATE-----
MIIC9zCCAd+gAwIBAgIJAKv6fmuaeRT/MA0GCSqGSIb3DQEBCwUAMBIxEDAOBgNV
BAMMB2V0Y2QtY2EwHhcNMTcwNjIwMTkyMDA2WhcNNDQxMTA1MTkyMDA2WjASMRAw
DgYDVQQDDAdldGNkLWNhMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA
uMIiRV/AIkVSPTIaF/J+GmWpAFuf6AAoxTMyrwhPnDJYqsbm3mfDWOULwnmtAKCd
QTxcpTG/T4a5FnFpMKt+7gwUSW/zwy7PnyGdaR/e3uiiV2iqYWfidmB1RkZRKhtG
LXqdIEnb72wjVNz/LdY2An3AFK+Nl544kfKig4S16iAKfc5H2kXUyAWWBqlQWcGj
Q3yEjZYzbWZ2a0iyH3WQ89mXaOUnepR1JAdrL9ArLPt0ok8Z7Tpx6Sy4LN2e0Njy
RiDBigfczOz62Vbvu/vrZ5yu4Ed5skNlc8BpVZNDiU+63VsuEGZ1+pSvBU4RJHDA
wRTaThR1WxV4MdfRaowxTwIDAQABo1AwTjAdBgNVHQ4EFgQUU1QKWXy5vGxaNLmM
ftkektwbE1swHwYDVR0jBBgwFoAUU1QKWXy5vGxaNLmMftkektwbE1swDAYDVR0T
BAUwAwEB/zANBgkqhkiG9w0BAQsFAAOCAQEAGJKbDqdCyBUTG+JUYQ9Qv/du0/+B
6Fonx92M/YSXAMLOOuY27DSMCQ+UkRQm4Rp177nDXFcpm1lTn+zzR7/cnqx4Zucu
47Xw+xfPj7f6HFL1UuyW0251TS2BggfWu6OLOSVzs4jW9ObfwDdqNyPWff31lAac
CfDy9YUcciBn30D0Qs7RA8971jFdD1gciFvoxGZSEN6L77n9iIxDq0x0sEZtPdA/
iuJYDZBQrrr2cabFUI7DehCi8uTZliShTSLNsgQ75PorsDHHweCEJQ+WSOCRCYl8
UxpAW82AYSMeYLLd3d2sZvO/yYm0m3xWkVALEWUsM+B01lgvA5BRbQtqHg==
-----END CERTIFICATE-----
    '';
    etcd_key = pkgs.writeText "etcd-key.pem" ''
-----BEGIN RSA PRIVATE KEY-----
MIIEpQIBAAKCAQEAyLVpxO7bkqU2+aODWEm56AVHoD3+G3hOGgWvlmg+a7ozug0k
7rgXhQzBiyErXDxMbByb65GjpuiVYPLrr/N1YhfZ/HwcDS2qXdjifb08XpVqZymB
xdJ5iYYvfS0j2LtGqlcx8R+ezesNz3w9GtIfJY9EousRL55YoyiGsXkxfJoKR0pD
dcDMPq1BJ5ikEmqW6attjeZ5kcfUepBWRMhko0tHgQ6uhZMeAStIOx423vMmzIxn
KR2OLqcWMZ5qRcypdTMacanVvn24L8MBZvEU0Se8rwqbPWgjxlefh0jsK5389lax
aiOGM3+YFds0SF0sUhrSHDAdiX19eWBMTzknzwIDAQABAoIBADdql4SPasLHqTEu
K4LCAHmGk6sz0qhlBDN9JGkD6VA3Pjb9kBf1blEHH505kE5MO9GR6J8XPDdGepAl
IlwXfW6TJVXoMpqU5Dg7PPX4vOVknddUB4fGQFZvXUdTolUiCDXaE2j/EQrL/qku
JXT1VTI6p3nQK5OZReHuu5ne24IKTKb478D5wW5MQWbzbAmoI3+FHq+Jt9eTcC5+
qMWtwFt4ap1Gz1yA+0oORANaQ/NUe42Z28P+ETsJKAznEZf9OEXfOH5QllSRkHMW
9sNoLsTwmyCP7Lbq8/E6pHUj4v0x8/Gncc55uMUMouz4E4iWcrsvufOd/mGyUvfx
ZmGQDKkCgYEA8VPPrFAvG4TeHP3PAr3eZ/SXjvqthc6WxlK4l1nSZjN7e3Wk3sL7
PWF1niDIEWUQ3KGKNjoZOg6Arv/gFTcxXyrutDxt9IdAOvpzDRkEcyQm4M5l9lTM
U7LlNbqx4fPmOMmqOGG/74rWxJmShirnxSrpAubevntS0cQ5czTLih0CgYEA1Oli
IhdUVz3lKLrfjx8J/tUJ71hDjrdquWJqd15tBEpsRI7LsID1OdZ7KdF5AG3sUm3S
VsQuM8THlcDJqEzqQhVOT7+KDM1cg7FWjJVbKfUbroSgcD1Qk/0dIuFsqoldO/Bp
7ilYaJG/s/wFq5LBmN9ug72IAlnNvXzBH1/qNdsCgYEAhfwEVyUFon+4WdxIrLsB
2jGgW8+tu5ahe2a9+bny6K84pakBanRSzRdpF+wXaCD2pahCdiz3iJY4t/B0VxMX
pEDP2t2aJqNY8+XNLr5vDAZMV5AAaC1YbDfsrlIDJPInJexBR6Bt0e8BopGpGjiE
CaHzUJshnBwYNUJ+qwnq37kCgYEAyk0jSF9AbVDLcEL37ubAOZm1Qe1s66tNxe5E
WT2oej4413+S/RfbamRoTJjTz1ujA8OD65umhtwABEPVmIvUvou+CDpn8rgioqMb
KKM1pw1ViyJLy7oG2UbUq3LkLLouk6hhDsHMVje+nkbmIFtmhlouiRDKrekke1qR
qb0aLqcCgYEAyKFP0azk9DlylB8w0w0zgEghojxfImOz3dqiI0S0XUWYQJ6FQDZk
xtbhYex0aHT+mok68hqwKoKmuGtKVDV//mANZE3zVO2pVBr8LnEn4RPKV3ZPZwKF
GNlD2beHa+0eU/1aaYHH/ePFyFx+GJ2yBYgdjuNdkmkZRKo/uYPDS4E=
-----END RSA PRIVATE KEY-----
    '';
    etcd_cert = pkgs.writeText "etcd.pem" ''
-----BEGIN CERTIFICATE-----
MIIC+TCCAeGgAwIBAgIJAI7PNcOaEdHaMA0GCSqGSIb3DQEBCwUAMBIxEDAOBgNV
BAMMB2V0Y2QtY2EwHhcNMTcwNjIwMTk1MzM4WhcNMTgwNjIwMTk1MzM4WjAPMQ0w
CwYDVQQDDARldGNkMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAyLVp
xO7bkqU2+aODWEm56AVHoD3+G3hOGgWvlmg+a7ozug0k7rgXhQzBiyErXDxMbByb
65GjpuiVYPLrr/N1YhfZ/HwcDS2qXdjifb08XpVqZymBxdJ5iYYvfS0j2LtGqlcx
8R+ezesNz3w9GtIfJY9EousRL55YoyiGsXkxfJoKR0pDdcDMPq1BJ5ikEmqW6att
jeZ5kcfUepBWRMhko0tHgQ6uhZMeAStIOx423vMmzIxnKR2OLqcWMZ5qRcypdTMa
canVvn24L8MBZvEU0Se8rwqbPWgjxlefh0jsK5389laxaiOGM3+YFds0SF0sUhrS
HDAdiX19eWBMTzknzwIDAQABo1UwUzAJBgNVHRMEAjAAMAsGA1UdDwQEAwIFoDAT
BgNVHSUEDDAKBggrBgEFBQcDATAkBgNVHREEHTAbggVldGNkMYIFZXRjZDKCBWV0
Y2QzhwR/AAABMA0GCSqGSIb3DQEBCwUAA4IBAQA+pAcpD17BOXiGkW2uvd0hFLj+
fhE3PAhwGIHw+pdAt59CclpTO5zEhtU+VRbiEfr7EGQYw6gHnhKesPWP8Cz9TyLY
OAUNTiReQSVnn1DBWrTC5cHlrnkWFBPe0bCTaxtD3CX1K9q9jWDCUeu7paMbJM7N
+vSS2y7YnEfHxLvbI0q/yioouOOB3XBTQRdRrFvGXkIPwhqfzisDV937brFhc/P0
xRv0Yu18s6gF7BaFCP+YND1UQA3IaExhiCBwm9HEtwXGMxTRNXcb0mIAmyvJPlnd
MAUthI9pQDSklJaX8NVlJsoPYVXnkMGuNIo+mJvu9F+zR2YDS4eFKX+vzJpO
-----END CERTIFICATE-----
    '';

    etcd_client_key = pkgs.writeText "etcd-client-key.pem" ''
-----BEGIN RSA PRIVATE KEY-----
MIIEpAIBAAKCAQEA2XJhraGSusLVwaPnASIz46+rbWm5TY41Rmm7IBaJ99auLz0U
TTsWr1jeJ6cFO9COyX2itDrXjEXy1WraREVMssYE0jdfGEkBvqpCAfv0Dj2ggfpY
7nMFLa/15kOOy2YJ+9jxaYg2uOPGr5q8lc3jncU0ZkFtGG6AKwAZyPUhJU5jpAPV
vALdpjwxPh7uMiM72XziP1+rlZvpk7LNt6CkItlHI7ImhXauQZM8sS+hNamJ8ptb
RjOdLn4g7Jc0hs5V/xtkgiVCNe/1m+V2zJUbi0JmZ2e1hzvwvSPwsC1UFlo1KSr0
YFU9lhIogJS543PmMwAo6+xkLmH6y9uf2/ZuSwIDAQABAoIBAQDAuLzT7CEk/+v+
POtPuOWuhhL03UBL+Z9EMg+UqAVOMOqemY71yEoZzTTQhhqAYh87e+uJu6ExBQnt
l0+uNJF+3TyGqGbTGlm+iB4Kriknuf0ZVi4d4LmVPaA+nl/f7CcrHKMSepStl8uP
9h/w0dNMEO2ZN6Gehsl30xYHYyMmcMnY1JnR6Kfzh6GAJcF1WOFvOAcQgDaGwTKS
DI9rTSrSxD/Vp1WVekEVLq9+0NYZukocUH7KGKVuaEKR5zCvsSudn/ev7kJrwHsF
C5tR0QT6tOFncDUDCh88jwjMtBXCfT4fM+MUJloEL9xxlcR33FVdZ4g9nbfXWkHf
+cSWFdnBAoGBAPicIGR0zuUS6ZL3K7Q8jPsy8R0b6g6/Ta4Ee7FeeQlEBDSGF3kO
qWa/XdVbI2mfJ5tCNdyueuiOJYWAFlLU09D6++4U2W9Pcq7CXxBALi876vw0MxVn
o+XkU23JzbIEFD7zy9cjTENkBYQSCxZ5lVz6a8NSogdDqSaBQFPcd43hAoGBAN/p
HCzcYD5H80mZmqdpHWinzxB9BifLzdvaY/4yw6VlO9BXzfS0ffZk5X3FiwH4YAXn
eybUysF0s5+CO497OPYa07C6RB9nHirg4erRyiRS7f2tRLXUFRzLhVIUvT4p1Jo4
lr8rCbwSXrjCx0v0v+mxvf2N4Cuup2x3gpdeVcmrAoGAWbT8e0Mq5L3OSpmly4ON
25amKjrIWkntXb2AZKASTKWeXtWD4srHlau30CTywkoLoJpjlR3ge8nPAD0X0Qu6
4s2t2lrrmp6wYx7/7n06LRER2a98P10GZw3cjOEkt/eA1rZh919lRWvyEZXxKkr0
+nfiKrjGfpiLkLlS3O/QtAECgYEA2K2AsnjgOeTurb6TRoYWC3y4iEA0gLZck/CW
6xq88YUxiMAvcipn6tRgsIFFr7ZnVc9YAY/SVbtVR3qDoKmhyabUTCU0Xx8utlfA
x7gUYWpPHDlcUIjXlXHtpiyjpVBdiJBScNR5KyKrvyfeLMbAIKn8LS3qTNtK8VAF
c+26HtkCgYBQ5G1tK55IrScboYxnKLx8fyrWqMgMfr/3aMZjmfumxiKaGHTpxqfy
/D/bVvkGQ65b6Cg3fQqmBJCeeCM93D9diu8LOzD1+iHRHiQMFlxrBBXZS/IXFW7l
8kbalcQjRXp76UxsjXYcDLg64JBRRPp7AZlQPXoxBEg5JX55gWccsA==
-----END RSA PRIVATE KEY-----
    '';

    etcd_client_cert = pkgs.writeText "etcd-client.crt" ''
-----BEGIN CERTIFICATE-----
MIIC2jCCAcKgAwIBAgIJAI7PNcOaEdHXMA0GCSqGSIb3DQEBCwUAMBIxEDAOBgNV
BAMMB2V0Y2QtY2EwHhcNMTcwNjIwMTkzMDMzWhcNMTgwNjIwMTkzMDMzWjAWMRQw
EgYDVQQDDAtldGNkLWNsaWVudDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoC
ggEBANlyYa2hkrrC1cGj5wEiM+Ovq21puU2ONUZpuyAWiffWri89FE07Fq9Y3ien
BTvQjsl9orQ614xF8tVq2kRFTLLGBNI3XxhJAb6qQgH79A49oIH6WO5zBS2v9eZD
jstmCfvY8WmINrjjxq+avJXN453FNGZBbRhugCsAGcj1ISVOY6QD1bwC3aY8MT4e
7jIjO9l84j9fq5Wb6ZOyzbegpCLZRyOyJoV2rkGTPLEvoTWpifKbW0YznS5+IOyX
NIbOVf8bZIIlQjXv9ZvldsyVG4tCZmdntYc78L0j8LAtVBZaNSkq9GBVPZYSKICU
ueNz5jMAKOvsZC5h+svbn9v2bksCAwEAAaMvMC0wCQYDVR0TBAIwADALBgNVHQ8E
BAMCBaAwEwYDVR0lBAwwCgYIKwYBBQUHAwIwDQYJKoZIhvcNAQELBQADggEBADs4
B+ZZFTZbLB4dd+xGfRydYZYLUh0gL7tkuZuyA0SSFmPgkmc5J/6iQCQObVbwhRXg
RF6+m9bpQGnuC3qQKHuyodXB1RtaaRnVtkHzF6tt3PRt5H+unkV8mSm8nrAkjemC
C6kQ0pFyk+CAIuuycs6eO8xVj+/QytWXDhVuNNLTy5YYYmN6JDmJiqj2fN3zHnrR
t5w3PFiFMHsf5G4MVuB3Zp0BylsRMQrSZCb6TYYAsoo2kjpmfFDmXJsP25ZKY6Rs
5+fw0My6zuhV33dY40T88sXKLZ0jl7abitnj+fzzLiJs6W4xWv9ab86xU14rCPzZ
1S13tWfCD20doAX+xz0=
-----END CERTIFICATE-----
    '';

    apiserver_key = pkgs.writeText "apiserver-key.pem" ''
-----BEGIN RSA PRIVATE KEY-----
MIIEowIBAAKCAQEA4LKdokbgvokjoy+5h75DL5xbTfFTntYC1n6D7NLW3FPxrVgx
rQ1MSIvI1d5cBChErXEVsoJcHYbAjXMTsKpyAbCadNyW28IXFgO8b8Ve7g8WbjAi
rjovqbv3dcRqO8RBvc21I2CABA/dCivjIVWEgpie/Alq2uCN2P+2800K9w1mnll2
eopDE2+ojUZ5HI9afnrMbK2zGawRi47fz8wzSaUqn1bSaRGjjZsJU2xj2sN6WdoC
pcaPuCUHbwPVh1MZagbZi1fmTqZB+UcMyBUTIgZEAJFIHVjqwBB2pxoUeFv7KbP2
RraMzXivqbT2FvHaxZxEDLrsEAbxpL+xRLTWawIDAQABAoIBAEnwvQqvhDlu63lB
tS3EIFvEeg82AKxeBGUNEOCXqPir7vV59i7aF2YwCZDHMUR089SXR+qMFz/oHeju
G2ahUA7aTJl0FXiPcAVgiVvGeSyhbmIoGOF4aELUheQNFGBCfte0n4zaroWnqrc0
JfPMLmTDUF3jw3PvPP5Rd6Ssj5UoB6tePQ5N2G2kJiHfwvr/OF5KGH5vmeFsJVGu
kHczktgM02uKjYSQsENtREfkXA5mUKv8EdHn+LB45EmwSulwylwD3N8lguq+11Bc
h15Uc11b+HXzL3wvJ0D9myF4lxpHI3XuNRlEPfiR3yLjor4cfb/fGWxphcOeQggz
343ITqECgYEA/YkbUzwqgGfH3FO+FCYwg4W/+lPstZqOI0i+ZTI0nr7mNC6bd8K0
V4M4vc7WODX3gJdiR/atpHNEMM6bbeGgUYDXFK8bGXwJxFjnM9EWamJUdiDJuHgN
jpBkNPQbBibtzpYB4oAXJAKXgtWd3dEaZ+7Ilfcs/pflRRq5cgBSJuMCgYEA4uG/
2pbq5e6fRwNnhs7i/XYyIk+8sHfmObA9BXrbw5nroDtu92wyRLQE/vyXEsELU+y3
zwfF0XUNy4JGBUqJQphejVd5Dd7FBBr5pTkLaWjtxrqhAydK/KaCr0BgsjdWCFXa
o3aNR7w7tAxxPnmnWc/QLLmR/DkA9oLI1PVsoNkCgYAjaL+xO0jwUA5Avk1gwQir
hcWPL6NypZhOYz18Iqvos96w0QWTj1TimAgXskiG5zqe8gWe6VvNCPAwJNreWNGs
MGNZly8guwseKhB4Uy5fQ0ZqjR+/LL0v+QiVwLX5gPxbiuXOfXc950LD2hPHRAn9
FANdtnzJPeueYCIgQt02YwKBgCk2uwQ5QAhutW5P9wFtGZzTWL4U4ADqdt7p3dvd
+ofosP3Vbg3yEJucW//54HOer7EaIjWwgsXOzqe2TYPui0qWpS5lwm67lext/gV+
fE00q2TbSB5rh9qnYLv3JNma5bzz45ioE3gBgJLvY67mqHjPIFDPkO5RaJRfI55T
ytzZAoGBAKTZdemF/2Z7/quEifE3kcBUndjAgJ2g+29bfvRBKdAc8L635HlL5zfC
2TP0Tl5zIYpEJ59pymKhjyjnsGN6EJZFUWthG4e8ccVW8QWiirCUEzsJRPvxMoo8
Buk6OLP/dIpP8y0+GQJjdyIB4tgcDpDUJgc8+uYI4fj0V4qzjV/3
-----END RSA PRIVATE KEY-----
    '';
    apiserver_cert = pkgs.writeText "apiserver.pem" ''
-----BEGIN CERTIFICATE-----
MIIDOTCCAiGgAwIBAgIJAI7PNcOaEdHbMA0GCSqGSIb3DQEBCwUAMBIxEDAOBgNV
BAMMB2V0Y2QtY2EwHhcNMTcwNjIwMjE0MjQxWhcNMTgwNjIwMjE0MjQxWjAZMRcw
FQYDVQQDDA5rdWJlLWFwaXNlcnZlcjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCC
AQoCggEBAOCynaJG4L6JI6MvuYe+Qy+cW03xU57WAtZ+g+zS1txT8a1YMa0NTEiL
yNXeXAQoRK1xFbKCXB2GwI1zE7CqcgGwmnTcltvCFxYDvG/FXu4PFm4wIq46L6m7
93XEajvEQb3NtSNggAQP3Qor4yFVhIKYnvwJatrgjdj/tvNNCvcNZp5ZdnqKQxNv
qI1GeRyPWn56zGytsxmsEYuO38/MM0mlKp9W0mkRo42bCVNsY9rDelnaAqXGj7gl
B28D1YdTGWoG2YtX5k6mQflHDMgVEyIGRACRSB1Y6sAQdqcaFHhb+ymz9ka2jM14
r6m09hbx2sWcRAy67BAG8aS/sUS01msCAwEAAaOBijCBhzAJBgNVHRMEAjAAMAsG
A1UdDwQEAwIF4DBtBgNVHREEZjBkggprdWJlcm5ldGVzghJrdWJlcm5ldGVzLmRl
ZmF1bHSCFmt1YmVybmV0ZXMuZGVmYXVsdC5zdmOCJGt1YmVybmV0ZXMuZGVmYXVs
dC5zdmMuY2x1c3Rlci5sb2NhbIcECgoKATANBgkqhkiG9w0BAQsFAAOCAQEAqgza
QNPVoE856INV1r6fBCZhWPkHpx2WGFxgp3hPIOVbNvKX5AUMiEnaK/Midu4eE2ym
dipg8uvwDUTkbnY7b1I83XwREucAn8rC80c+sZKAbat9hKfW4t7hf2Q1YcO/W/M4
oYkGPI4IqutWYath2OtPajBjEkqij2ZXSI1n6j4klbwbxC9oStU30aQfuQ5SlMnY
g5Eb36KamxLYeDfNbM1Jv/Lj1Hgpk9SHu/vev8grZKUUkUaRyCMUvRwFWmkAgxz6
116RK2/WQYVt8UJRN6YiRZOco1N8x+ZIDy2qQR3uIXUIW/9I90VUL43yc5qJIGQI
glB5wNudFNyhXYTvUg==
-----END CERTIFICATE-----
    '';
    worker_key = pkgs.writeText "worker-key.pem" ''
-----BEGIN RSA PRIVATE KEY-----
MIIEpQIBAAKCAQEA3h6/W3QW3xSIIR4blSa3BA4DnocO+KDir+IgdHhUtCU44wKt
ok/wjlMunIkY1FiZ9h1wVCwgsEJE7bFcjOJ144vJrRSUn+wzsUiUkiz87raByNjk
iNGxufyARlrJf9Nh6EGAF3h0agxqywLKmF+s/tVJ5OWcNBxuQDb/LPfr7fxwiRSt
Wo5RRoGj9m1PqjazrMpkGNE9F7RA9EqT+kHZc2DQpnO+opeQRVWpO4hY2f23m/cB
tiBjKMMNer6STwKS6HO3in5vGSIvkXFskonb1XBigeQrKxzqSv7sGGXx7LkjcP22
BMaCW1dxv5zU6jNfchmvNVJrOt/HlEtfT+vK1QIDAQABAoIBAQCLXKFVYQYEm145
4SkPMMY9bgmJSlXzWwY/slIIoYMLsBr8G68TmrJkqf4hysbgXGLlD11uAm3UCRA0
TkayQlgTF57G0JXbrRhV0CMff8iGgc32VVc2HNM0zR8yhT3NzLOuRIJ4t2PbMcVD
cJHqfoUNMod1bTbPX1MxSRBbh4Xov4HJrzdk1yefPrHzm3GHAMvMvqwxIQH2M0d4
vcxqfc51eVvoM7fspd6NJbj1V6ywzFl+qTFO1WW9sAavWFDDMTA/RloCrOlQYatO
LYRJRoixgGxs3gGmAYlHYPFcZ1HhOWI0caRv/k/6+qJYE5HX/Ct78++oMXjfE5Nh
q0mlFMWhAoGBAPpi0CO9XbDaFUFCOQtTugvZ6E0VUzdXe8O9Uv5gXrkW2lkRWT0u
u8xMf+03YZGP/X9CWgVjnh/aPq4b/UjeLOT8oI2t4k3RecXIvuE9Dev00hWheswL
fGKtar3IJGFNq3I6JFacD04w4hYPCXoHGvuWb+XAadyyNVx5YcMCIubJAoGBAOMZ
sQdGn2AG+kosGUohnXq4cGmudWfE4d8EJNuPGkmf3wiPVaNJpgqkLji2h7O35Iz6
TDSlsatHD1sPPrMKSHfyUiZpmCbZp1tVs4Gip4lmZfgsHwtccjIBMNZAz9LMa2Nq
1fSYPsV8x155eKcma9z0uc71oge3XOXO+/5VYK2tAoGBAN/l9JHBCELZASC2AySp
3jgyx5QGeb+HL1k9tzVZH9sLIH19EfuwCqcJ0WtilpD/3YMq5izjg8af9mTjCn9a
jXLGpRuMXk2QAABpHqdzXTueVS6ak6BatQPYZxcGHeIU/jbK3yvDqbwV4lYvZB4G
tI49XBprET8U7LqgoFctVeBhAoGBAKeaO2NiRJcLL0b0WsmyG1YJrrTgEze9PvFn
TohXiZASk/juR8aVwRwTZSVn2KjTK7K7uugT7Ra5/+Q1URGzoh4b0XMV9Tue4Htw
uWUQFNM7pj/M2DB7TrAG3vMQrBAn241ouHSms5TubPkVbuz1Vx+f4U2TTLyjH8Ve
x+1BN3OVAoGAdvck35GPhREIJF28FcABCWY83JktfFzY9Qej5Im0hBJ8cu7sVjWk
KFWD33rRLLK9CJdOQyvFmDUQhY5GFepsJrOnE22mip6oeJWGje2a36Oh+PrUYV/b
Bv6nFynlJ81A/lD+TIXoTnc7cus9A0F/3ahGveNoQFF20S4nbsGfO9w=
-----END RSA PRIVATE KEY-----
    '';
    worker_cert = pkgs.writeText "worker.pem" ''
-----BEGIN CERTIFICATE-----
MIIDNjCCAh6gAwIBAgIJAI7PNcOaEdHcMA0GCSqGSIb3DQEBCwUAMBIxEDAOBgNV
BAMMB2V0Y2QtY2EwHhcNMTcwNjIwMjE0NDA5WhcNMTgwNjIwMjE0NDA5WjAWMRQw
EgYDVQQDDAtrdWJlLXdvcmtlcjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoC
ggEBAN4ev1t0Ft8UiCEeG5UmtwQOA56HDvig4q/iIHR4VLQlOOMCraJP8I5TLpyJ
GNRYmfYdcFQsILBCRO2xXIzideOLya0UlJ/sM7FIlJIs/O62gcjY5IjRsbn8gEZa
yX/TYehBgBd4dGoMassCyphfrP7VSeTlnDQcbkA2/yz36+38cIkUrVqOUUaBo/Zt
T6o2s6zKZBjRPRe0QPRKk/pB2XNg0KZzvqKXkEVVqTuIWNn9t5v3AbYgYyjDDXq+
kk8Ckuhzt4p+bxkiL5FxbJKJ29VwYoHkKysc6kr+7Bhl8ey5I3D9tgTGgltXcb+c
1OozX3IZrzVSazrfx5RLX0/rytUCAwEAAaOBijCBhzAJBgNVHRMEAjAAMAsGA1Ud
DwQEAwIF4DBtBgNVHREEZjBkggprdWJlcm5ldGVzghJrdWJlcm5ldGVzLmRlZmF1
bHSCFmt1YmVybmV0ZXMuZGVmYXVsdC5zdmOCJGt1YmVybmV0ZXMuZGVmYXVsdC5z
dmMuY2x1c3Rlci5sb2NhbIcECgoKATANBgkqhkiG9w0BAQsFAAOCAQEAYlT3kw1Z
lJxIWP0CQdJLp9naQDvPMg4FpWtA8e7kgSp7dDF/YRNSz0iH/SfIoqwSGB82N2F9
zmNWdn2W1bFmKJTeePxv4O1zFIuBM67UplaBhvMMugjR9yD8T9Yrzy+wHkh9V43U
ufLvF7RcvoPNAJs6A2a3PI+wiE/qNIPAIW2El4a7T/4o70u4Y2jwA4C8zzloI0LZ
YDrbiy2FTTMJtav2jpzzDxvbuSB0b3YEi+wDyki53ojHzAPFrW9vKEEYXFy0MeIz
l6ZaQelBPCR+yROt6DxrM4shvg9jFlkXKHkWOx5bPB2lqw3ILXFXlOHIvmX96uxB
0YHsXYxakogOKg==
-----END CERTIFICATE-----
    '';
    etcdNodeConfig = {
      services = {
        etcd = {
          enable = true;
          keyFile = etcd_key;
          certFile = etcd_cert;
          trustedCaFile = ca_pem;
          peerClientCertAuth = true;
          listenClientUrls = ["https://0.0.0.0:2379"];
          listenPeerUrls = ["https://0.0.0.0:2380"];
        };
      };

      environment.variables = {
        ETCDCTL_CERT_FILE = "${etcd_client_cert}";
        ETCDCTL_KEY_FILE = "${etcd_client_key}";
        ETCDCTL_CA_FILE = "${ca_pem}";
        ETCDCTL_PEERS = "https://127.0.0.1:2379";
      };

      networking.firewall.allowedTCPPorts = [ 2379 2380 ];
    };
    kubeConfig = {
      services.flannel = {
        enable = true;
        network = "10.10.0.0/16";
        iface = "enp0s3";
        etcd = {
          endpoints = ["https://etcd1:2379" "https://etcd2:2379" "https://etcd3:2379"];
          keyFile = etcd_client_key;
          certFile = etcd_client_cert;
          caFile = ca_pem;
        };
      };

      # vxlan
      networking.firewall.allowedUDPPorts = [ 8472 ];
      networking.firewall.allowedTCPPorts = [ 443 8080 80 ];

      systemd.services.docker.after = ["flannel.service"];
      systemd.services.docker.serviceConfig.EnvironmentFile = "/run/flannel/subnet.env";
      virtualisation.docker.extraOptions = "--iptables=false --ip-masq=false --bip $FLANNEL_SUBNET";

      services.kubernetes.verbose = true;
      services.kubernetes.etcd = {
        servers = ["https://etcd1:2379" "https://etcd2:2379" "https://etcd3:2379"];
        keyFile = etcd_client_key;
        certFile = etcd_client_cert;
        caFile = ca_pem;
      };

      environment.systemPackages = [ pkgs.bind pkgs.tcpdump pkgs.utillinux ];
    };
    kubeMasterConfig = {pkgs, ...}: {
      require = [kubeConfig];

      # kube apiserver
      networking.firewall.allowedTCPPorts = [ 10250 ];

      services.kubernetes = {
        roles = ["master" "node"];
        scheduler.leaderElect = true;
        controllerManager.leaderElect = true;
        controllerManager.serviceAccountKeyFile = apiserver_key;

        apiserver = {
          publicAddress = "0.0.0.0";
          advertiseAddress = "104.236.178.218";
          tlsKeyFile = apiserver_key;
          tlsCertFile = apiserver_cert;
          clientCaFile = ca_pem;
          kubeletClientCaFile = ca_pem;
          kubeletClientKeyFile = worker_key;
          kubeletClientCertFile = worker_cert;
        };
        kubelet = {
          tlsKeyFile = worker_key;
          tlsCertFile = worker_cert;
          networkPlugin = null;
          #cni = {
          #  config = [{
          #    cniVersion = "0.2.0";
          #    name = "mynet";
          #    type = "flannel";
          #  }];
          #};
        };
      };
    };

    kubeWorkerConfig = { pkgs, ... }: {
      require = [kubeConfig];

      # kubelet
      networking.firewall.allowedTCPPorts = [ 10250 ];

      services.kubernetes = {
        roles = ["node"];
        kubeconfig = {
          server = "https://kubernetes:443";
          caFile = ca_pem;
          certFile = worker_cert;
          keyFile = worker_key;
        };
        kubelet = {
          tlsKeyFile = worker_key;
          tlsCertFile = worker_cert;
          networkPlugin = null;
          #cni = {
          #  config = [{
          #    cniVersion = "0.2.0";
          #    name = "mynet";
          #    type = "flannel";
          #  }];
          #};
        };
      };
    };

in {
  resources.sshKeyPairs.ssh-key = { };
  network.description = "DevOps-Kubernetes";
  "samdev-kube01" = 
  { lib, config, pkgs, nodes, ... }: {
    require = [etcdNodeConfig kubeMasterConfig ];
    imports =  [
      base/default.nix
      users/sam.nix
    ];
    deployment = {
      targetEnv = "digitalOcean";
      digitalOcean = {
        region = "sfo1";
        size = "1gb";
      };
    };
    networking.extraHosts = ''
${nodes.samdev-kube01.config.networking.publicIPv4} etcd1 kubernetes
${nodes.samdev-kube02.config.networking.publicIPv4} etcd2
${nodes.samdev-kube03.config.networking.publicIPv4} etcd3
    '';
    services.etcd = {
      name = "etcd1";
      advertiseClientUrls = [ "https://etcd1:2379" ];
      initialAdvertisePeerUrls = [ "https://etcd1:2380" ];
      initialCluster = [
        "etcd1=https://etcd1:2380"
        "etcd2=https://etcd2:2380"
        "etcd3=https://etcd3:2380"
      ];
    };
    networking.firewall.allowedTCPPorts = [ 2379 2380 ];
  };
  "samdev-kube02" = 
  { lib, config, pkgs, nodes, ... }: {
    require = [etcdNodeConfig kubeWorkerConfig];
    imports =  [
      base/default.nix
      users/sam.nix
    ];
    deployment = {
      targetEnv = "digitalOcean";
      digitalOcean = {
        region = "sfo1";
        size = "1gb";
      };
    };
    networking.extraHosts = ''
${nodes.samdev-kube01.config.networking.publicIPv4} etcd1 kubernetes
${nodes.samdev-kube02.config.networking.publicIPv4} etcd2
${nodes.samdev-kube03.config.networking.publicIPv4} etcd3
    '';
    services.etcd = {
      name = "etcd2";
      advertiseClientUrls = [ "https://etcd2:2379" ];
      initialAdvertisePeerUrls = [ "https://etcd2:2380" ];
      initialCluster = [
        "etcd1=https://etcd1:2380"
        "etcd2=https://etcd2:2380"
        "etcd3=https://etcd3:2380"
      ];
    };
    networking.firewall.allowedTCPPorts = [ 2379 2380 ];
  };
  "samdev-kube03" = 
  { lib, config, pkgs, nodes, ... }: {
    require = [etcdNodeConfig kubeWorkerConfig];
    imports =  [
      base/default.nix
      users/sam.nix
    ];
    deployment = {
      targetEnv = "digitalOcean";
      digitalOcean = {
        region = "sfo1";
        size = "1gb";
      };
    };
    networking.extraHosts = ''
${nodes.samdev-kube01.config.networking.publicIPv4} etcd1 kubernetes
${nodes.samdev-kube02.config.networking.publicIPv4} etcd2
${nodes.samdev-kube03.config.networking.publicIPv4} etcd3
    '';
    services.etcd = {
      name = "etcd3";
      advertiseClientUrls = [ "https://etcd3:2379" ];
      initialAdvertisePeerUrls = [ "https://etcd3:2380" ];
      initialCluster = [
        "etcd1=https://etcd1:2380"
        "etcd2=https://etcd2:2380"
        "etcd3=https://etcd3:2380"
      ];
    };
    networking.firewall.allowedTCPPorts = [ 2379 2380 ];
  };
}
