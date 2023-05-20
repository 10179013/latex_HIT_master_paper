# vim: set ft=perl:
@default_files = ('main.tex');

$pdf_mode = 1;
$bibtex_use = 2;
$recorder = 1;
$preview_continuous_mode = 1;
$clean_ext = "synctex.gz acn acr alg aux bbl bcf blg brf fdb_latexmk glg glo gls idx ilg ind lof log lot out run.xml toc pdf thm toe ist idx";
$pdflatex = "xelatex -file-line-error --shell-escape -src-specials -synctex=1 -interaction=nonstopmode %O %S;cp %D %R.pdf";
$pdf_update_method = 0;

@cus_dep_list = (@cus_dep_list, "idx ind 0 makenomenclature");
sub makenomenclature {
   system("splitindex $_[0] -- -s $_[0].ist"); }
@generated_exts = (@generated_exts, 'glo');

