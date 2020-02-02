all: etc/workspaces/lsb-release etc/workspaces/os-release

etc/workspaces/lsb-release: src/lsb-release.sh
	bash $< > $@

etc/workspaces/os-release: src/os-release.sh
	bash $< > $@

clean:
	rm -f etc/workspaces/lsb-release etc/workspaces/os-release
