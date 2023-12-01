function jdk17 --description "Switches \$JAVA_HOME to JDK17"
  echo "Switching \$JAVA_HOME to JDK17"

  set -gx JAVA_HOME (/usr/libexec/java_home -v 17)
  jenv local 17.0.9
  
  echo "\$JAVA_HOME = $JAVA_HOME"
  java -version
end

