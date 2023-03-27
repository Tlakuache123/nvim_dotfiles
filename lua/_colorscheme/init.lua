local status, nightfox = pcall(require, "nightfox")
if not status then
	return
end

local status2, tokyonight = pcall(require, "tokyonight")
if not status2 then
	return
end

nightfox.setup({
  options = {
    styles = {
      comments = "italic",
      keywords = "bold",
      types = "italic, bold"
    }
  }
})

--vim.cmd("colorscheme nordfox")
vim.cmd("colorscheme tokyonight-night")
