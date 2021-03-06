EXE_NAME := dups
EXE_TYPE := native

.PHONY: all build clean

all:
	@$(MAKE) -s clean
	@$(MAKE) -s build

build:
	@ocamlbuild -cflags '-w A' -pkgs 'str,unix' $(EXE_NAME).$(EXE_TYPE)
	@cp _build/$(EXE_NAME).$(EXE_TYPE) $(EXE_NAME)
	@rm -f $(EXE_NAME).$(EXE_TYPE)

clean:
	@ocamlbuild -clean
	@rm -f $(EXE_NAME)
