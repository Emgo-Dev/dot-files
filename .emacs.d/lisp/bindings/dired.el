; Key Unbindings ;
(bind-key dired-mode-map "~" nil)
(bind-key dired-mode-map "#" nil)
(bind-key dired-mode-map "$" nil)
(bind-key dired-mode-map "^" nil)
(bind-key dired-mode-map "&" nil)
(bind-key dired-mode-map "(" nil)
(bind-key dired-mode-map "+" nil)
(bind-key dired-mode-map "=" nil)
(bind-key dired-mode-map "w" nil)
(bind-key dired-mode-map "e" nil)
(bind-key dired-mode-map "t" nil)
(bind-key dired-mode-map "y" nil)
(bind-key dired-mode-map "u" nil)
(bind-key dired-mode-map "o" nil)
(bind-key dired-mode-map "C-o" nil)
(bind-key dired-mode-map "p" nil)
(bind-key dired-mode-map "a" nil)
(bind-key dired-mode-map "s" nil)
(bind-key dired-mode-map "S" nil)
(bind-key dired-mode-map "f" nil)
(bind-key dired-mode-map "x" nil)
(bind-key dired-mode-map "v" nil)
(bind-key dired-mode-map "<" nil)
(bind-key dired-mode-map ">" nil)
(bind-key dired-mode-map "." nil)
(bind-key dired-mode-map "?" nil)
; Key Unbindings (End) ;

; Key Bindings ;
(bind-key dired-mode-map "r" 'dired-do-rename)
(bind-key dired-mode-map "<return>" 'dired-mark)
(bind-key dired-mode-map "C-<return>" 'dired-toggle-marks)
(bind-key dired-mode-map "u" 'dired-unmark)
(bind-key dired-mode-map "C-u" 'dired-unmark-all-marks)
(bind-key dired-mode-map "i" 'dired-previous-line)
(bind-key dired-mode-map "<C-i>" 'dired-prev-subdir)
(bind-key dired-mode-map "o" 'dired-find-file)
(bind-key dired-mode-map "C-o" 'dired-find-file-other-window)
(bind-key dired-mode-map "d" 'dired-do-delete)
(bind-key dired-mode-map "C-f f" 'dired-create-directory)
(bind-key dired-mode-map "g" 'dired-goto-file)
(bind-key dired-mode-map "j" '(lambda () (interactive) (find-alternate-file "..")))
(bind-key dired-mode-map "C-j" 'dired-tree-up)
(bind-key dired-mode-map "M-j" 'dired-kill-subdir)
;dired-find-alternate-file recycles current buffer with chosen file in dired-mode
(bind-key dired-mode-map "k" 'dired-find-alternate-file)
(bind-key dired-mode-map "C-k" 'dired-tree-down)
(bind-key dired-mode-map "M-k" 'dired-insert-subdir)
(bind-key dired-mode-map "c" 'dired-do-copy)
(bind-key dired-mode-map "n" 'dired-next-line)
(bind-key dired-mode-map "C-n" 'dired-next-subdir)
(bind-key dired-mode-map "<C-m> o" 'dired-do-chown)
(bind-key dired-mode-map "<C-m> p" 'dired-do-chmod)
; Key Bindings (End) ;
