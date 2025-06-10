vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>")

local state = {
    floating = {
        buf = -1,
        win = -1,
    }
}

local function create_floating_window(opts)
    opts = opts or {}

    local width_ratio = opts.width_ratio or 0.42
    local height_ratio = opts.height_ratio or 0.42

    local buf = nil
    if opts.buf and vim.api.nvim_buf_is_valid(opts.buf) then
        buf = opts.buf
    else
        buf = vim.api.nvim_create_buf(false, true)
    end

    local function open_win()
        local columns = vim.o.columns
        local lines = vim.o.lines

        local width = math.floor(columns * width_ratio)
        local height = math.floor(lines * height_ratio)

        local col = columns - width
        local row = lines - height - 4

        local win_config = {
            relative = "editor",
            width = width,
            height = height,
            col = col,
            row = row,
            style = "minimal",
            border = "single",
        }

        if opts.win and vim.api.nvim_win_is_valid(opts.win) then
            vim.api.nvim_win_set_config(opts.win, win_config)
        else
            opts.win = vim.api.nvim_open_win(buf, true, win_config)
        end
    end

    open_win()

    vim.api.nvim_create_autocmd("VimResized", {
        callback = function()
            open_win()
        end,
    })

    return { buf = buf, win = opts.win }
end

local toggle_terminal = function()
    if not vim.api.nvim_win_is_valid(state.floating.win) then
        state.floating = create_floating_window {
            buf = state.floating.buf,
        }
        if vim.bo[state.floating.buf].buftype ~= "terminal" then
            vim.cmd.terminal()
        end
    else
        vim.api.nvim_win_hide(state.floating.win)
    end
end

vim.api.nvim_create_user_command("Floaterminal", toggle_terminal, {})
