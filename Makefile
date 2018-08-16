# Makefile for
all: usage

EDITOR=vim

usage:
	@echo ""
	@echo "usage: make [edit|run|git]"
	@echo ""

# ---------------------------------------------------------------------------
edit e:
	@echo ""
	@echo "make (edit) [readme|make]"
	@echo ""

edit-readme er:
	$(EDITOR) README.md

edit-make em:
	$(EDITOR) Makefile

# ---------------------------------------------------------------------------
run r:

# ---------------------------------------------------------------------------
git g:
	@echo ""
	@echo "make (git) [update|status]"
	@echo ""

git-update gu:
	git add README.md Makefile tendermint/ avalanche/
	git commit -m "Now get started to research about consensus"
	#git commit -m "add goroot function changing go version to use"
	#git push -u https://sikang99:----@github.com/sikang99/go-funcs
	git push

git-status gs:
	git status
	git log --oneline -5

# ---------------------------------------------------------------------------
