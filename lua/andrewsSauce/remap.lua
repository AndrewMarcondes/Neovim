vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>fp", function()
  vim.fn.setreg("+", vim.fn.expand("%:p"))
end, { desc = "Copy absolute file path to clipboard" })

local function jq_format(start_line, end_line)
  local lines = vim.api.nvim_buf_get_lines(0, start_line, end_line, false)
  local result = vim.system({ "jq", "." }, { stdin = table.concat(lines, "\n") }):wait()
  if result.code == 0 then
    vim.api.nvim_buf_set_lines(0, start_line, end_line, false, vim.split(result.stdout, "\n", { trimempty = true }))
  else
    vim.notify("jq: " .. result.stderr, vim.log.levels.ERROR)
  end
end

vim.keymap.set("n", "<leader>jq", function()
  jq_format(0, -1)
end, { desc = "Beautify JSON" })

vim.keymap.set("v", "<leader>jq", function()
  jq_format(vim.fn.line("'<") - 1, vim.fn.line("'>"))
end, { desc = "Beautify JSON selection" })
