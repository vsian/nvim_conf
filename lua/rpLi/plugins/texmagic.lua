local texmagic_setup, texmagic = pcall(require, "texmagic")
if not texmagic_setup then
	return
end

texmagic.setup({})
