# Linux HMCL Launcher

USER = $(shell whoami)

all: hmcl.c
	gcc $< -o hmcl

.PHONY: install
install: hmcl
	-sudo mkdir /opt/hmcl
	sudo chown -R ${USER}:${USER} /opt/hmcl
	sudo cp ./icon.png /opt/hmcl/
	sudo cp ./HMCL.jar /opt/hmcl/
	sudo cp ./hmcl /bin/
	sudo cp ./linux-hmcl-launcher.desktop /usr/share/applications/

.PHONY: remove
remove:
	sudo rm -r /opt/hmcl
	sudo rm ./hmcl
	sudo rm /bin/hmcl
	sudo rm /usr/share/applications/linux-hmcl-launcher.desktop
