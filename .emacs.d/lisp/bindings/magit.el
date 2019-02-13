; Startup Settings (Magit) ;

;; Key Bindings ;;
(add-hook 'magit-status-mode-hook (lambda() (
  (unbind-key "i")
  (unbind-key "<C-i>")
  (unbind-key "k")
  (unbind-key "n")
  (unbind-key "C-n")
)))
(bind-keys :map magit-mode-map
  ("i" . magit-previous-line)
  ("<C-i>" . magit-section-backward)
  ("k" . magit-section-toggle)
  ("n" . magit-next-line)
  ("C-n" . magit-section-forward))
;; Key Bindings (End) ;;
; Startup Settings (Magit) (End) ;
