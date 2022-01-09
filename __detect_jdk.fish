function __detect_jdk --on-variable PWD --description 'Detect JDK version used in the folder'
  status --is-command-substitution; and return  
  if test $PWD/.java-version
    set __java_version (cat .java-version | head -n 1 | awk -F\" '{print $1}' | head -c3)
    if test "$__java_version" = "1.8"
      jdk8
    end
  end
end