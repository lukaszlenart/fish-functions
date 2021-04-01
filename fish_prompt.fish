function fish_prompt --description 'Write out the prompt'
    set -l last_status $status

    set -l normal (set_color normal)

    # Just calculate this once, to save a few cycles when displaying the prompt
    if not set -q __fish_prompt_hostname
        set -g __fish_prompt_hostname (hostname -s)
    end

    # PWD 
    echo -n "$__fish_prompt_hostname"':'

    printf '%s' (__jdk_prompt)

    printf '%s' (__k8s_prompt)

    set_color $fish_color_cwd
    echo -n (prompt_pwd)

    set_color normal
    printf '%s' (__fish_git_prompt)

    if not test $last_status -eq 0
        set_color $fish_color_error
    end

    echo -n '> '

    set_color normal
end
