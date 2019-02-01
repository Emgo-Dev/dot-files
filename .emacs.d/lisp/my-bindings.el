; Key Bindings ;
; When typing a prefix command, type '?' to open buffer with
; available commands of that prefix.

;;;; Misc Keys
;(global-unset-key [?\C-@])
(global-set-key [?\C- ] 'space-times-2)
;(bind-key "<SPC>" 'space-times-2)
;(global-unbindkey "<ESC>"); prefix-command
;(global-unbindkey "<insert>"); overwrite-mode
;(global-unbindkey "<deletechar>"); overwrite-mode
;(global-unbindkey "<home>"); move-beginning-of-line
;(global-unbindkey "<end>"); move-end-of-line
;(global-unbindkey "<prior>"); scroll-down-command
;(global-unbindkey "<next>"); scroll-up-command
;(global-unset-key [tab])
(global-unbindkey "<tab>")
;(global-unbindkey "<SPC>");
(hook-bindkey 'dired-mode-hook "C-<return>" 'dired-find-file-other-window)

;;;; Function Keys
(global-unbindkey "<f3>"); kmacro-start-macro-or-insert-counter
(global-unbindkey "<f4>"); kmacro-end-or-call-macro
(global-unbindkey "<f10>"); menu-bar-open
;(global-unbindkey "<f11>"); toggle-frame-fullscreen
(bind-key "<f12>" 'term)
(bind-key "C-<f12>" 'term-char-mode)
(bind-key "M-<f12>" 'term-line-mode)

;;;; Arrow Keys
(hook-bindkey 'Info-mode-hook "<up>" 'Info-up)
(hook-bindkey 'Info-mode-hook "<down>" 'Info-follow-nearest-node)
(hook-bindkey 'Info-mode-hook "<left>" 'Info-prev)
(hook-bindkey 'Info-mode-hook "<right>" 'Info-next)

;;;; Q
(global-unbindkey "C-q")
(bind-key "C-q s" 'save-buffers-kill-terminal)
(bind-key "C-q d" 'suspend-emacs)
(global-unbindkey "M-q"); fill-paragraph

;;;; W
(global-unbindkey "C-w")
(bind-key "C-w C-=" 'increase-text-size)
(bind-key "C-w C--" 'decrease-text-size)
(bind-key "C-w i" 'decrease-window-size)
(bind-key "C-w <C-i>" 'scroll-down-command)
(bind-key "C-w o" 'find-file)
(bind-key "C-w d" 'delete-window)
(bind-key "C-w f" 'ace-window)
(bind-key "C-w j" 'split-window-vertically)
(bind-key "C-w C-j" 'move-previous-window)
(bind-key "C-w k" 'split-window-horizontally)
(bind-key "C-w C-k" 'move-next-window)
(bind-key "C-w l" 'decrease-window-size-horizontally)
(bind-key "C-w ;" 'increase-window-size-horizontally)
(bind-key "C-w b" 'list-buffers)
(bind-key "C-w n" 'increase-window-size)
(bind-key "C-w C-n" 'scroll-up-command)
(global-unbindkey "M-w"); kill-ring-save

;;;; E
(global-unbindkey "C-e")
(bind-key "C-e r" 'rename-buffer)
(bind-key "C-e u" 'undo)
(bind-key "C-e o" 'switch-to-buffer)
(bind-key "C-e s" 'save-buffer)
(bind-key "C-e C-s" 'save-some-buffers)
(bind-key "C-e d" 'kill-buffer)
(hook-bindkey 'mini-local-must-match-mode-hook "C-e d" 'minibuffer-complete-and-exit)
(global-unbindkey "M-e"); forward-sentence

;;;; R
(hook-bindkey 'dired-mode-hook "r" 'dired-do-rename)
(global-unbindkey "M-r"); move-to-window-line-top-bottom

;;;; T
(global-unbindkey "C-t"); transpose-words
(bind-key "C-t i" 'newline)
(bind-key "C-t n" 'open-line)
(global-unbindkey "M-t"); transpose-words

;;;; Y
(global-unbindkey "C-y"); yank
(global-unbindkey "M-y"); yank-pop

;;;; U
(global-unbindkey "C-u"); universal-argument
(global-unbindkey "M-u"); upcase-word

;;;; I
; "C-i" returns "<tab>".
; To use real "C-i", use "<C-i>"
(hook-bindkey 'dired-mode-hook "i" 'dired-previous-line)
(hook-bindkey 'magit-status-mode-hook "i" 'magit-previous-line)
(new-key-wrapper input-decode-map [?\C-i] [C-i])
(new-key-wrapper input-decode-map [?\M-i] [M-i])
(new-key-wrapper input-decode-map [?\C-\M-i] [C-M-i])
(bind-key "<C-i>" 'previous-line)
(hook-bindkey 'custom-mode-hook "<C-i>" 'previous-line)
(hook-bindkey 'dired-mode-hook "<C-i>" 'dired-prev-subdir)
(hook-bindkey 'magit-status-mode-hook "<C-i>" 'magit-section-backward)
(bind-key "<M-i>" 'scroll-down-command)
(hook-bindkey 'doc-view-mode-hook "<M-i>" 'doc-view-previous-page)
(bind-key "<C-M-i>" 'beginning-of-buffer)
(hook-bindkey 'doc-view-mode-hook "<C-M-i>" 'doc-view-first-page)

;;;; O
(bind-key "C-o" 'recenter-top-bottom)
(global-unbindkey "M-o"); facemenu-set prefix command

;;;; P
(global-unbindkey "C-p"); recenter-top-bottom

;;;; [

;;;; ]

;;;; A
(bind-key "C-a" 'universal-argument)
(global-unbindkey "M-a"); backward-sentence

;;;; S
(hook-bindkey 'dired-mode-hook "s" 'dired-mark)
(hook-bindkey 'dired-mode-hook "C-S-s" 'dired-toggle-marks)
(bind-key "C-s" 'set-mark-command)
(hook-bindkey 'dired-mode-hook "C-s" 'dired-unmark-all-marks)

;;;; D
(hook-bindkey 'dired-mode-hook "d" 'dired-flag-file-deletion)
(hook-bindkey 'dired-mode-hook "C-d" 'dired-do-flagged-delete)
(global-unbindkey "M-d")
(bind-key "M-d" 'kill-region)
(hook-bindkey 'dired-mode-hook "M-d" 'dired-unmark)

;;;; F
(global-unbindkey "C-f")
(bind-key "C-f r" 'replace-string)
(bind-key "C-f t" 'isearch-forward)
(bind-key "C-f l" 'goto-line)
(hook-unbindkey 'dired-mode-hook "f"); remove default dired-find-file
(hook-bindkey 'dired-mode-hook "C-f r" 'dired-do-rename)
(hook-bindkey 'dired-mode-hook "C-f o" 'dired-do-chown)
(hook-bindkey 'dired-mode-hook "C-f f" 'dired-create-directory)
(hook-bindkey 'dired-mode-hook "C-f m" 'dired-do-chmod)
(hook-bindkey 'doc-view-mode-hook "C-f t" 'doc-view-search)
(hook-bindkey 'doc-view-mode-hook "C-f p" 'doc-view-goto-page)
(global-unbindkey "M-f"); forward-word

;;;; G
(hook-bindkey 'dired-mode-hook "g" 'dired-goto-file)

;;;; H
(global-unbindkey "C-h");
(global-unbindkey "M-h"); mark-paragraph

;;;; J
;(hook-bindkey 'dired-mode-hook "j" 'dired-up-directory)
; bind anonymous function (find-altenate-file) to look up a directory while in dired-mode
(hook-bindkey 'dired-mode-hook "j" (lambda () (interactive) (find-alternate-file "..")))
(global-unbindkey "C-j")
(bind-key "C-j" 'backward-char)
;(hook-bindkey 'dired-mode-hook "C-j" 'dired-up-directory)
(hook-bindkey 'dired-mode-hook "C-j" 'dired-tree-up)
(global-unbindkey "M-j")
(bind-key "M-j" 'backward-word)
(hook-bindkey 'dired-mode-hook "M-j" 'dired-kill-subdir)
(global-unbindkey "C-M-j")

;;;; K
;(hook-bindkey 'dired-mode-hook "k" 'dired-find-file)
; dired-find-alternate-file recycles current buffer with chosen file in dired-mode
(hook-bindkey 'dired-mode-hook "k" 'dired-find-alternate-file)
(hook-bindkey 'magit-status-mode-hook "k" 'magit-section-toggle)
(global-unbindkey "C-k")
(bind-key "C-k" 'forward-char)
;(hook-bindkey 'dired-mode-hook "C-k" 'dired-find-file)
(hook-bindkey 'dired-mode-hook "C-k" 'dired-tree-down)
(global-unbindkey "M-k")
(global-unbindkey "C-M-k")
(bind-key "M-k" 'forward-word)
(hook-bindkey 'dired-mode-hook "M-k" 'dired-insert-subdir)

;;;; L
(global-unbindkey "C-l")
(bind-key "C-l" 'move-beginning-of-line)
(global-unbindkey "M-l")
(bind-key "M-l" 'backward-sentence)

;;;; ;
(global-unbindkey "C-;")
(bind-key "C-;" 'move-end-of-line)
(global-unbindkey "M-;")
(bind-key "M-;" 'forward-sentence)

;;;; Z
(global-unbindkey "C-z"); Prefix Command
(global-unbindkey "M-z"); zap-to-char

;;;; X
(hook-unbindkey 'dired-mode-hook "x")
;(global-unbindkey "M-x"); execute-extended-command

;;;; C
(hook-bindkey 'dired-mode-hook "c" 'dired-do-copy)
;(bind-key "C-c" 'keyboard-quit)
(bind-key "C-c" 'kill-ring-save)
(hook-bindkey 'html-mode-hook "C-c" 'kill-ring-save)
(hook-bindkey 'js-mode-hook "C-c" 'kill-ring-save)
(hook-bindkey 'text-mode-hook "C-c" 'kill-ring-save)
(global-unbindkey "M-c"); capitalize-word

;;;; V
(bind-key "C-v" 'yank)
(bind-key "M-v" 'yank-pop)

;;;; B
(global-unbindkey "C-b")
(global-unbindkey "M-b"); backward-word

;;;; N
(hook-bindkey 'dired-mode-hook "n" 'dired-next-line)
(hook-bindkey 'magit-status-mode-hook "n" 'magit-next-line)
(bind-key "C-n" 'next-line)
(hook-bindkey 'dired-mode-hook "C-n" 'dired-next-subdir)
(hook-bindkey 'magit-status-mode-hook "C-n" 'magit-section-forward)
(bind-key "M-n" 'scroll-up-command)
(hook-bindkey 'doc-view-mode-hook "M-n" 'doc-view-next-page)
(hook-bindkey 'Info-mode-hook "M-n" 'scroll-up-command)
(bind-key "C-M-n" 'end-of-buffer)
(hook-bindkey 'doc-view-mode-hook "C-M-n" 'doc-view-last-page)

;;;; M
(new-key-wrapper input-decode-map [?\C-m] [C-m])
(bind-key "<C-m> a b b r" 'abbrev-mode)
(bind-key "<C-m> c s s" 'css-mode)
(bind-key "<C-m> d i m" 'auto-dim-other-buffers-mode)
(bind-key "<C-m> m a g i t" 'magit-status)
(bind-key "<C-m> h t m l" 'html-mode)
(bind-key "<C-m> i n d" 'aggressive-indent-mode)
(bind-key "<C-m> j s" 'javascript-mode)
(bind-key "<C-m> l i s p" 'emacs-lisp-mode)
(bind-key "<C-m> m d" 'markdown-mode)
(bind-key "<C-m> n e w" 'highlight-changes-mode)
(bind-key "<C-m> t e x t" 'text-mode)
(bind-key "<C-m> ?" 'describe-mode)
(global-unbindkey "M-m"); back-to-indentation

;;;; ,
(bind-key "C-," 'unindent-region)
(global-unbindkey "M-,")

;;;; .
(bind-key "C-." 'indent-relative)
(global-unbindkey "M-.")

;;;; /
(put 'dired-find-alternate-file 'disabled nil)
(bind-key "C-/" 'help-command)
(global-unbindkey "M-/"); dabbrev-expand
; Key Bindings (End) ;
