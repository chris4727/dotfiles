# == QUTEBROWSER CONFIG ==========================
# Documentation:
#   qute://help/configuring.html
#   qute://help/settings.html

config.load_autoconfig(False)

# Which cookies to accept
config.set('content.cookies.accept', 'all', 'chrome-devtools://*')
# Which cookies to accept
config.set('content.cookies.accept', 'all', 'devtools://*')
# Valid values:
#   - all: Accept all cookies.
#   - no-3rdparty: Accept cookies from the same origin only. This is known to break some sites, such as GMail.
#   - no-unknown-3rdparty: Accept cookies from the same origin only, unless a cookie is already set for the domain. On QtWebEngine, this is the same as no-3rdparty.
#   - never: Don't accept cookies at all.

# --- NAVIGATION ---------------------------------

config.bind('J', 'tab-prev')
config.bind('K', 'tab-next')

# --- VIDEO PLAYBACK -----------------------------

# Unbind default bindings
config.unbind('v', mode='normal')
# Pressing "v" will spawn link hints. The chosen link will open in mpv
config.bind('v', 'hint links spawn --detach mpv {hint-url} ')

