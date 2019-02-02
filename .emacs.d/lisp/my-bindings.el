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

;;;; Function Keys
(global-unbindkey "<f3>"); kmacro-start-macro-or-insert-counter
(global-unbindkey "<f4>"); kmacro-end-or-call-macro
(global-unbindkey "<f10>"); menu-bar-open
;(global-unbindkey "<f11>"); toggle-frame-fullscreen
(bind-key "<f12>" 'term)
(bind-key "C-<f12>" 'term-char-mode)
(bind-key "M-<f12>" 'term-line-mode)

;;;; Arrow Keys
(bind-keys :map Info-mode-map
  ("<up>" 'Info-up))
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
; The window prefix. Key-chord Patterns ("?" is a stand-in for following key-chords):
; Adjustment Command: "C-w ?", user must lift finger from Ctrl. Use universal argument prefixes to make easier.
; User Command: "C-w C-?", user must keep finger pressed on Ctrl. Cycle "w" & "?" to achieve desired result.
(unbind-key "C-w")
(bind-keys* :map global-map :prefix-map window-prefix-map :prefix "C-w"
  ("=" . increase-text-size); Pseudo Zoom-In
  ("-" . decrease-text-size); Pseudo Zoom-Out
  ("C-w" . ace-window)
  ("i" . decrease-window-size)
  ("<C-i>" . scroll-down-command)
  ("o" . find-file)
  ("d" . delete-window)
  ("C-g w" . avy-goto-word-1)
  ("C-g C-w" . avy-goto-word-0)
  ("C-g l" . avy-goto-line)
  ("C-g C-l" . avy-goto-end-of-line)
  ("C-g c" . avy-goto-char)
  ("C-g C-c" . avy-goto-char-2)
  ("j" . split-window-vertically)
  ("C-j" . move-previous-window)
  ("k" . split-window-horizontally)
  ("C-k" . move-next-window)
  ("l" . decrease-window-size-horizontally)
  (";" . increase-window-size-horizontally)
  ("b" . list-buffers)
  ("n" . increase-window-size)
  ("C-n" . scroll-up-command))
(bind-key* "M-w o" 'find-file-other-window)
(unbind-key "M-w"); kill-ring-save

;;;; E
(global-unbindkey "C-e")
(bind-keys* :map global-map :prefix-map buffer-prefix-map :prefix "C-e"
  ("r" . rename-buffer)
  ("u" . undo)
  ("o" . switch-to-buffer)
  ("s" . save-buffer)
  ("C-s" . save-some-buffers)
  ("d" . kill-buffer))
(bind-key "C-e d" 'minibuffer-complete-and-exit minibuffer-local-must-match-map)
(global-unbindkey "M-e"); forward-sentence

;;;; R
(global-unbindkey "M-r"); move-to-window-line-top-bottom

;;;; T
(global-unbindkey "C-t"); transpose-words
(bind-keys* :map global-map :prefix-map global-prefix-map :prefix "C-t"
  ("1" . (lambda () "Inline lambda" (interactive) (safe-enable-theme 'deeper-blue)))
  ("2" . (lambda () "Inline lambda" (interactive) (safe-enable-theme 'misterioso)))
  ("3" . (lambda () "Inline lambda" (interactive) (safe-enable-theme 'whiteboard))))
;(bind-key "C-t i" 'newline)
;(bind-key "C-t n" 'open-line)
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
(hook-bindkey 'magit-status-mode-hook "i" 'magit-previous-line)
(new-key-wrapper input-decode-map [?\C-i] [C-i])
(new-key-wrapper input-decode-map [?\M-i] [M-i])
(new-key-wrapper input-decode-map [?\C-\M-i] [C-M-i])
(bind-key "<C-i>" 'previous-line)
(hook-bindkey 'custom-mode-hook "<C-i>" 'previous-line)
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
(bind-key "C-s" 'set-mark-command)

;;;; D
(global-unbindkey "M-d")
(bind-key "M-d" 'kill-region)

;;;; F
(global-unbindkey "C-f")
(bind-key "C-f r" 'replace-string)
(bind-key "C-f t" 'isearch-forward)
(bind-key "C-f l" 'goto-line)
(hook-bindkey 'doc-view-mode-hook "C-f t" 'doc-view-search)
(hook-bindkey 'doc-view-mode-hook "C-f p" 'doc-view-goto-page)
(global-unbindkey "M-f"); forward-word

;;;; G

;;;; H
(global-unbindkey "C-h");
(global-unbindkey "M-h"); mark-paragraph

;;;; J
(global-unbindkey "C-j")
(bind-key "C-j" 'backward-char)
(global-unbindkey "M-j")
(bind-key "M-j" 'backward-word)
(global-unbindkey "C-M-j")

;;;; K
(hook-bindkey 'magit-status-mode-hook "k" 'magit-section-toggle)
(global-unbindkey "C-k")
(bind-key "C-k" 'forward-char)
(global-unbindkey "M-k")
(global-unbindkey "C-M-k")
(bind-key "M-k" 'forward-word)

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
;(global-unbindkey "M-x"); execute-extended-command

;;;; C
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
(hook-bindkey 'magit-status-mode-hook "n" 'magit-next-line)
(bind-key "C-n" 'next-line)
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
(bind-key "C-/" 'help-command)
(global-unbindkey "M-/"); dabbrev-expand
; Key Bindings (End) ;
