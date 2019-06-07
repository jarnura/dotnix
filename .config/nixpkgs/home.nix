{ config, pkgs, ... }:

with pkgs;
{
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  programs.termite.enable = true;
  programs.neovim = import ./config/vim { inherit pkgs; };
  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };
  programs.zsh = import ./config/zsh.nix { inherit pkgs; };
  xdg.configFile."zsh/themes/spaceship.zsh-theme".source =
    let src = fetchFromGitHub {
      "owner" = "denysdovhan";
      "repo" = "spaceship-prompt";
      "rev" = "d9f25e14e7bec4bef223fd8a9151d40b8aa868fa";
      "sha256" = "0vl5dymd07mi42wgkh0c3q8vf76hls1759dirlh3ryrq6w9nrdbf";
    }; in "${src.out}/spaceship.zsh-theme";
  xdg.configFile."zsh/plugins/zsh-completions/zsh-completions.plugin.zsh".source =
    let src = fetchFromGitHub {
      "owner" = "zsh-users";
      "repo" = "zsh-completions";
      "rev" = "5dd73237d598563e03ea8e84ff9deb6a6ed70848";
      "sha256" = "1yf4rz99acdsiy0y1v3bm65xvs2m0sl92ysz0rnnrlbd5amn283l";
    }; in "${src.out}/zsh-completions.plugin.zsh";
  home.packages = [
    alacritty
    fzf
    googler
    keybase
    kitty
    vscode
    nodejs-10_x
    nodePackages_10_x.bower
    nodePackages_10_x.bower2nix
    nodePackages_10_x.pulp
    nodePackages.node2nix
    x11vnc
    direnv
    gitAndTools.gitFull
    gitAndTools.hub
    htop
    iotop
    jq
    nix
    nix-index
    nix-zsh-completions
    wget
    teamviewer
    i3lock-fancy
    i3blocks
    dunst
    compton
    hsetroot
    xsel
    rofi
    xsettingsd
    scrot
    viewnior
    termite
    feh
    zsh
    spotify
    slack
    polybar
  ];
}
