#!/bin/bash

cat pipe_rmll.md | sed 's/→/$\\rightarrow$/g' | sed 's/^!$/\\pagebreak/g' | sed 's/!\[.*\]/![]/' | pandoc -o pipe_rmll.pdf -H md.sty
