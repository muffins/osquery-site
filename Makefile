all: serve

deps:
	yarn install

build-docker: deps
	docker build -t site .

serve: build-docker
	docker run -it --rm -p 8080:80 site
