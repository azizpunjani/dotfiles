command! -nargs=0 -bar Qargs execute 'args ' . QuickfixFilenames()
function! QuickfixFilenames()
    let buffer_numbers = {}
    for d in getqflist()
        let buffer_numbers[d['bufnr']] = bufname(d['bufnr'])
    endfor
    return join(values(buffer_numbers))
endfunction
