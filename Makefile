SHELL := /bin/bash

default: rebuild

install: rebuild

rebuild: env 

activate: 
	(source env/bin/activate)

run:
	(source env/bin/activate; python3 rap_analysis/app.py)

env:    requirements.txt
	(python3 -mvenv env; \
	source ./env/bin/activate; \
	pip3 install -r requirements.txt)

clean:
	rm -rf env