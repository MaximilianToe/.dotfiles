return {
    "github/copilot.vim",
    config = function()
        vim.cmd("imap <silent><script><expr> <C-J> copilot#Accept('<CR>')")
        vim.api.nvim_set_keymap('i', '<C-K>', '<Plug>(copilot-suggest)', { noremap = true, silent = true })
        vim.g.copilot_no_tab_map = true
        vim.g.copilot_assume_mapped = true
        vim.g.copilot_filetypes = {
            ["*"] = false,
            ["markdown"] = false,
            ["text"] = false,
        }
    end
}
