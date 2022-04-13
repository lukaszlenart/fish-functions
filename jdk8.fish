function jdk8 --description "Switches \$JAVA_HOME to JDK8"
  echo "Switching \$JAVA_HOME to JDK8"

  set -gx JAVA_HOME /Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home
  jenv local 1.8

  echo "\$JAVA_HOME = $JAVA_HOME"
  java -version
end
