function jdk7 --description "Switches \$JAVA_HOME to JDK7"
  echo "Switching \$JAVA_HOME to JDK7"

  set -gx JAVA_HOME /Library/Java/JavaVirtualMachines/jdk1.7.0_80.jdk/Contents/Home
  jenv local 1.7
  
  echo "\$JAVA_HOME = $JAVA_HOME"
  java -version
end

