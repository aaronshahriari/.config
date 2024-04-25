vim.g.mkdp_auto_start = 1

vim.cmd([[
function! OpenMarkdownPreview(url) abort
	let l:mdp_browser = '/mnt/c/Program\ Files/Google/Chrome/Application/chrome.exe'
	let l:mdp_browser_opts = '--new-window'
	execute join(['silent! !', l:mdp_browser, l:mdp_browser_opts, a:url])
	redraw!
endfunction
]])

vim.g.mkdp_browserfunc = 'OpenMarkdownPreview'
