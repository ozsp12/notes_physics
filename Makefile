SHELL := /bin/bash
NOTES := $(shell find notes -type f -name main.tex 2>/dev/null)

.PHONY: all clean list

all:
	@if [ -z "$(NOTES)" ]; then \
		echo "No notes/main.tex files found."; \
	else \
		set -e; \
		for file in $(NOTES); do \
			dir=$$(dirname "$$file"); \
			base=$$(basename "$$file"); \
			echo "Compiling $$file"; \
			(cd "$$dir" && latexmk -pdf -interaction=nonstopmode -halt-on-error "$$base"); \
		done; \
	fi

clean:
	@for file in $(NOTES); do \
		dir=$$(dirname "$$file"); \
		base=$$(basename "$$file"); \
		(cd "$$dir" && latexmk -C "$$base"); \
	done

list:
	@printf '%s\n' $(NOTES)
