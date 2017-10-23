SRC_MODULE=./src

all: nagios4

nagios4:
	cd $(SRC_MODULE) && $(MAKE) nagios4

naemon:
	cd $(SRC_MODULE) && $(MAKE) naemon

install:
	cd $(SRC_MODULE) && $(MAKE) $@

test: nagios4 naemon

clean:
	cd $(SRC_MODULE) && $(MAKE) $@

