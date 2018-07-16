setlocal indentexpr=HoconIndent()

function! HoconIndent()
    let line = getline(v:lnum)
    let previousNum = prevnonblank(v:lnum - 1)
    let previous = getline(previousNum)

    if previous =~ "{"
        if line =~ "}"
            return indent(previousNum)
        else
            return indent(previousNum) + &shiftwidth
        endif
    elseif line =~ "}"
        return indent(previousNum) - &shiftwidth
    else
        return indent(previousNum)
    endif
endfunction
