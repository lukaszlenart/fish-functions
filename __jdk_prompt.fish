function __jdk_prompt --description 'Write out Java version'
    set_color normal
    echo -n '['
    set_color cyan
    set __java_version (java -version 2>&1 | head -n 1 | awk -F\" '{print $2}' | head -c3)
    if not string match --quiet --regex '\D' $__java_version
        printf '-' 
    else if test $__java_version -ge 11
        printf '%s' (echo $__java_version | head -c2)
    else
        printf '%s' (echo $__java_version | head -c3)
    end
    set_color normal
    echo -n ']'
end