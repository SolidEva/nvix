{ lib, ... }:
{
  plugins.auto-session = {
    enable = true;
    settings = {
      auto_save = true;
      auto_restore = true;
      auto_create = true;
      show_auto_restore_notif = true;
    };
  };

  # set plugin recomended session options
  extraConfigLua =
    # lua
    ''
      vim.o.sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
    '';


  imports = with builtins; with lib;
    map (fn: ./${fn})
      (filter
        (fn: (
          fn != "default.nix"
          && !hasSuffix ".md" "${fn}"
        ))
        (attrNames (readDir ./.)));
}
