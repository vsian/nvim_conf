-- import nvim-autopairs safely
local bookmarks_setup, bookmarks = pcall(require, "bookmarks")
if not bookmarks_setup then
    return
end

bookmarks.setup {
    -- sign_priority = 8,  --set bookmark sign priority to cover other sign
    save_file = vim.fn.expand "$HOME/.bookmarks", -- bookmarks save file path
    keywords = {
        ["@t"] = "☑️ ", -- mark annotation startswith @t ,signs this icon as `Todo`
        ["@w"] = "⚠️ ", -- mark annotation startswith @w ,signs this icon as `Warn`
        ["@f"] = "⛏ ", -- mark annotation startswith @f ,signs this icon as `Fix`
        ["@n"] = "󰚢", -- mark annotation startswith @n ,signs this icon as `Note`
    },
    on_attach = function(bufnr)
        local map = vim.keymap.set
        map("n", "mm", bookmarks.bookmark_toggle) -- add or remove bookmark at current line
        map("n", "mi", bookmarks.bookmark_ann)    -- add or edit mark annotation at current line
        map("n", "mc", bookmarks.bookmark_clean)  -- clean all marks in local buffer
        -- map("n", "mn", bookmarks.bookmark_next)      -- jump to next mark in local buffer
        -- map("n", "mp", bookmarks.bookmark_prev)      -- jump to previous mark in local buffer
        map("n", "ml", bookmarks.bookmark_list)      -- show marked file list in quickfix window
        map("n", "mo", bookmarks.bookmark_clear_all) -- removes all bookmarks
    end
}
