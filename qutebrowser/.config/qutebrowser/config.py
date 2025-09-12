# == QUTEBROWSER CONFIG ==========================
# Documentation:
#   qute://help/configuring.html
#   qute://help/settings.html

config.load_autoconfig(False)

# --- PRIVACY ------------------------------------

c.content.javascript.enabled = True
c.content.autoplay = False
c.content.cookies.accept = "no-3rdparty"
c.content.geolocation = False
c.content.notifications.enabled = False

# --- NAVIGATION ---------------------------------

config.bind('J', 'tab-prev')
config.bind('K', 'tab-next')

# --- VIDEO PLAYBACK -----------------------------

# Unbind default bindings
config.unbind('v', mode='normal')
# Pressing "v" will spawn link hints. The chosen link will open in mpv
config.bind('v', 'hint links spawn --detach mpv {hint-url} ')

# --- THEME --------------------------------------

c.colors.statusbar.normal.bg = "#00000000"
c.colors.statusbar.command.bg = "#00000000"
c.colors.statusbar.command.fg = "#FFFFFFFF"
c.colors.statusbar.normal.fg = "#FFFFFFFF"
c.colors.statusbar.passthrough.fg = "#FFFFFFFF"
c.colors.statusbar.url.fg = "#FFFFFFFF"
c.colors.statusbar.url.success.https.fg = "#FFFFFFFF"
c.colors.statusbar.url.hover.fg = "#FFFFFFFF"
# c.statusbar.show = "always"
c.colors.tabs.even.bg = "#00000000"
c.colors.tabs.odd.bg = "#00000000"
c.colors.tabs.bar.bg = "#00000000"
# c.colors.tabs.even.bg = "#00000000"
# c.colors.tabs.odd.bg = "#00000000"
c.colors.tabs.even.fg = "#FFFFFFFF"
c.colors.tabs.odd.fg = "#FFFFFFFF"
c.colors.tabs.selected.even.bg = "#00000000"
c.colors.tabs.selected.odd.bg = "#00000000"
c.colors.tabs.selected.even.fg = "#FFFFFFFF"
c.colors.tabs.selected.odd.fg = "#FFFFFFFF"
c.colors.hints.bg = "#00000000"
c.colors.hints.fg = "#FFFFFFFF"
c.tabs.show = "multiple"

c.colors.completion.item.selected.match.fg = "#FFFFFFFF"
c.colors.completion.match.fg = "#FFFFFFFF"

c.colors.tabs.indicator.start = ""
c.colors.tabs.indicator.stop = ""
c.colors.completion.odd.bg = "#00000000"
c.colors.completion.even.bg = "#00000000"
c.colors.completion.fg = "#FFFFFFFF"
c.colors.completion.category.bg = "#00000000"
c.colors.completion.category.fg = "#FFFFFFFF"
c.colors.completion.item.selected.bg = "#00000000"
c.colors.completion.item.selected.fg = "#FFFFFFFF"

c.colors.messages.info.bg = "#00000000"
c.colors.messages.info.fg = "#FFFFFFFF"
c.colors.messages.error.bg = "#00000000"
c.colors.messages.error.fg = "#FFFFFFFF"
c.colors.downloads.error.bg = "#00000000"
c.colors.downloads.error.fg = "#FFFFFFFF"

c.colors.downloads.bar.bg = "#00000000"
c.colors.downloads.start.bg = "#00000000"
c.colors.downloads.start.fg = "#FFFFFFFF"
c.colors.downloads.stop.bg = "#00000000"
c.colors.downloads.stop.fg = "#FFFFFFFF"

c.colors.tooltip.bg = "#00000000"
c.colors.webpage.bg = "#00000000"
c.hints.border = ""


