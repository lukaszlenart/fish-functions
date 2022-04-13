function __apply_java_version --description 'Applies Java version based on existing .java-version file'
  if test -e $PWD/.java-version
    set __java_version (cat $PWD/.java-version)
    if test "$__java_version" = "1.7"
      jdk7
    else if test "$__java_version" = "1.8"
      jdk8
    else if test "$__java_version" = "11.0"
      jdk11
    else if test "$__java_version" = "17"
      jdk17
    end
  end
end