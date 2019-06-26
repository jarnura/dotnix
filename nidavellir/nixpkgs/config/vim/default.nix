{pkgs}:

let
  #tmuxline = pkgs.callPackage ../../packages/tmuxline {inherit pkgs;};
  #ghcid = pkgs.callPackage ../../packages/vim/ghcid/default.nix { inherit pkgs; };
  #hsimport = pkgs.callPackage ../../packages/vim/vim-hsimport/default.nix { inherit pkgs; }; unite-haskellimport = pkgs.callPackage ../../packages/vim/unite-haskellimport/default.nix { inherit pkgs; };
  NeoSolarized = pkgs.callPackages ../../packages/vim/NeoSolarized/default.nix { inherit pkgs; };
  vim-solarized8 = pkgs.callPackage ../../packages/vim/vim-solarized8/default.nix { inherit pkgs; };
  ayu = pkgs.callPackage ../../packages/vim/ayu/default.nix { inherit pkgs; };
in
{
  enable = true;
  viAlias = true;
  vimAlias = true;
  withNodeJs = true;
  withPython = true;
  withPython3 = true;
  configure =
    with pkgs.vimPlugins; {
    customRC = pkgs.lib.readFile ./vimrc;
    plug.plugins = [
      #(ale.overrideAttrs(oldAttrs: { patches = ./cabal-ghc.patch; }))
      ack-vim
      airline
      ayu
      calendar
      calendar-vim
      colors-solarized
      denite-nvim
      deoplete-nvim
      fugitive
      gitgutter
      #ghcid
      haskell-vim
      Hoogle
      #hsimport
      LanguageClient-neovim
      neoformat
      neomake
      neomru
      NeoSolarized
      nerdcommenter
      nerdtree
      psc-ide-vim
      purescript-vim
      supertab
      syntastic
      #tmuxline
      unite
      #unite-haskellimport
      vim-airline-themes
      vim-better-whitespace
      vim-devicons
      vim-eunuch
      vim-hardtime
      vim-hdevtools
      vim-nix
      #vim-search
      vim-solarized8
      vim-slime
    ];
  };
}
