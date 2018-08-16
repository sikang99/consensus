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
	git add README.md Makefile *
	git commit -m "Now get started to research about consensus"
	git config credential.helper store
	git push

git-status gs:
	git status
	git log --oneline -5

# ---------------------------------------------------------------------------
