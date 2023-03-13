
.PHONY: all build


all: build

build:
	docker build -f Dockerfile -t quay.io/bthomass/eda-performance:latest .

run:
	docker run -it quay.io/bthomass/eda-performance:latest ansible-rulebook --rulebook rulebooks/hello_events.yml -i inventory.yml

shell:
	docker run -it  quay.io/bthomass/eda-performance:latest /bin/bash

push:
	docker push quay.io/bthomass/eda-performance:latest
