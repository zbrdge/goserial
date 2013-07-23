include $(GOROOT)/src/Make.inc

TARG=github.com/tarm/goserial

ifeq ($(GOOS),windows)
GOFILES=serial_$(GOOS).go
else
CGOFILES=serial_$(GOOS).go
endif
GOFILES+=serial.go

include $(GOROOT)/src/Make.pkg
