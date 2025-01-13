require'nvim-treesitter.configs'.setup {
    ensure_installed = {"c", "cpp", "lua", "rust", "vim", "python", "haskell"},
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
    },
}
