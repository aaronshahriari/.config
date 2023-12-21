# Start NeoVim Setup
Here you will learn how I like to setup my NeoVim configuration when I use a new device.

## Step 1: Download NeoVim

Download NeoVim:
[NeoVim Download] (https://neovim.io/)

## Step 2: Setup Directories

Create ~/.config/nvim directory
```bash
mkdir ~/.config/nvim/
```

## Step 3: Clone Plugin Manager

Clone Packer - 'Unix or Linux'
```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
 ```

Clone Packer - 'Windows Powershell'
```bash
git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
```

## Step 4: Clone My Configurations

Move into ~/.config/nvim directory
```bash
cd ~/.config/nvim/
```

Clone Configurations
```bash
git clone https://github.com/aaronshahriari/aaron-nvim.git
```

## Step 5: Sync Plugins

Navigate to packer.lua file
```bash
cd ~/.config/nvim/lua/aaronshahriari/
```

Run nvim packer.lua
```bash
nvim packer.lua
```

Save and source the file
```vim
:w
```
```vim
:so
```

Run PackerSync to merge all the plugins to your machine
```vim
:PackerSync
```

## Step 6:

Exit and save vim using this command
```vim
:wq
```

Reload NeoVim and enjoy!
