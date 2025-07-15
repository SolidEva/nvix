{ ... }:
{

  # ensure unmodified buffers are kept up to date when programs outside of
  # vim modify them

  # autoread handles re-reading files when vim detects changes, but this is triggered automatically quite rarely by default
  # add autocommands to run checktime on buffers which then in turn triggers autoread
  # https://neovim.io/doc/user/autocmd.html#_5.-events

  # if checking all open buffers becomes a performance issues, we can switch to using
  # command = "exec 'checktime ' . expand('<abuf>')",
  # which only checks the current buffer


  opts = {
    autoread = true;
  };

  extraConfigLua =
    # lua
    ''
      vim.api.nvim_create_autocmd("CursorHold", {
        desc = "Trigger autoread by running checktime when we don't move the cursor for a bit",
        pattern = "*",
        command = "checktime",
      })
      vim.api.nvim_create_autocmd("WinEnter", {
        desc = "Trigger autoread by running checktime on all buffers files when we switch windows",
        pattern = "*",
        command = "checktime",
      })

    '';

}
