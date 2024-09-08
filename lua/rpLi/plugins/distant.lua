-- import distant plugin safely
local setup, distant = pcall(require, "distant")
if not setup then
	return
end

-- configure/enable
distant:setup({
	servers = {
		["ese-135-01u"] = {
			connect = {
				default = {
					username = "",
				},
			},
		},
	},
})
