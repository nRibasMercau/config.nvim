function ColorMyPencils(color)
	color = color or 'hybrid'
	vim.cmd.colorscheme(color)
end

ColorMyPencils()
