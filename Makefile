
GENERATORS_VERSION = 1.0.0
GENERATORS_SNOWBALL = generators-${GENERATORS_VERSION}.tgz

ALL_SNOWBALLS = ${GENERATORS_SNOWBALL}

all: ${ALL_SNOWBALLS}

${GENERATORS_SNOWBALL}: srfi-121/generators/*
	snow-chibi package                                                    \
                   --version=${GENERATORS_VERSION}                            \
                   --authors="Shiro Kawai, John Cowan, Thomas Gilray"         \
                   --maintainers="Kevin Wortman <kwortman@gmail.com>"         \
                   --doc=srfi-121/srfi-121.html                               \
                   --description="Generators"                                 \
                   srfi-121/generators/generators.sld

clean:
	rm -f ${ALL_SNOWBALLS}
