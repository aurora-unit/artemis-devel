VOLUMES = $(addprefix volumes/,$(addsuffix _data,$(NAMES)))
MKDIR_P = mkdir -p
NAMES = postgres minio


.PHONY: devel volumes


devel: volumes
	docker-compose --project-name $@ --file ./docker-compose.yaml up


volumes: $(VOLUMES)

$(VOLUMES):
	$(MKDIR_P) $@
