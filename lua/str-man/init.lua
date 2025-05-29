local M = {}

function M.setup(opts)
	-- You can handle your options here if needed
	M.opts = opts or {}
end

vim.api.nvim_create_user_command("SentenceCase", function()
	local bufnr = vim.api.nvim_get_current_buf()
	local lines = vim.api.nvim_buf_get_lines(bufnr, 0, -1, false)
	local function sentence_case(str)
		return (
			str:gsub("(%S.-[%.%!%?]%s*)", function(sentence)
				return sentence:sub(1, 1):upper() .. sentence:sub(2):lower()
			end)
		)
	end
	local input = table.concat(lines, "\n")
	local output = vim.split(sentence_case(input), "\n", { plain = true })
	vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, output)
	vim.notify("Buffer converted to sentence case", vim.log.levels.INFO)
end, {})

vim.api.nvim_create_user_command("TitleCase", function()
	local bufnr = vim.api.nvim_get_current_buf()
	local lines = vim.api.nvim_buf_get_lines(bufnr, 0, -1, false)
	local function title_case(str)
		return (str:gsub("(%w)(%w*)", function(first, rest)
			return first:upper() .. rest:lower()
		end))
	end
	local input = table.concat(lines, "\n")
	local output = vim.split(title_case(input), "\n", { plain = true })
	vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, output)
	vim.notify("Buffer converted to title case", vim.log.levels.INFO)
end, {})

return M
