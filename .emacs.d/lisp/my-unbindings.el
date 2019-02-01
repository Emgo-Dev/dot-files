; Key-Unbindings ;
; Serves as a keymap & toggle for unbinding defaults. Unbinding is preferable to rebinding commands to avoid conflicts of commands sharing keys within same contexts.

;; "Shared" Mode Hooks ;;
;(global-unbindkey "q"); quit-window
;(global-unbindkey "h"); describe-mode, dired-mode-map, help-mode-map
;; Shared Mode Hooks (End) ;;

;; Dired Mode Hooks ;;
;(hook-unbindkey 'dired-mode-hook "~"); dired-flag-backup-files
;(hook-unbindkey 'dired-mode-hook "#"); dired-flag-auto-save-files
(hook-unbindkey 'dired-mode-hook "$"); dired-hide-subdir
(hook-unbindkey 'dired-mode-hook "^"); dired-up-directory
(hook-unbindkey 'dired-mode-hook "&"); dired-do-asynch-shell-command
(hook-unbindkey 'dired-mode-hook "("); dired-hide-details-mode
;(hook-unbindkey 'dired-mode-hook "+"); dired-create-directory
;(hook-unbindkey 'dired-mode-hook "="); dired-diff
(hook-unbindkey 'dired-mode-hook "w"); dired-copy-filename-as-kill
(hook-unbindkey 'dired-mode-hook "e"); dired-find-file
(hook-unbindkey 'dired-mode-hook "t"); dired-toggle-marks
(hook-unbindkey 'dired-mode-hook "y"); dired-show-file-type
(hook-unbindkey 'dired-mode-hook "u"); dired-unmark
(hook-unbindkey 'dired-mode-hook "o"); dired-find-file-other-window
(hook-unbindkey 'dired-mode-hook "C-o"); dired-display-file
(hook-unbindkey 'dired-mode-hook "p"); dired-previous-line
(hook-unbindkey 'dired-mode-hook "a"); dired-find-alternate-file
;(hook-unbindkey 'dired-mode-hook "s"); dired-mark
(hook-unbindkey 'dired-mode-hook "S"); dired-do-symlink
(hook-unbindkey 'dired-mode-hook "v"); dired-view-file
(hook-unbindkey 'dired-mode-hook "<"); dired-prev-dirline
(hook-unbindkey 'dired-mode-hook ">"); dired-next-dirline
(hook-unbindkey 'dired-mode-hook "."); dired-clean-directory
;(hook-unbindkey 'dired-mode-hook "?"); dired-summary
;; Dired Mode Hooks (End) ;;

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
(hook-unbindkey 'minibuffer-local-must-match-mode-map "C-j")
;; Minibuffer Mode Hooks (End) ;;
; Key-Unbindings (End) ;
