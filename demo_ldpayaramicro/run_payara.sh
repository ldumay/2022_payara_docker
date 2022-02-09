#!/bin/sh
set -e

exec java -Xms${MEM_XMS} -Xmx${MEM_XMX} -Xss${MEM_XSS} -XX:MaxRAMPercentage=${MEM_MAX_RAM_PERCENTAGE} -XX:+UseContainerSupport ${JVM_ARGS} -jar payara-micro.jar --nocluster --deploy deployments/*.war "$@"
