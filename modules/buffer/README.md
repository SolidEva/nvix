# Buffer Module 📁

The Buffer module provides enhanced buffer and tab management in Neovim. It includes tools to manage buffers, navigate between them efficiently, and work with tabs seamlessly.

---

## Plugins Included

| Plugin Name       | Description                                     | Repository Link                                                   |
|-------------------|-------------------------------------------------|------------------------------------------------------------------|
| **Snacks Picker**|                                               |                                                                |
| **Harpoon**       | Quick file navigation and management tool.      | [ThePrimeagen/harpoon](https://github.com/ThePrimeagen/harpoon)  |
| **Bufferline**    | A plugin to enhance the Neovim buffer line UI.  | [akinsho/bufferline.nvim](https://github.com/akinsho/bufferline.nvim) |

---

## Key Mappings ⌨️

read keymaps.nix in this dir
---

## Usage 🚀

To include the Buffer module in your Nixvim configuration, add the necessary inputs and module imports as shown below:

```nix
# Add Nvix and Buffer Manager to inputs
inputs = {
  nvix.url = "github:niksingh710/nvix";
  buffer-manager = {
    url = "github:j-morano/buffer_manager.nvim";
    flake = false;
  };
};

# Import the required modules
modules.imports = [
  inputs.nvix.nvixModules.utils # Required dependency
  inputs.nvix.nvixModules.buffer
];
```

---

> [!NOTE]
> - The **`utils`** module is required to ensure this module works correctly. Ensure it is included in your configuration.
> - This module is designed to work independently; you can integrate it without adopting the full Nvix setup.
