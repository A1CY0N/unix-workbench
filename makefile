#/bin/bash

SHELL=/bin/bash

all: README.md

README.md: guessinggame.sh
	echo "# Guessing Game for The Unix Workbench" > README.md
	echo Date : `date` >> README.md
	echo Number of lines : `wc -l guessinggame.sh | awk '{ print $$1 }'` >> README.md
clean:
	rm README.md