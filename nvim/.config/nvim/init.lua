-- OPTIONS --
vim.opt.guicursor = ""

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.statuscolumn = "%s%=%{v:relnum?v:relnum:v:lnum} "

vim.opt.cursorline = true
vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.list = true
vim.opt.listchars = { tab = "» ", space = "·" }
vim.opt.fillchars = { eob = " " }

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.swapfile = false
vim.opt.backup = false

-- KEYMAPS --
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>e", "<cmd>Oil<CR>")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- PLUGINS --
vim.pack.add{
  { src = "https://github.com/blazkowolf/gruber-darker.nvim" },
  { src = "https://github.com/stevearc/oil.nvim" }
}

require("gruber-darker").setup({
    italic = {
        strings = false,
        comments = false
    }
})
vim.cmd.colorscheme("gruber-darker")
vim.api.nvim_set_hl(0, "Whitespace", { fg = "#282828" })
vim.api.nvim_set_hl(0, "CursorLine", { bg = "none" })

require("oil").setup({
    view_options = {
        show_hidden = true
    }
})
