function jdk6 --description "Switches \$JAVA_HOME to JDK6"
  echo "Switching \$JAVA_HOME to JDK6"

  set _jh (/usr/libexec/java_home -v 1.6)
  set -x JAVA_HOME $_jh
  jenv local 1.6
  
  echo "\$JAVA_HOME = $JAVA_HOME"
  java -version
end

