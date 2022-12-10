lua << EOF
    require('leap').add_default_mappings()
    require('leap').opts.highlight_unlabeled_phase_one_targets = true
    vim.api.nvim_set_hl(0, 'LeapBackdrop', { link = 'Comment' })
    vim.api.nvim_set_hl(0, 'LeapMatch', {
        fg = 'white',  -- for light themes, set to 'black' or similar
        bold = true,
        nocombine = true,
})
    require('leap').opts.highlight_unlabeled_phase_one_targets = true

    --vim.keymap.del({'x', 'o'}, 'x')
    --vim.keymap.del({'x', 'o'}, 'X')
    vim.keymap.set({'x', 'o'}, 'f', '<Plug>(leap-forward-to)')
    vim.keymap.set({'x', 'o'}, 'F', '<Plug>(leap-backward-to)')

EOF