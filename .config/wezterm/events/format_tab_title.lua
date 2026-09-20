local wezterm = require("wezterm")

-- Return current title of tab
function tab_title(tab, max_width)
    local title = (tab.tab_title and #tab.tab_title > 0) and tab.tab_title or tab.active_pane.title
    title = wezterm.truncate_right(title, max_width - 2)
    return ' ' .. title .. ' '
end

wezterm.on('format-tab-title', function(tab, tabs, panes, config, hover, max_width)
    local tab_bar = config.colors.tab_bar
    local active_bg = tab_bar.active_tab.bg_color
    local active_fg = tab_bar.active_tab.fg_color
    local inactive_bg = tab_bar.inactive_tab.bg_color
    local inactive_fg = tab_bar.inactive_tab.fg_color

    local index = ' ' .. tostring(tab.tab_index)
    local title = tab_title(tab, max_width)

    if tab.is_active then
        return {
            { Background = { Color = active_bg } },
            { Foreground = { Color = active_fg } },
            { Attribute = { Intensity = 'Bold' } },
            { Text = index },
            { Background = { Color = active_bg } },
            { Foreground = { Color = active_fg } },
            { Attribute = { Intensity = 'Bold' } },
            { Text = title },
        }
    end

    return {
        { Background = { Color = inactive_bg } },
        { Foreground = { Color = inactive_fg } },
        { Attribute = { Intensity = 'Bold' } },
        { Text = index },
        { Background = { Color = inactive_bg } },
        { Foreground = { Color = inactive_fg } },
        { Text = title },
    }
end)
