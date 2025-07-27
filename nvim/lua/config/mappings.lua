local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<Esc>", "<cmd>noh<CR>", { desc = "general clear highlights" })
map("n", "<C-c>", "<cmd>%y+<CR>", { desc = "general copy whole file" })

-- buffers
map("n", "<leader>x", "<cmd>bd<CR>")
map("n", "<TAB>", "<cmd>bn<CR>")
map("n", "<S-TAB>", "<cmd>bp<CR>")

-- telescope
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "telescope find files" })

map(
    "n",
    "<leader>fa",
    "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>",
    { desc = "telescope find all files" }
)

map("n", "<leader>fw", "<cmd>Telescope live_grep<CR>", { desc = "telescope live grep" })
map("n", "<leader>b", "<cmd>Telescope buffers<CR>", { desc = "telescope find buffers" })
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "telescope help page" })

map(
    "n",
    "<leader>fz",
    "<cmd>Telescope current_buffer_fuzzy_find<CR>",
    { desc = "telescope find in current buffer" }
)

map("n", "<leader>gt", "<cmd>Telescope git_status<CR>", { desc = "telescope git status" })
map("n", "tr", "<cmd> Telescope lsp_references <CR>", { silent = true })
map("n", "<leader>ds", "<cmd> Telescope diagnostics <CR>", { silent = true })

-- file browser
map("n", "<space>e", ":Telescope file_browser<CR>", { silent = true })

map(
    "n",
    "<space>fe",
    ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
    { silent = true }
)

-- lsp
map("n", "gd", vim.lsp.buf.definition)
