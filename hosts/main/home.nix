{
  config,
  lib,
  pkgs,
  inputs,
  ...
}:
{
  imports = [
    ../../modules/home/hypr/default.nix
    ../../modules/home/default.nix
  ];
  nixpkgs.config = {
    allowUnfree = true;
    allowUnfreePredicate = (_: true);
  };
  home = {
    username = "c5514";
    homeDirectory = "/home/c5514";
    stateVersion = "24.05";
    packages = with pkgs; [
      ripgrep
      coreutils
      brillo
      clang
      swww
      megacmd
      libnotify
      lshw
      procps
      lm_sensors
      blueberry
      networkmanagerapplet
      libsForQt5.qt5.qtwayland
      expat
      fzf
      python3
      # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })
      # # You can also create simple shell scripts directly inside your
      # # configuration. For example, this adds a command 'my-hello' to your
      # # environment:
      # (pkgs.writeShellScriptBin "my-hello" ''
      #   echo "Hello, ${config.home.username}!"
      # '')
    ];

  };
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
