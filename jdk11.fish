function jdk11 --description "Switches \$JAVA_HOME to JDK11"
  echo "Switching \$JAVA_HOME to JDK11"

  set -gx JAVA_HOME /Library/Java/JavaVirtualMachines/jdk-11.0.2.jdk/Contents/Home
  jenv local 11.0.2
  
  echo "\$JAVA_HOME = $JAVA_HOME"
  java -version
end

