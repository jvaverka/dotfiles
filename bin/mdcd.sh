#!/usr/bin/bash
# mkdir and cd in one command
mdcd() {
	mkdir -p -- "$1" &&
	cd -P -- "$1" || return
}
