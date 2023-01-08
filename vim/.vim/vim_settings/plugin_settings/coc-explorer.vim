nnoremap <silent><C-n> :CocCommand explorer<CR>

"-----[ キーマッピングの設定 ]------------------------------------------------- 
call coc#config("explorer",{
  \"file.showHiddenFiles":"true",
  \"width":"60",
  \"keyMappingMode":"none",
  \"keyMappings.global":{
  \"h": "collapse",
  \"l": ["expandable?", "expand", "open"],
  \"k": "nodePrev",
  \"j": "nodeNext",
  \"o": "open",
  \"i":"open:split",
  \"S":"open:split:plain",
  \"s":"open:vsplit",
  \"t":"open:tab",
  \"d":"delete",
  \"D":"deleteForever",
  \"a":"addFile",
  \"A":"addDirectory",
  \"r":"rename",
  \"q":"quit",
  \"/":"search",
  \"R": "refresh",
  \"yy": "copyFile",
  \"dd": "cutFile",
  \"p": "pasteFile",
  \"G": ["wait", "gotoParent"],
  \},
  \})
