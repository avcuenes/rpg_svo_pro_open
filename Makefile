## Clean up the build project
.PHONY : clean 
clean:
	rm -rf build/ install/ log/

.PHONY : docker_build
docker_build:
	docker build -t svo .

.PHONY : docker_run
docker_run:
	docker run -it svo