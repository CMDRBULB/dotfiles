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
vim.opt.timeoutlen = 10000  -- Set to 10 seconds or adjust as needed
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*.org",
  command = "!rclone copy ~/local/orgfiles nextcloud:/"
})


