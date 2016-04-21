function fish_prompt --description 'Write out the prompt'
    set -l last_status $status

    set -l normal (set_color normal)

    # Just calculate this once, to save a few cycles when displaying the prompt
    if not set -q __fish_prompt_hostname
        set -g __fish_prompt_hostname (hostname|cut -d . -f 1)
    end

    if not set -q __fish_prompt_normal
        set -g __fish_prompt_normal (set_color normal)
    end

    # PWD 
    echo -n -s (set_color $fish_color_user) "$USER" $normal @ (set_color $fish_color_host) "$__fish_prompt_hostname" ':'

    set_color $fish_color_cwd
    echo -n (prompt_pwd)
    set_color normal

    set_color blue
    echo -n ' '
    echo -n (java -version 2>&1 | head -n 1 | awk -F\" '{print $2}' | head -c3)
    
    set_color normal
    printf '%s ' (__fish_git_prompt)

    if not test $last_status -eq 0
        set_color $fish_color_error
    end

    echo -n '> '

    set_color normal
end
