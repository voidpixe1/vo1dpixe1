-- FULL-BORDER
require("full-border"):setup {
	type = ui.Border.PLAIN,
}

-- GIT PLUGIN
require("git"):setup()
th.git = {
  style = {
    modified = ui.Style():fg("blue"):bold(),
    deleted = ui.Style():fg("red"):bold(),
  },
  sign = {
    modified = "M",
    deleted = "D",
  }
}

Folder = {
	PARENT = 0,
	CURRENT = 1,
	PREVIEW = 2,
}

function Folder:icon(file)
    local icon = file:icon()
    return icon and ui.Span(" " .. icon.text .. " ") or ui.Span("")
end
