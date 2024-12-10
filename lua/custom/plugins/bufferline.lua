return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    local status_ok, bufferline = pcall(require, 'bufferline')
    if not status_ok then
      return
    end
    vim.opt.termguicolors = true
    bufferline.setup {
      options = {
        offsets = {
          {
            filetype = 'NvimTree',
            text = 'File Explorer',
            text_align = 'left' | 'center' | 'right',
            separator = true,
          },
        },
      },
    }
  end,
}
