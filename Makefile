#ITY proj3 makefile
#Martina Zlevorova (xzlevo00)
#============================
login=xzlevo00
file=proj3
#----------------------------
in_file = $(file).tex
dvi_file = $(file).dvi
ps_file = $(file).ps
pack_file = $(login).zip
#----------------------------
build:
	latex $(in_file)
	latex $(in_file)
	dvips -t a4 $(dvi_file)
	ps2pdf $(ps_file)
pack: cl build
	zip $(login) $(in_file) Makefile
cl:
	rm -fr $(pack_file)
clean:
	rm $(file).aux
	rm $(dvi_file)
	rm $(file).log
	rm $(file).out
	rm $(ps_file)
