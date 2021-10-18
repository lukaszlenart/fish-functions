function __k8s_prompt --description 'Write out k8s context'
    set_color normal
    
    set __k8s_context (kubectl config current-context 2>/dev/null)
    if test $status -eq 0        
        echo -n '('

        set_color brmagenta
        printf '%s' (echo $__k8s_context)
        set_color normal    
        
        set __k8s_ns (kubectl config view --minify --output 'jsonpath={..namespace}' 2>/dev/null)
        if test $status -eq 0
            echo -n ':'
            set_color brmagenta
            printf '%s' (echo -n $__k8s_ns)
            set_color normal
        end
        
        echo -n ') '
    end
        
end