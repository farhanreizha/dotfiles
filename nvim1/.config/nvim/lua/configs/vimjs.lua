local status_ok, vimjs = pcall(require, "vim-javascript")
if status_ok then return end
vimjs.setup(astronvim.user_plugin_opts "plugins.vim-javascript")
