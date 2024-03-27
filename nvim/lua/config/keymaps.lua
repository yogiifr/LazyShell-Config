-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- python-copy-reference.vim keybindings
vim.api.nvim_set_keymap("n", "<Leader>rd", ":PythonCopyReferenceDotted<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>rp", ":PythonCopyReferencePytest<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>ri", ":PythonCopyReferenceImport<CR>", { noremap = true, silent = true })

-- Symbols outline
vim.api.nvim_set_keymap("n", "<Leader>h", ":SymbolsOutline<CR>", { noremap = true, silent = true })

-- Obsidian.nvim
vim.api.nvim_set_keymap("n", "<Leader>ob", ":ObsidianBacklinks<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>of", ":ObsidianFollowLink<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>ot", ":ObsidianToday<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>oT", ":ObsidianTemplate<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>os", ":ObsidianSearch<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>oo", ":ObsidianOpen<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>oq", ":ObsidianQuickSwitch<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>ol", ":ObsidianLink<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>oL", ":ObsidianLinkNewO<CR>", { noremap = true, silent = true })

-- blame.nvim
vim.api.nvim_set_keymap("n", "<Leader>gb", ":ToggleBlame<CR>", { noremap = true, silent = true })

-- parrot.nvim
vim.api.nvim_set_keymap("n", "<Leader>pr", ":PrtChatRespond<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>pn", ":PrtChatNew<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>pt", ":PrtChatToggle<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>pa", ":PrtAsk<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>ps", ":PrtStop<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>pf", ":PrtChatFinder<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>pc", ":PrtContext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>pp", ":PrtAppend<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "<Leader>pr", ":PrtRewrite<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "<Leader>pi", ":PrtImplement<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "<Leader>pca", ":PrtTabnew<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>pPp", "<Cmd>PrtProvider<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap(
  "n",
  "<Leader>pPc",
  "<Cmd>PrtProvider anthropic<CR>|<Cmd>PrtAgent Claude-3-Opus<CR>",
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
  "n",
  "<Leader>pPo",
  "<Cmd>PrtProvider ollama<CR>|<Cmd>PrtAgent dolphin-mixtral<CR>",
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
  "n",
  "<Leader>pPg",
  "<Cmd>PrtProvider openai<CR>|<Cmd>PrtAgent CodeGPT4<CR>",
  { noremap = true, silent = true }
)
