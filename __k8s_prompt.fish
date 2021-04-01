function __k8s_prompt --description 'Write out k8s context'
    set_color normal
    echo -n '('
    set_color brmagenta
    set __k8s_context (kubectl config current-context 2>&1)
    set __k8s_ns (kubectl config view --minify --output 'jsonpath={..namespace}' 2>&1)
    printf '%s' (echo $__k8s_context)
    set_color normal
    echo -n ':'
    set_color brmagenta
    printf '%s' (echo -n $__k8s_ns)
    set_color normal
    echo -n ') '
end