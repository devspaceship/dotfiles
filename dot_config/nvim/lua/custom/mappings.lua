---@type MappingsTable
local M = {}

M.general = {
  n = {
    -- [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>q"] = { "<cmd>TroubleToggle<cr>", "Open Trouble" },
  },
}

-- more keybinds!

return M
