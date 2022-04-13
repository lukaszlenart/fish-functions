function __detect_jdk --on-variable PWD --description 'Detect JDK version used in the folder'
  status --is-command-substitution; and return  
  __apply_java_version
end