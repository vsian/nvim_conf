-- import mason plugin safely
local navigator_status, navigator = pcall(require, "navigator")
if not navigator_status then
	return
end

navigator.setup()
