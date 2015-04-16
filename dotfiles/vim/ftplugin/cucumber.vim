function! RunCurrentFeatureFile()
  let s:command = "!cucumber " . @%
  execute s:command
endfunction

function! RunNearestFeature()
  let s:command = "!cucumber " . @% . ":" . line(".")
  execute s:command
endfunction

map <Leader>s :call RunNearestFeature()<CR>
map <Leader>t :call RunCurrentFeatureFile()<CR>
