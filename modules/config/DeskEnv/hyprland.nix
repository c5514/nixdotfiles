{ pkgs, ... }:
{
  # Hyprland modules
  programs = {
    hyprland.enable = true;
    hyprlock.enable = true;
  };
  # nix.settings = {
  #   substituters = [ "https://hyprland.cachix.org" ];
  #   trusted-public-keys = [
  #     "hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="
  #   ];
  # };
  environment.systemPackages = with pkgs; [
    hyprshade
  ];
}
