local M = {}

function M.setup(opts)
	-- You can handle your options here if needed
	M.opts = opts or {}
end

vim.api.nvim_create_user_command("JSM", function()
	local bufnr = vim.api.nvim_get_current_buf()
	local lines = vim.api.nvim_buf_get_lines(bufnr, 0, -1, false)
	local input = table.concat(lines, "\n")

	-- Run jq . using vim.system (Neovim 0.10+)
	vim.system({ "jq", "." }, { stdin = input }, function(obj)
		vim.schedule(function()
			if obj.code == 0 then
				local output = vim.split(obj.stdout or "", "\n", { plain = true })
				vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, output)
				vim.notify("Buffer formatted with jq", vim.log.levels.INFO)
			else
				vim.notify("jq error: " .. (obj.stderr or ""), vim.log.levels.ERROR)
			end
		end)
	end)
end, {})

return M
