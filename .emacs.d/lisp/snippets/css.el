; CSS Snippets ;
(bind-key css-mode-map "M-1 r u l e" (lambda nil nil (interactive)
  (insert "identifier {}")
  (backward-char 1)))

(bind-key css-mode-map "M-1 b l o c k" (lambda nil nil (interactive)
  (insert "block: ;")
  (backward-char 1)))
; CSS Snippets (End) ;
