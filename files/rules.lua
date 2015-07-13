--autofocus non fonctionnel
awful.rules = require("awful.rules")
local beautiful = require("beautiful")

-- {{{ Rules
awful.rules.rules = {
    -- All clients will match this rule.
    --rule_any,except,except_any
    { rule = { },
      properties = { border_width = beautiful.border_width,
                     border_color = beautiful.border_normal,
                     focus = awful.client.focus.filter,
                     keys = clientkeys,
                     buttons = clientbuttons } },
    { rule = { class = "MPlayer" },
      properties = { floating = true } },
    { rule = { class = "pinentry" },
      properties = { floating = true } },
    { rule = { class = "gimp" },
      properties = { floating = true } },
    { rule = { instance = "plugin-container" },
     properties = { floating = true},
    },
    -- Iceweasel will be on screen [1] tag[3].
     --{ rule = { class = "Iceweasel" },
      -- properties = { tag = tags[1][3] } },
    -- Mumble will be on screen [1] tag[1].
     { rule = { class = "Mumble" },
       properties = { tag = tags[1][1] } },
}
-- End Rules}}}
