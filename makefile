serial_port = /dev/ttyACM0

upload:
	sudo arduino-cli compile -u -b arduino:avr:uno -p $(serial_port) ./

compile:
	sudo arduino-cli compile -b arduino:avr:uno -p $(serial_port) ./

list:
	sudo arduino-cli board list

monitor:
	alacritty -e sudo screen $(serial_port) 9600

