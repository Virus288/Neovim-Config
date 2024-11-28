local config = require "neo-tree"

-- Toggle neotree
vim.keymap.set("n", "<C-n>", ":Neotree toggle filesystem right<CR>", { noremap = true, silent = true })

config.setup({
  filesystem = {
    window = {
      mappings = {
        ["<BS>"] = function(state)
          local node = state.tree:get_node() -- Get the currently selected node
          if node then
            if node.type == "directory" and node:is_expanded() then
              -- If the node is a folder and expanded, fold it
              state.commands.toggle_node(state)
            -- else
            --   -- Otherwise, attempt to fold the parent folder
            --   local parent_id = node:get_parent_id()
            --   if parent_id then
            --     local parent_node = state.tree:get_node(parent_id)
            --     if parent_node and parent_node.type == "directory" and parent_node:is_expanded() then
            --       state.commands.toggle_node(state, parent_node)
            --     end
            --   end
            end
          end
        end,
      },
    },
  },
})
