SM2-TES: Functional Programming and Property-Based Testing
==========================================================

This repository is a placeholder for example code from the course
'SM2-TES: Functional Programming and Property-Based Testing'
held at the University of Southern Denmark, Spring 2020.


Useful resources
----------------

[OCaml standard library](http://caml.inria.fr/pub/docs/manual-ocaml/libref/)

[QCheck documentation](http://c-cube.github.io/qcheck/0.9/qcheck/)


Installation instructions:
==========================

You need to install
 - OCaml and the qcheck library (use OCaml's package manager OPAM for this)
 - an editor (VS Code) to program/edit OCaml code.

These instructions are adapted from [Scott F. Smith's instructions](http://pl.cs.jhu.edu/pl/ocaml/index.shtml).


For Linux and Mac:
------------------
See [The OPAM install page](https://opam.ocaml.org/doc/Install.html) for
instructions. Depending on which method you use you may then need to
run some terminal commands to set up the basics: 

 1. `opam init`                   to initialize OPAM;
 2. `opam switch create 4.09.0`       to build OCaml version 4.09.0;
 3. ```
     eval `opam env`
    ```
    to let the shell know where the OPAM files are; and
 4. also add the same line to your `.profile/.bashrc` shell init file
    so you will not have to keep doing that over and over.  

Once you have the basics installed, run the following command to
install additional necessary packages for the class: 

```
  opam install qcheck ocamlfind ledit ocamlbuild merlin ocp-indent user-setup utop
```

If you are missing dependencies (m4, make, gcc), they can easily be installed
with `apt-get` (Ubuntu Linux and Ubuntu Sub-system) or via macports/homebrew (Mac). 

To avoid a dependency on `bubblewrap` you may have luck with:
```
    opam init --disable-sandboxing
```



For Windows:
------------

On Windows 10:
  Install  MSFT Bash on Windows mode https://docs.microsoft.com/en-us/windows/wsl/about
  which once you have set up will allow you to follow the Linux Ubuntu
  install instructions to get opam. (Windows 10 only for this
  unfortunately and it may have some incompatibilities.

For older Windows versions:
  - Install a virtual machine with Linux [as explained here](http://pl.cs.jhu.edu/pl/ocaml/index.shtml)
    and install OCaml on that or
  - Try this installer: https://fdopen.github.io/opam-repository-mingw/installation/
  - Last resort: call Jan


Checking your OCaml and QCheck installation:
--------------------------------------------

To ensure that OCaml and QCheck is properly installed:

1. check that you can use the arrow keys and backspace in the OCaml
   toplevel if you run the command
     `utop` or
     `ledit ocaml` (Linux and MacOS) or
     `rlwrap ocaml` (Windows)
   (you don't need ledit or rlwrap as a console inside VS Code it seems)

2. check that in the utop toplevel
  ```
    #list;;
  ```
   lists package `qcheck` (version: 0.5 or above)   (not 0.2, 0.3, or 0.4)

   For the `ocaml` toplevel you need to write two lines:
  ```
    #use "topfind";;
    #list;;
  ```

3. check that you can run QCheck from the toplevel following [this screencast](https://asciinema.org/a/226227)
   and from utop with [this screencast](https://asciinema.org/a/226259)

4. check that you can build a QCheck test with ocamlbuild
   following [this screencast](https://asciinema.org/a/226228)

   the code for the latter is also available here: https://github.com/jmid/qcheck-example



Installing VS Code:
-------------------

- Install VS Code https://code.visualstudio.com/

- Install the 'OCaml and Reason IDE' extension to get syntax
  highlighting, type information, etc: from the 'View' menu select
  'Extensions, then type in OCaml and this extension will show up;
  install it. You can also easily run an ocaml shell from within
  VSCode, just open it up from the 'Terminal' menu and type `ocaml` or
  `utop` into the terminal.


On Windows to get VS Code to communicate type-feedback with the
'merlin'-server running under the Linux sub-system you need to: go to
'Settings' and search for `reason.path.ocaml`
- change the `ocamlfind` entry to read `bash -ic ocamlfind`
- change the `ocamlmerlin` entry to read `bash -ic ocamlmerlin`

Enabling a `bash` Terminal rather than a 'Powershell' will also let
you run `ocaml` or `utop` from within VS Code.
