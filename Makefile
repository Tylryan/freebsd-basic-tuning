

dev: setup
	mypy setup && ./setup
	
all:
	make system
	make i3
	
# doas make system
system:
	doas ./setup
	
i3:
	./setup
	
