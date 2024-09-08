-- import lualine plugin safely
local status, statuscol = pcall(require, "statuscol.builtn")
if not status then
  return
end

statuscol.setup()
