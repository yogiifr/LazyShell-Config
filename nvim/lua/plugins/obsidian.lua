return {
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = true,
  event = {
    -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
    "BufReadPre "
      .. vim.fn.expand("~")
      .. "/second_brain/**.md",
    "BufNewFile ~/second_brain/**.md",
  },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "second_brain",
        path = "~/second_brain",
      },
    },
    notes_subdir = "pages",
    daily_notes = {
      folder = "journals",
      date_format = "%Y_%m_%d",
    },
    -- Optional, customize how names/IDs for new notes are created.
    note_id_func = function(title)
      return title
    end,
    templates = {
      subdir = "templates",
    },
  },
}
