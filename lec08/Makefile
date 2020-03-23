aexp:
	ocamlbuild -use-ocamlfind -package qcheck,ppx_deriving.show,bisect_ppx aexp.native
	BISECT_COVERAGE=YES ./aexp.native
	bisect-ppx-report -I _build/ -html coverage/ bisect0001.out

fac:
	ocamlbuild -use-ocamlfind -package bisect_ppx fac.native
	BISECT_COVERAGE=YES ./fac.native
	bisect-ppx-report -I _build/ -html coverage/ bisect0001.out

clean:
	ocamlbuild -clean
	rm -f tmp.c tmp tmp.stdout tmp.stderr bisect000*.out
