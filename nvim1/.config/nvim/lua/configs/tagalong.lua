local status_ok, tagalong = pcall(require, "tagalong.vim")
if status_ok then return end
tagalong.setup(astronvim.user_plugin_opts, "tagalong.vim")
