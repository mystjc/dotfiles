function ls --wraps='lsd --group-directories-first' --description 'alias ls lsd --group-directories-first'
    lsd --group-directories-first $argv
end
