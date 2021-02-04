.PHONY: all clean distclean clean-tarballs

all:
	@$(MAKE) -C emu-30 all

clean:
	@$(MAKE) -C emu-30 clean

distclean:
	@$(MAKE) -C emu-30 distclean

clean-tarballs:
	@$(MAKE) -C emu-30 clean-tarballs
