# Devcontainer Makefile.

remote-debug:						## Attache Delve to `main`
	dlv --listen=:2345 --headless=true --api-version=2 --accept-multiclient attach $$(pgrep main)
