;; -*- lexical-binding: t; -*-

(TeX-add-style-hook
 "articleEnFa"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("comment" "") ("whenenv" "") ("hevea" "") ("amssymb" "") ("fontspec" "") ("float" "") ("morefloats" "") ("rcs" "") ("makeidx" "") ("supertabular" "") ("lscape" "") ("array" "") ("framed" "") ("listings" "") ("color" "") ("hyperref" "") ("url" "") ("fancyhdr" "") ("caption" "") ("bystarsub3section" "") ("bystarlisting" "") ("xunicode" "") ("paracol" "") ("qrcode" "") ("censor" "") ("ragged2e" "") ("fontawesome5" "") ("changepage" "") ("morewrites" "") ("tcolorbox" "") ("layouts" "") ("geometry" "") ("appendix" "toc" "page") ("imakeidx" "") ("glossaries" "toc") ("bidi" "") ("bystarpersian" "") ("bystararticle" "") ("bystarcolors" "")))
   (add-to-list 'LaTeX-verbatim-environments-local "lstlisting")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "lstinline")
   (TeX-run-style-hooks
    "latex2e"
    "./bodyArticleEnFa"
    "article"
    "art10"
    "comment"
    "whenenv"
    "hevea"
    "amssymb"
    "fontspec"
    "float"
    "morefloats"
    "rcs"
    "makeidx"
    "supertabular"
    "lscape"
    "array"
    "framed"
    "listings"
    "color"
    "hyperref"
    "url"
    "fancyhdr"
    "caption"
    "bystarsub3section"
    "bystarlisting"
    "xunicode"
    "paracol"
    "qrcode"
    "censor"
    "ragged2e"
    "fontawesome5"
    "changepage"
    "morewrites"
    "tcolorbox"
    "layouts"
    "geometry"
    "appendix"
    "imakeidx"
    "glossaries"
    "bidi"
    "bystarpersian"
    "bystararticle"
    "bystarcolors")
   (LaTeX-add-environments
    "bidiSepBeforeHevea"
    "bidiSepAfterHevea")
   (LaTeX-add-bibliographies
    "/usr/local/lib/bib/rfcs"
    "/usr/local/lib/bib/networking"
    "/lcnt/BIB/plpcUrl"
    "/lcnt/BIB/rfcs"
    "/lcnt/BIB/bxsup"
    "/lcnt/BIB/networking")
   (LaTeX-add-comment-incl-excls
    '("whenOrg" "exclude")
    '("PLPC-580003" "include")
    '("whenDocIsComplete" "include")
    '("whenMailing" "exclude")
    '("whenDocIsPartial" "exclude")
    '("ignore" "exclude")
    '("whenBibProviderIsBibtex" "include")
    '("whenBibProviderIsBiblatex" "exclude")))
 :latex)

