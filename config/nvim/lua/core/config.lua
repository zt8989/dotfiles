vim.g.vim_dict_config = { markdown='text', typescript = 'javascript' }
require("telescope").setup{
  defaults = {
    vimgrep_arguments = {
      'rg',
      '--hidden',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case',
      '-g',
      '!node_modules/**',
      '-g',
      '!.git/**',
      '-u' -- thats the new thing
    },
  }
}
