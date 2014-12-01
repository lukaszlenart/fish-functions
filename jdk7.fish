function jdk7 --description "Switches \$JAVA_HOME to JDK7"
  echo "Switching \$JAVA_HOME to JDK7"

  set _jh (/usr/libexec/java_home -v 1.7)
  set -x JAVA_HOME $_jh
  jenv local 1.7
  
  echo "\$JAVA_HOME = $JAVA_HOME"
  java -version
end

