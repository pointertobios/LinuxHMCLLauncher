# Linux HMCL Launcher

all: hmcl.c
	gcc $< -o hmcl

.PHONY: install
install: hmcl
	-mkdir /opt/hmcl
	cp ./icon.png /opt/hmcl/
	cp ./HMCL.jar /opt/hmcl/
	cp ./hmcl /bin/
	cp ./linux-hmcl-launcher.desktop /usr/share/applications/

.PHONY: remove
remove:
	rm -r /opt/hmcl
	rm ./hmcl
	rm /bin/hmcl
	rm /usr/share/applications/linux-hmcl-launcher.desktop
