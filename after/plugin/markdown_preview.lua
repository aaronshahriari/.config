-- set to 1, nvim will open the preview window after entering the Markdown buffer
-- default: 0
vim.g.mkdp_auto_start = 1

-- set to 1, the nvim will auto close current preview window when changing
-- from Markdown buffer to another buffer
-- default: 1
vim.g.mkdp_auto_close = 0

-- options for Markdown rendering
-- mkit: markdown-it options for rendering
-- katex: KaTeX options for math
-- uml: markdown-it-plantuml options
-- maid: mermaid options
-- disable_sync_scroll: whether to disable sync scroll, default 0
-- sync_scroll_type: "middle", "top" or "relative", default value is "middle"
--   middle: means the cursor position is always at the middle of the preview page
--   top: means the Vim top viewport always shows up at the top of the preview page
--   relative: means the cursor position is always at relative positon of the preview page
-- hide_yaml_meta: whether to hide YAML metadata, default is 1
-- sequence_diagrams: js-sequence-diagrams options
-- content_editable: if enable content editable for preview page, default: v:false
-- disable_filename: if disable filename header for preview page, default: 0
vim.g.mkdp_preview_options = {
    disable_sync_scroll = 0,
    sync_scroll_type = "middle",
}

-- use a custom Markdown style. Must be an absolute path
-- like '/Users/username/markdown.css' or expand('~/markdown.css')
vim.g.mkdp_markdown_css = 'C:/Users/aaron/.config/nvim/themes/markdown.css'

vim.g.mkdp_theme = 'dark'
