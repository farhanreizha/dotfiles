local status_ok, ultisnip = pcall(require, "ultisnips")
if status_ok then return end
ultisnip.setup(astronvim.user_plugin_opts, "ultisnips")
