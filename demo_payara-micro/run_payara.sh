#!/bin/sh
set -e

exec java
-XX:MaxRAMPercentage=${MEM_MAX_RAM_PERCENTAGE}
-Xss${MEM_XSS}
-Xms${MEM_XMS}
-Xmx${MEM_XMX}
-XX:+UseContainerSupport ${JVM_ARGS}
-jar payara-micro.jar "$@"
--nocluster