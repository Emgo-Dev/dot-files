; Load Emacs Theme ;
;(load-theme 'misterioso)
(load-theme 'deeper-blue)
; Load Emacs Theme (End) ;

; Startup Settings ;
;; Dired File Sorting ;;
(setq dired-listing-switches "-aBhl --group-directories-first")
;; Dired File Sorting (End) ;;

;; Electric Indent Mode ;;
; Toggle on-the-fly reindentation.
(add-hook 'after-init-hook (lambda () (electric-indent-mode 0)))
;; Electric Indent Mode (End) ;;

;; Menu Bar ;;
; Toggle display of a menu bar on each frame.
(add-hook 'after-init-hook (lambda () (menu-bar-mode 0)))
;; Menu Bar (End) ;;

;; Pointer Position on Next/Previous Line Command ;;
; Set the current horizontal position as a goal for next-line
; and previous-line commands. A non-nil value argument maintains
; the same pointer position.
(put 'set-goal-column 'disabled nil)
;; Pointer Position on Next/Previous Line Command (End) ;;

;; Indent Tabs Mode ;;
; indent-tabs-mode is a variable defined in 'C-source'. A non-nill
; value will allow indentation to insert tabs.
; setq-default defines the default value of a variable globally
; across any local buffers.
(setq-default indent-tabs-mode nil)
;; Indent Tabs Mode (End) ;;
; Startup Settings (End) ;
