function jdk17 --description "Switches \$JAVA_HOME to JDK17"
  echo "Switching \$JAVA_HOME to JDK17"

  set -gx JAVA_HOME /Library/Java/JavaVirtualMachines/openjdk.jdk/Contents/Home
  jenv local openjdk64-17
  
  echo "\$JAVA_HOME = $JAVA_HOME"
  java -version
end

