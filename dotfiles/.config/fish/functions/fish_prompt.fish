
function fish_prompt
    test $SSH_TTY
    and printf (set_color red)$USER(set_color brwhite)'@'(set_color yellow)(prompt_hostname)' '
    test "$USER" = 'root'
    and echo (set_color red)"#"

    # Main
    echo -n (set_color cyan)(prompt_pwd) ヾ\(｡\>﹏\<｡\)ﾉﾞ (set_color red)'❯'(set_color yellow)'❯'(set_color green)'❯ '


    # Git
    # https://qiita.com/mom0tomo/items/b593c0e98c1eea70a114
    set last_status $status
    printf '%s  ' (__fish_git_prompt)
    set_color normal
end
