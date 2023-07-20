return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.pack.angular" },
  { import = "astrocommunity.pack.typescript-all-in-one" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.git.git-blame-nvim" },
  { import = "astrocommunity.code-runner.sniprun" }, -- Visual Mode select :SnipRun
  { import = "astrocommunity.color.vim-highlighter" }, -- NormalMode HiSet 'f<CR>' HiErase 'f<BS>' HiClear 'f<C-L>' HiFind  'f<Tab>' HiSetSL 't<CR>'
  { import = "astrocommunity.utility.transparent-nvim" },
}
