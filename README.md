# silver-bullet

I am getting tired and sick of setting up paper template again and again so here is the silver bullet.


## Design

For USENIX template, the things you should take a look at are:
* `lib/usenix/prelude.tex`
* `lib/usenix/usenix2019_v3.sty`

For ACM template, they are:
* `lib/acm/prelude.tex`
* `lib/acm/acmart.cls`
* `lib/acm/ACM-Reference-Format.bst`
* `acmart-preload-hook.tex`

After those then is all the regular tex file in this directory. The rest
of things in `lib` are just for legacy reasons and/or to compare with
future changes in ACM and USENIX templates.


## FAQ

* Why use [latexrun](https://github.com/aclements/latexrun)?

There are many things that are not very nice in LaTeX, such as the
poor displaying error and warning messages, not able to keep track of
missing citations, and the requirment to run pdflatex several times to
get the pdf stable. `latexrun` is much easier to work with.

* Why not just use `latexrun`?

Although `latexrun` improved the experience of using LaTeX in many
ways, there are still things that it doesn't support yet--for example
biber and biblatex etc.


## Similar project

[paper_skel](https://github.com/efficient/paper_skel) from Dave
Anderson.
