.PHONY: install all

all:

install:
	# Create folders
	install -dm755 "$(DESTDIR)/etc/udev/rules.d/"
	install -dm755 "$(DESTDIR)/etc/systemd/system/"

	# Copy files
	install -m644 '99-bluetooth-btattach.rules'		"$(DESTDIR)/etc/udev/rules.d/"
	install -m644 'btattach@.service'              	"$(DESTDIR)/etc/systemd/system/"
