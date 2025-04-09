SRCS = HAT.A65 HATBOU.A65 HATENM.A65 HATMAP.A65 HATMOV.A65 HATMUS.A65 HATTIL.A65 HMAIN.A65 NINPOU.A65 RECHAT.A65 HTBGM.SCR HTBONUS.SCR HTCAT.SCR HTCLEAR.SCR HTCOMP.SCR HTFIRE.SCR HTOVER.SCR HTTOJO.SCR HTWARP.SCR
TARGET = hat.nes

$(TARGET): hat.o
	ld65 -o hat.nes -C hat.cfg hat.o -m hat.map -Ln hat.sym --dbgfile hat.dbg

hat.o: $(SRCS)
	ca65 -i -v -o hat.o HAT.A65

.PHONY: clean
clean:
	rm -f hat.nes hat.o hat.map hat.sym hat.dbg
