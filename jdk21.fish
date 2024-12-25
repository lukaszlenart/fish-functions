function jdk21 --description "Switches \$JAVA_HOME to JDK21"
  echo "Switching \$JAVA_HOME to JDK21"

  set -gx JAVA_HOME (/usr/libexec/java_home -v 21)
  jenv local 21
  
  echo "\$JAVA_HOME = $JAVA_HOME"
  java -version
end

