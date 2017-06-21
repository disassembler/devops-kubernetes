{ pkgs, fetchgit }:

let
  buildVimPlugin = pkgs.vimUtils.buildVimPluginFrom2Nix;
in {

  "vim-colors_atelier-schemes" = buildVimPlugin {
    name = "vim-colors_atelier-schemes";
    src = fetchgit {
      url = "https://github.com/atelierbram/vim-colors_atelier-schemes";
      rev = "633e723c4f2844dcf9437cb2275f1593fad9d608";
      sha256 = "1icv8zk6bkdicmi9nq9dg564d0d35mz5j7p4ax8q790mgq9i692l";
    };
    dependencies = [];
  };
  "vim-lastplace" = buildVimPlugin {
    name = "vim-lastplace";
    src = fetchgit {
      url = "https://github.com/farmergreg/vim-lastplace";
      rev = "36c4ae38130232134ece7bdd0e844d8034b585ab";
      sha256 = "09s0yvs8ylmj6zpp6k7nw4cric2flcdpy6k3i67nwm699lnd2f7i";
    };
    dependencies = [];
  };
  "splice_vim" = buildVimPlugin {
    name = "splice.vim";
    src = fetchgit {
      url = "https://github.com/sjl/splice.vim";
      rev = "c500afa9eed8c69527cd2b24401d12afb654d992";
      sha256 = "1697qfahs7y8yhh7kkfmhmq7n564cssb2i7w43gkc1ai5bp3llfa";
    };
    dependencies = [];
  };
}
