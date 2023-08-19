-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    ["<leader>bq"] = { "<cmd>bd<cr>", desc = "Close buffer" },
    ["<leader>q"] = { "<cmd>bd<cr>", desc = "Close buffer" },
    ["<S-h>"] = { "<cmd>bprev<cr>", desc = "Prev buffer" },
    ["<S-l>"] = { "<cmd>bnext<cr>", desc = "Next buffer" },
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" }, -- change description but the same command
    ["<C-u>"] = { "<C-u>zz", desc = "Page Up" },
    ["<C-d>"] = { "<C-d>zz", desc = "Page Down" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  v = {
    ["<leader>p"] = { '"_dP', desc = "paste w/o copy deleted" },
    ["<leader>r"] = { ":SnipRun<cr>", desc = "run highlited code" },
  },
}
