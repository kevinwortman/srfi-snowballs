
ALL_SNOWBALLS = generators-1.0.0.tgz

all: ${ALL_SNOWBALLS}

generators-1.0.0.tgz: srfi-121/generators/*
	snow-chibi package                                                    \
                   --version=1.0.0                                            \
                   --authors="Shiro Kawai, John Cowan, Thomas Gilray"         \
                   --maintainers="Kevin Wortman <kwortman@gmail.com>"         \
                   --doc=srfi-121/srfi-121.html                               \
                   --description="Generators"                                 \
                   srfi-121/generators/generators.sld

clean:
	rm -f ${ALL_SNOWBALLS}
