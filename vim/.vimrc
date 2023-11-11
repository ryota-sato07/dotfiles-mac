" vimの設定をvscodeに影響させない
if !exists('g:vscode')
  runtime! vim_settings/init/*.vim
  runtime! vim_settings/plugin_settings/*.vim
end
