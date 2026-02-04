# tree-sitter-fbs

This repo was forked from [yuanchenxi95/tree-sitter-flatbuffers](https://github.com/yuanchenxi95/tree-sitter-flatbuffers) originally, but re-generated with the latest version of tree-sitter-cli to fix compatibility issues, and rename to `tree-sitter-fbs`.

[FlatBuffers](https://flatbuffers.dev) grammar for [tree-sitter](https://github.com/tree-sitter/tree-sitter).

## Features

- [x] Syntax highlighting

## Usage

To use this grammar, you need to have tree-sitter installed and configured in your editor or IDE.

For example in Neovim:

```lua
vim.api.nvim_create_autocmd('User', {
  pattern = 'TSUpdate',
  callback = function()
    require('nvim-treesitter.parsers').fbs = {
      install_info = {
        url = "https://github.com/belltoy/tree-sitter-fbs",
        files = { "src/parser.c" },
        queries = 'queries',
      },
      filetype = "fbs",
      generate_from_json = false,
    }
  end
})

-- And enable tree-sitter highlighting for fbs files
vim.api.nvim_create_autocmd('FileType', {
  pattern = {
    -- .. other filetypes..
    'fbs',
  },
  callback = function()
    vim.treesitter.start()
    -- Set other treesitter options if needed
    vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
  end,
})
```

## References

- [tree-sitter]
- [FlatBuffers](https://flatbuffers.dev)

[tree-sitter]: https://github.com/tree-sitter/tree-sitter
