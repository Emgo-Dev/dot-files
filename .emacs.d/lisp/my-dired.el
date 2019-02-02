; Startup Settings (Dired) ;
;; Dired File Sorting ;;
(setq dired-listing-switches "-aBhl --group-directories-first")
;; Dired File Sorting (End) ;;

;; Key Unbindings ;;
;(unbind-key "~" dired-mode-map); dired-flag-backup-files
;(unbind-key "#" dired-mode-map); dired-flag-auto-save-files
(unbind-key "$" dired-mode-map); dired-hide-subdir
(unbind-key "^" dired-mode-map); dired-up-directory
(unbind-key "&" dired-mode-map); dired-do-asynch-shell-command
(unbind-key "(" dired-mode-map); dired-hide-details-mode
;(unbind-key "+" dired-mode-map); dired-create-directory
;(unbind-key "=" dired-mode-map); dired-diff
(unbind-key "w" dired-mode-map); dired-copy-filename-as-kill
(unbind-key "e" dired-mode-map); dired-find-file
(unbind-key "t" dired-mode-map); dired-toggle-marks
(unbind-key "y" dired-mode-map); dired-show-file-type
(unbind-key "u" dired-mode-map); dired-unmark
(unbind-key "o" dired-mode-map); dired-find-file-other-window
(unbind-key "C-o" dired-mode-map); dired-display-file
(unbind-key "p" dired-mode-map); dired-previous-line
(unbind-key "a" dired-mode-map); dired-find-alternate-file
;(unbind-key "s" dired-mode-map); dired-mark
(unbind-key "S" dired-mode-map); dired-do-symlink
(unbind-key "f" dired-mode-map); remove default dired-find-file
(unbind-key "x" dired-mode-map)
(unbind-key "v" dired-mode-map); dired-view-file
(unbind-key "<" dired-mode-map); dired-prev-dirline
(unbind-key ">" dired-mode-map); dired-next-dirline
(unbind-key "." dired-mode-map); dired-clean-directory
;(unbind-key "?" dired-mode-map); dired-summary
;; Key Unbindings (End) ;;

;; Key Bindings ;;
(bind-keys :map dired-mode-map
  ("r" . dired-do-rename)
  ("C-<return>" . dired-find-file-other-window)
  ("i" . dired-previous-line)
  ("<C-i>" . dired-prev-subdir)
  ("s" . dired-mark)
  ("C-S-s" . dired-toggle-marks)
  ("C-s" . dired-unmark-all-marks)
  ("d" . dired-flag-file-deletion)
  ("C-d" . dired-do-flagged-delete)
  ("M-d" . dired-unmark)
  ("C-f r" . dired-do-rename)
  ("C-f o" . dired-do-chown)
  ("C-f f" . dired-create-directory)
  ("C-f m" . dired-do-chmod)
  ("g" . dired-goto-file)
  ;("j" . dired-up-directory)
  ;bind anonymous function (find-altenate-file) to look up a directory while in dired-mode
  ("j" . (lambda () (interactive) (find-alternate-file "..")))
  ;("C-j" . dired-up-directory)
  ("C-j" . dired-tree-up)
  ("M-j" . dired-kill-subdir)
  ;("k" . dired-find-file)
  ;ired-find-alternate-file recycles current buffer with chosen file in dired-mode
  ("k" . dired-find-alternate-file)
  ;("C-k" . dired-find-file)
  ("C-k" . dired-tree-down)
  ("M-k" . dired-insert-subdir)
  ("c" . dired-do-copy)
  ("n" . dired-next-line)
  ("C-n" . dired-next-subdir))
(put 'dired-find-alternate-file 'disabled nil)
;; Key Bindings (End) ;;
; Startup Settings (Dired) (End) ;
