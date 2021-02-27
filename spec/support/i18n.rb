require 'i18n'

# Fixes deprecation warning:
#   [deprecated] I18n.enforce_available_locales will default to true in the
#   future. If you really want to skip validation of your locale you can set
#   I18n.enforce_available_locales = false to avoid this message.
I18n.enforce_available_locales = true
