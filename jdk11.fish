function jdk11 --description "Switches \$JAVA_HOME to JDK11"
  echo "Switching \$JAVA_HOME to JDK11"

  set -gx JAVA_HOME (/usr/libexec/java_home -v 11)
  jenv local 11
  
  echo "\$JAVA_HOME = $JAVA_HOME"
  java -version
end

