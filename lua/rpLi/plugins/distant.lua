-- import distant plugin safely
local setup, distant = pcall(require, "distant")
if not setup then
	return
end

-- configure/enable
distant:setup({
	servers = {
		["e5-cse-135-01.cse.psu.edu"] = {
			connect = {
				default = {
					username = "rql5576",
				},
			},
		},
	},
})
