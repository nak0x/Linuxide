require('md-pdf').setup({
    --- Set margins around document
    margins = "1.5cm",
    -- tango, pygments are quite nice for white on white
    highlight = "tango",
    toc = true,
    preview_cmd = function() return 'zathura' end,
    ignore_viewer_state = false,
    fonts = {
        main_font = "FiraCode Nerd Font Ret",
        sans_font = "DejaVuSans",
        mono_font = "IosevkaTerm Nerd Font Mono",
        math_font = nil,
    },
    -- Custom options passed to `pandoc` CLI call, can be ignored for setup
    pandoc_user_args = nil,
})

-- setup mapping
vim.keymap.set("n", "<Space>,", function()
    require('md-pdf').convert_md_to_pdf()
end)
