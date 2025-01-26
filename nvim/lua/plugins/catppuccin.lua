return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  opts = {
    flavour = "auto", 
    background = {
        light = "latte",
        dark = "macchiato",
    },
    transparent_background = true,
    show_end_of_buffer = false,
    term_colors = true,
    dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.15,
    },
    no_italic = false,
    no_bold = false,
    no_underline = false,
    styles = {
      comments = { "italic" },
      conditionals = { "italic", "underline" },
      functions = { "bold", "underline" },
      keywords = { "bold" },
      strings = { "italic" },
      booleans = { "bold", "underline" },
      types = { "bold", "underline" },
      operators = { "bold" },
      loops = { "italic", "underline" },
      variables = {},
      numbers = {},
      properties = {},
    }, 
    color_overrides = {},
    custom_highlights = {},
    default_integrations = true,
    integrations = {
        transparency = true,
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        mini = {
            enabled = true,
            indentscope_color = "",
        },
    },
    config = function(_, opts)
        require("catppuccin").setup(opts)
        vim.cmd.colorscheme "catppuccin"
    end
}
}
