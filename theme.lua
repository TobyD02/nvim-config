-- vim.cmd.colorscheme("onedark")

-- require("kanagawa").setup({
-- 	terminal_colors=true,
-- 	transparent=true
-- })
--
-- vim.cmd.colorscheme("kanagawa-wave")


-- require("gruvbox").setup({
--   terminal_colors = true, -- add neovim terminal colors
--   undercurl = true,
--   underline = true,
--   bold = true,
--   italic = {
--     strings = true,
--     emphasis = true,
--     comments = true,
--     operators = false,
--     folds = true,
--   },
--   strikethrough = true,
--   invert_selection = false,
--   invert_signs = false,
--   invert_tabline = false,
--   inverse = true, -- invert background for search, diffs, statuslines and errors
--   contrast = "", -- can be "hard", "soft" or empty string
--   palette_overrides = {},
--   overrides = {},
--   dim_inactive = false,
--   transparent_mode = true,
-- })
--
-- vim.cmd.colorscheme('gruvbox')

require('nordic').setup({
    -- Enable bold keywords.
    bold_keywords = true,
    -- Enable italic comments.
    italic_comments = true,
    -- Enable editor background transparency.
    transparent = {
        -- Enable transparent background.
        bg = false,
        -- Enable transparent background for floating windows.
        float = true,
    },
    -- Enable brighter float border.
    bright_border = false,
    -- Reduce the overall amount of blue in the theme (diverges from base Nord).
    reduced_blue = true,
    -- Swap the dark background with the normal one.
    swap_backgrounds = true,
    -- Cursorline options.
    cursorline = {
        -- Bold font in cursorline.
        bold = false,
        -- Bold cursorline number.
        bold_number = true,
        -- Available styles: 'dark', 'light'.
        theme = 'dark',
        -- Blending the cursorline bg with the buffer bg.
        blend = 0.85,
    },
    -- Visual selection options.
    visual = {
        -- Bold font in visual selection.
        bold = false,
        -- Bold visual selection number.
        bold_number = true,
        -- Available styles: 'dark', 'light'.
        theme = 'dark',
        -- Blending the visual selection bg with the buffer bg.
        blend = 0.85,
    },
    noice = {
        -- Available styles: `classic`, `flat`.
        style = 'classic',
    },
    telescope = {
        -- Available styles: `classic`, `flat`.
        style = 'flat',
    },
    leap = {
        -- Dims the backdrop when using leap.
        dim_backdrop = false,
    },
    ts_context = {
        -- Enables dark background for treesitter-context window
        dark_background = true,
    }
})

vim.cmd.colorscheme('nordic')

