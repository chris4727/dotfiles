# == QUTEBROWSER CONFIG ==========================
# Documentation:
#   qute://help/configuring.html
#   qute://help/settings.html
#   https://qutebrowser.org/doc/help/settings.html

# --- GENERAL ------------------------------------

config.load_autoconfig(False)
c.fonts.default_family = "FiraCodeNerdFont"
c.fonts.default_size = "10.5pt"

# -- TABS ----------------------------------------

c.tabs.show = "always" # When to show tabs:always, multiple, switching, never
c.tabs.padding = {'top': 5, 'bottom': 5, 'left': 9, 'right': 9}
# c.window.transparent = True # apparently not needed
c.tabs.width = '7%'

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

palette = {
            "bg0": "#191724",
            "bg1": "#1f1d2e",
            "bg2": "#26233a",
            "fg2": "#6e6a86",
            "fg1": "#908caa",
            "fg0": "#e0def4",
            "red": "#eb6f92",
            "yel": "#f6c177",
            "grn": "#9ccfd8",
            "aqu": "#ebbcba",
            "blu": "#31748f",
            "prp": "#c4a7e7",
            "tst": "#FF0000",
}
# Dark mode
c.colors.webpage.darkmode.enabled = True
c.colors.webpage.bg = palette["bg0"]
# Status bar
c.colors.statusbar.normal.bg = palette["bg0"]
c.colors.statusbar.normal.fg = palette["fg2"]
c.colors.statusbar.command.bg = palette["bg0"]
c.colors.statusbar.command.fg = palette["grn"]
c.colors.statusbar.url.fg = palette["fg2"]
c.colors.statusbar.url.success.https.fg = palette["grn"]
c.colors.statusbar.url.hover.fg = palette["yel"]
# Tabs
c.colors.tabs.even.bg = palette["bg0"]
c.colors.tabs.even.fg = palette["fg0"]
c.colors.tabs.odd.bg = palette["bg0"]
c.colors.tabs.odd.fg = palette["fg0"]
c.colors.tabs.bar.bg = palette["bg0"]
c.colors.tabs.selected.even.bg = palette["prp"]
c.colors.tabs.selected.odd.bg = palette["prp"]
c.colors.tabs.selected.even.fg = palette["bg0"]
c.colors.tabs.selected.odd.fg = palette["bg0"]
# Hints (when pressing "f" or "F")
c.colors.hints.bg = palette["bg0"]
c.colors.hints.fg = palette["fg0"]
c.hints.border = "1px solid" + palette["fg2"]
# Tab Indicator (the vertical bar on left of tabs)
c.tabs.indicator.width = 13 # 0 = no tab indicator
c.colors.tabs.indicator.start = palette["tst"]
c.colors.tabs.indicator.stop = palette["grn"]
# Completion widget (when typing commands)
c.colors.completion.match.fg = palette["aqu"]
c.colors.completion.odd.bg = palette["bg0"]
c.colors.completion.even.bg = palette["bg0"]
c.colors.completion.fg = palette["fg0"]
c.colors.completion.category.bg = palette["bg0"]
c.colors.completion.category.fg = palette["fg0"]
c.colors.completion.item.selected.bg = palette["bg2"]
c.colors.completion.item.selected.fg = palette["fg0"]
c.colors.completion.item.selected.match.fg = palette["grn"]
c.colors.completion.item.selected.border.top = palette["bg0"]
c.colors.completion.item.selected.border.bottom = palette["bg0"]
# Messages
c.messages.timeout = 10000
c.colors.messages.info.bg = palette["bg0"]
c.colors.messages.info.fg = palette["yel"]
c.colors.messages.info.border = palette["bg0"]
c.colors.messages.error.bg = palette["bg0"]
c.colors.messages.error.fg = palette["red"]
c.colors.messages.error.border = palette["bg0"]

# Downloads
c.colors.downloads.bar.bg = palette["bg0"]
c.colors.downloads.start.bg = palette["bg0"]
c.colors.downloads.stop.bg = palette["bg0"]
c.colors.downloads.start.fg = palette["fg0"]
c.colors.downloads.stop.fg = palette["fg0"]
c.colors.downloads.error.bg = palette["bg0"]
c.colors.downloads.error.fg = palette["red"]

c.colors.prompts.bg = palette["bg1"]
c.colors.prompts.fg = palette["fg0"]
c.colors.prompts.selected.bg = palette["prp"]
c.colors.prompts.selected.fg = palette["bg0"]
c.colors.prompts.border = palette["tst"]

c.colors.tooltip.bg = palette["bg0"]


