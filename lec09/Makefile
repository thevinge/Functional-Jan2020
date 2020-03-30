lec09:
	ocamlbuild -use-ocamlfind -package qcheck lec09.byte
	ocamlbuild -use-ocamlfind -package qcheck lec09.cma

stmtlang:
	ocamlbuild -use-ocamlfind -package qcheck stmtlang.byte
	ocamlbuild -use-ocamlfind -package qcheck stmtlang.cma

clean:
	rm -f tmp.bc output.txt
	ocamlbuild -clean

