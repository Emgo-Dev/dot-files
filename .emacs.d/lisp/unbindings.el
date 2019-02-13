; Key-Unbindings ;
; Serves as a keymap & toggle for unbinding defaults. Unbinding is preferable to rebinding commands to avoid conflicts of commands sharing keys within same contexts.

;; "Shared" Mode Hooks ;;
;(global-unbindkey "q")
;(global-unbindkey "h")
;; Shared Mode Hooks (End) ;;

;; Magit Mode Hooks ;;
;(hook-unbindkey 'magit-status-mode-hook "q"); magit-mode-bury-buffer
;(hook-unbindkey 'magit-status-mode-hook "w"); magit-am-popup
;(hook-unbindkey 'magit-status-mode-hook "C-w"); magit-copy-section-value
;(hook-unbindkey 'magit-status-mode-hook "e"); magit-ediff-dwim
;(hook-unbindkey 'magit-status-mode-hook "r"); magit-rebase-popup
;(hook-unbindkey 'magit-status-mode-hook "t"); magit-tag-popup
;(hook-unbindkey 'magit-status-mode-hook "y"); magit-show-refs-popup
;(hook-unbindkey 'magit-status-mode-hook "u"); magit-unstage
;(hook-unbindkey 'magit-status-mode-hook "o"); magit-submodule-popup
;(hook-unbindkey 'magit-status-mode-hook "a"); magit-apply
;(hook-unbindkey 'magit-status-mode-hook "s"); magit-stage
;(hook-unbindkey 'magit-status-mode-hook "d"); magit-diff-popup
;(hook-unbindkey 'magit-status-mode-hook "f"); magit-fetch-popup
;(hook-unbindkey 'magit-status-mode-hook "g"); magit-refresh
;(hook-unbindkey 'magit-status-mode-hook "h"); magit-dispatch-popup
;(hook-unbindkey 'magit-status-mode-hook "l"); magit-log-popup
;(hook-unbindkey 'magit-status-mode-hook "z"); magit-stash-popup
;(hook-unbindkey 'magit-status-mode-hook "x"); magit-reset-quickly
;(hook-unbindkey 'magit-status-mode-hook "c"); magit-commit-popup
;(hook-unbindkey 'magit-status-mode-hook "v"); magit-reverse
;(hook-unbindkey 'magit-status-mode-hook "b"); magit-branch-popup
;(hook-unbindkey 'magit-status-mode-hook "m"); magit-merge-popup
;; Magit Mode Hooks (End) ;;

;; Minibuffer Mode Hooks ;;
;(add-hook minibuffer-local-must-match-mode-map (lambda nil nil nil (unbind-key-local "C-j")))
;; Minibuffer Mode Hooks (End) ;;
; Key-Unbindings (End) ;
