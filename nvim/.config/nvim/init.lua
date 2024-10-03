local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("vim-options")
require("lazy").setup("plugins")

function _G.JournalTemplate()
  local todo = vim.fn.input('Enter TODO keyword (leave empty for none): ')
  if todo ~= '' then
    return todo .. ' [%<%Y-%m-%d %H:%M>] %?'
  else
    return '[%<%H:%M>]\n   %?'
  end
end
