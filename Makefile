.PHONY: all clean distclean

all:
	@${MAKE} -C emu-30 all

clean:
	@${MAKE} -C emu-30 clean

distclean:
	@${MAKE} -C emu-30 distclean
