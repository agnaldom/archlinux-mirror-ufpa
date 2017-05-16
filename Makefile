run: build
	docker run -d \
	-e VIRTUAL_HOST=archlinux.mirror.ufpa.br \
	--restart=always \
	-v /mirror/archlinux:/archlinux_mirror \
	ctic/archlinux-mirror

build:
	docker build -t ctic/archlinux-mirror .

