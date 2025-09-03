{ lib, pkgs, ... }:
{
  extraPlugins = [
    pkgs.vimPlugins.rose-pine
    pkgs.vimPlugins.zenbones-nvim
    pkgs.vimPlugins.nightfox-nvim
  ];


  colorschemes.base16.enable = true;
  imports = with builtins; with lib;
    map (fn: ./${fn})
      (filter
        (fn: (
          fn != "default.nix"
          && !hasSuffix ".md" "${fn}"
        ))
        (attrNames (readDir ./.)));
}
