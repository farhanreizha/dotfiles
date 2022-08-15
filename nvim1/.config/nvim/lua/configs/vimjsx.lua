local status_ok, vimjsx = pcall(require, "vim-jsx")
if status_ok then return end
vimjsx.setup(astronvim.user_plugin_opts "plugins.vim-jsx")
