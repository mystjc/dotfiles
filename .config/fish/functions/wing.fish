function wing --wraps='tail -f $argv | bat --paging=never -l log' --description 'alias wing tail -f $argv | bat --paging=never -l log'
    tail -f $argv | bat --paging=never -l log
end
