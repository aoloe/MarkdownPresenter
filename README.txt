#command to produce a pdf:
#
#pandoc -o pipe_rmll_print.pdf pipe_rmll_print.md
#
#- it sitll misses the landscape
#- we should avoid to have the titles for the figures
#- how to get the → as utf8?
#- %s/^!$/\\newpage


cat pipe_rmll.md | sed 's/→/$\\rightarrow$/g' | sed 's/^!$/\\pagebreak/g' | pandoc -o pipe_rmll.pdf
