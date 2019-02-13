;load: loads a file from EmacsLisp.
;searches directories listed in users 'load-path' variable.
;if file path not in 'load-path', absolute path to file must be given, otherwise just expected file name.
;require: loads a file only if it hasn't been loaded already.

; Add Paths
(add-to-list 'load-path "~/.emacs.d/lisp/")

; General
(load "settings")
(load "packages")
(load "functions")
(load "unbindings")

; Mode-specific Key Bindings ;
(load "bindings/global")
(load "bindings/dired")
(load "bindings/buffer")
(load "bindings/info")
(load "bindings/html")
(load "bindings/js")
; Mode-specific Key Bindings (End) ;

; Mode-specific Snippets ;
; Mode-specific Snippets (End) ;
