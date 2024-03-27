# 💤 My LazyVim based nvim config 

My personalized configuration of LazyVim

It supports python LSP, it doesn't have test running inside nvim, but instead a cool little plugin that can copy test (or any function, class etc.) reference in few formats, including pytest format, so it can be easily pasted to terminal `pytest` command

To install first backup your nvim config and run: 
`git clone git@github.com:lzieniew/nvim_config.git ~/.config/nvim`

#Config tutorial
For me configuring default Lazyvim config wasn't trivial, so here I will put how to do things that I found hard:

## setup python environment
out of the box Lazyvim extras python works pretty well, but there are few manuals steps to do
create venv
`python -m venv venv`
`source venv/bin/activate`
`pip install neovim`
optional for django autocompletion
`pip install django-stubs`

## ignore files from venv
In order to ignore files from venv in neotree plugin, it's enought to add 'venv/' to '.ignore' file at the root of current project.
Other option is to create venv with name starting with `.`, for example .venv.
Ignoring venv directory while grepping throught all files (with Telescope plugin) is more problematic.
In theory the .ignore file should be enough, but for me it only works with venv, not .venv.

## configure ruff autoformatter
create `.ruff.toml` in the base directory of a project and put config in there, for example
```
line-length = 100

[format]
quote-style = "single"
```

## disable autoformatting
put `vim.g.autoformat = false` in `lua/config/options.lua`

## disable type checks in pyright
in codebases without extensive type specifying pyright gives a lot of type errors, which are distracting.
They can be disabled by changing diagnostic rules checking mode to off.
I've checked multiple methods for this and only this config in `lua/plugins/lua.lsp` worked:
```
return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      pyright = {
        capabilities = (function()
          local capabilities = vim.lsp.protocol.make_client_capabilities()
          capabilities.textDocument.publishDiagnostics.tagSupport.valueSet = { 2 }
          return capabilities
        end)(),
        settings = {
          python = {
            analysis = {
              useLibraryCodeForTypes = true,
              diagnosticSeverityOverrides = {
                reportUnusedVariable = "warning", -- or anything
              },
              typeCheckingMode = "off",
            },
          },
        },
      },
      ruff_lsp = {
        keys = {
          {
            "<leader>co",
            function()
              vim.lsp.buf.code_action({
                apply = true,
                context = {
                  only = { "source.organizeImports" },
                  diagnostics = {},
                },
              })
            end,
            desc = "Organize Imports",
          },
        },
      },
    },
    setup = {
      ruff_lsp = function()
        require("lazyvim.util").lsp.on_attach(function(client, _)
          if client.name == "ruff_lsp" then
            -- Disable hover in favor of Pyright
            client.server_capabilities.hoverProvider = false
          end
        end)
      end,
    },
  },
}
```
Also, note for future self: Pyright requires restart of neovim to recognize config change
