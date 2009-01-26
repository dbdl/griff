DIRS=.
EXCLUDED=TAGS
EXCLUDED_grep=$(shell echo $(EXCLUDED)|tr ' ' '|')

all: tags

tags: TAGS

TAGS:
	-rm -f TAGS
	find $(DIRS) -type f -a \! -name '*~' | \
        egrep -v "$(EXCLUDED_grep)" | \
        etags --language=none --regex='/^[^\t ]*[ ]*()/\1/' -

clean:
	find $(DIRS) -type f -name "*~" -delete

.PHONY: clean TAGS install
