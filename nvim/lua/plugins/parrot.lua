return {
  "lzieniew/parrot.nvim",
  -- OPTIONAL
  -- dependencies = { "fzf-lua" },
  config = function()
    require("parrot").setup {
      providers = {
        openai = {
          api_key = 'openai key',
        },
        anthropic = {
          api_key = 'anthropic key',
        },
        ollama = {
          endpoint = "http://desktop.local:11434/api/chat"
        }
      },
    }
  end,
}
