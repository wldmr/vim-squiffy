function! SquiffyFold(lnum)
    let line = getline(a:lnum) 
    if line =~? '^\[\[[^\]]*\]\]:$'
        return ">1"
    elseif line =~? '^\[[^\]]*\]:$'
        return ">2"
    else
        return "="
    endif
endfunction

setlocal foldexpr=SquiffyFold(v:lnum)
setlocal foldmethod=expr

