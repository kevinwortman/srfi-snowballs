
COMPARATORS_VERSION = 1.0.0
COMPARATORS_SNOWBALL = comparators-${COMPARATORS_VERSION}.tgz

GENERATORS_VERSION = 1.0.2
GENERATORS_SNOWBALL = generators-${GENERATORS_VERSION}.tgz

ALL_SNOWBALLS = ${COMPARATORS_SNOWBALL} ${GENERATORS_SNOWBALL}

all: ${ALL_SNOWBALLS}

${COMPARATORS_SNOWBALL}: srfi-128/comparators/*
	snow-chibi package                                                    \
                   --version=${COMPARATORS_VERSION}                           \
                   --authors="John Cowan"                                     \
                   --maintainers="Kevin Wortman <kwortman@gmail.com>"         \
                   --doc=srfi-128/srfi-128.html                               \
                   --description="SRFI 128: Comparators (reduced) reference implementation" \
                   --test=srfi-128/comparators/comparators-test.scm           \
                   srfi-128/comparators/comparators.sld

${GENERATORS_SNOWBALL}: srfi-121/generators/*
	snow-chibi package                                                    \
                   --version=${GENERATORS_VERSION}                            \
                   --authors="Shiro Kawai, John Cowan, Thomas Gilray"         \
                   --maintainers="Kevin Wortman <kwortman@gmail.com>"         \
                   --doc=srfi-121/srfi-121.html                               \
                   --description="SRFI 121: Generators reference implementation" \
                   srfi-121/generators/generators.sld

clean:
	rm -f ${ALL_SNOWBALLS}
