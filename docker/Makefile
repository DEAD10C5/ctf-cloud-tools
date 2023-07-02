CLOCAL_AMFLAGS = -I config/m4 -I aclocal
ACLOCAL_AMFLAGS = -I config/m4 -I aclocal

#.check-env-vars:
#        @test $${CR_PAT?Push will fail. You need to export the CR_PAT token for GHCR}

# build: .check-env-vars
build: 
	docker-compose build only-feet-cloud-ctf-tools
	@echo "Tagging image:  $(shell docker images -q | head -1)"
	docker tag $(shell docker images -q | head -1) ghcr.io/devsecfranklin/only-feet-cloud-ctf-tools:latest

push:
	docker push ghcr.io/devsecfranklin/only-feet-cloud-ctf-tools:latest

run: 
	docker run -it only-feet-cloud-ctf-tools ash -l
