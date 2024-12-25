function __apply_java_version --description 'Applies Java version based on existing .java-version file'
  if test -e $PWD/.java-version
    set __java_version (cat $PWD/.java-version)
    if test "$__java_version" = "1.8"
      jdk8
    else if string match -q '17*' $__java_version
      jdk17
    else if string match -q '21*' $__java_version
      jdk21
    else
      echo "Uknown version: $__java_version"
    end
  end
end