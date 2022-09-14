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

After those then is all the regular tex file in this directory. The rest
of things in `lib` are just for legacy reasons and/or to compare with
future changes in ACM and USENIX templates.


## Versions of the ACM and USENIX templates

The ACM tempalte comes from samples/samplex-sigconf in [LaTeX (Version
1.63a)](https://www.acm.org/publications/proceedings-template) (last
update August 6, 2019). Note that the ACM doesn't allow changes to the
fonts and margins at all.

The USENIX version comes from the [official USENIX latex
template](https://www.usenix.org/conferences/author-resources/paper-templates).


## Important notes about `latexrun`

The official `latexrun` is not accepting PR for years, the `latexrun` script in
the repo includes two major patches


### [Issue: `latexrun` doesn't work with biber or biblatex properly](https://github.com/aclements/latexrun/issues/36)

[Patch](https://github.com/aclements/latexrun/pull/55)


### [Issue: produced pdf file and the pdf file in `latex.out` are out of sync](https://github.com/aclements/latexrun/issues/35)

[Patch](https://github.com/eisoku9618/kuroiwa_demos/pull/105/files)




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
