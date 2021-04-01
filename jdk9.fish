function jdk9 --description "Switches \$JAVA_HOME to JDK9"
  echo "Switching \$JAVA_HOME to JDK9"

  set _jh (/usr/libexec/java_home -v 9)
  set -x JAVA_HOME $_jh
  jenv local 9
  
  echo "\$JAVA_HOME = $JAVA_HOME"
  java -version
end

