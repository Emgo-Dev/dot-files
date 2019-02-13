; Menu Bar ;
; Turn off frame menu bar.
(add-hook 'after-init-hook (lambda ()
  (menu-bar-mode 0)
  (tool-bar-mode 0)))
; Menu Bar (End) ;

; Next/Previous Line Command Pointer Position ;
; Cause pointer to maintain horizontal position upon
; next/previous line commands
(put 'set-goal-column 'disabled nil)
; Next/Previous Line Command Pointer Position (End) ;

; Load Emacs Theme ;
(load-theme 'misterioso)
(load-theme 'whiteboard)
(load-theme 'deeper-blue)
; Load Emacs Theme (End) ;

; Indentation ;
; Turn off tab indentation
(setq-default indent-tabs-mode nil)
; Set indentation depth of minor modes.
; Aggressive indent package uses these for its' behavior.
(setq-default tab-width 2)
(setq-default css-indent-offset 2)
(setq-default js-indent-level 2)
(setq-default lisp-indent-offset 2)
(setq-default sgml-basic-offset 2);also applies to html
; Indentation (End) ;

; Electric Indent Mode ;
; Turn off native indentation.
(add-hook 'after-init-hook (lambda () (electric-indent-mode 0)))
; Turn on native indentation.
;(add-hook 'after-init-hook (lambda () (electric-indent-mode 1)))
; Electric Indent Mode (End) ;

; Dired File Sorting ;
(setq dired-listing-switches "-aBhpl --group-directories-first")
; Dired File Sorting (End) ;

; Unknown Dired Setting ;
(put 'dired-find-alternate-file 'disabled nil)
; Unknown Dired Setting (End) ;
