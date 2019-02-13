; Found Functions ;
; From somewhere on the internet.
; Alterations may have been made.
(defmacro bind-key-any (keymap key def)
  `(define-key ,keymap ,key ,def))

(defmacro bind-key (keymap key def)
  `(define-key ,keymap (kbd ,key) ,def))

(defmacro bind-key-global (key def)
  "Bind DEF to KEY in global keymap. KEY should be a string constant in the format used for saving keyboard macros (cf. `bind-key-global')."
  `(global-set-key (kbd ,key) ,def))

(defmacro unbind-key-global (key)
  "Un-bind KEY in global keymap. KEY should be a string constant in the format used for saving keyboard macros (cf. `unbind-key-global')."
  `(global-unset-key (kbd ,key)))

(defmacro bind-key-local (key def)
  "Bind KEY in local keymap. KEY should be a string constant in the format used for saving keyboard macros (cf. `bind-key-local')."
  `(local-set-key (kbd ,key) ,def))

(defmacro unbind-key-local (key)
  "Un-bind KEY in local keymap. KEY should be a string constant in the format used for saving keyboard macros (cf. `unbind-key-local')."
  `(local-unset-key (kbd ,key)))

(defmacro bind-key-hook (hook key def)
  "Bind KEY in local keymap of mode hook. KEY should be a string constant in the format used for saving keyboard macros (cf. `bind-key-hook')."
  `(add-hook ,hook (lambda nil nil (local-set-key (kbd ,key) ,def))))

(defmacro unbind-key-hook (hook key def)
  "Un-bind KEY in local keymap of mode hook. KEY should be a string constant in the format used for saving keyboard macros (cf. `unbind-key-hook')."
  `(add-hook ,hook (lambda nil nil (local-unset-key (kbd ,key) ,def))))
; Found Functions (End) ;

; My Functions ;
(defun safe-enable-theme (theme)
  "Enable theme if loaded (cf.`custom-theme-p', `enable-theme')."
  (interactive)
  (if (custom-theme-p theme)
    (enable-theme theme)))

(defun space-times-2 ()
  "Insert spaces instead of tabs. Uses 'tab-width' variable as multiplier for spaces to insert."
  (interactive)
  (setq scoped-indent-width tab-width)
  (while (> scoped-indent-width 0)
    (insert " ")
    (setq scoped-indent-width (- scoped-indent-width 1))))

(defun move-next-window (i)
  "Call 'other-window' command with parameter (and force it to be positive), or 1 if non provided (cf. `other-window')."
  (interactive "P")
  (if i
    (other-window (* i 1))
    (other-window 1)))

(defun move-previous-window (i)
  "Call 'other-window' command with parameter (and force it to be negative), or -1 if non provided (cf. `other-window')."
  (interactive "P")
  (if i
    (other-window (* i -1))
    (other-window -1)))

(defun increase-window-size (i)
  "Increase current windows share of split frame vertically (cf. `enlarge-window')."
  (interactive "P")
  (if i
    (enlarge-window (* i 10))
    (enlarge-window 10)))

(defun decrease-window-size (i)
  "Decrease current windows share of split frame vertically (cf. `enlarge-window')."
  (interactive "P")
  (if i
    (enlarge-window (* i -10))
    (enlarge-window -10)))

(defun increase-window-size-horizontally (&optional a)
  "Increase current windows share of split frame horizontally (cf. `enlarge-window-horizontally')."
  (interactive "P")
  (if a
    (enlarge-window-horizontally (* a 10))
    (enlarge-window-horizontally 10)))

(defun decrease-window-size-horizontally (&optional a)
  "Decrease current windows share of split frame horizontally (cf. `enlarge-window-horizontally')."
  (interactive "P")
  (if a
    (enlarge-window-horizontally (* a -10))
    (enlarge-window-horizontally -10)))

(defun increase-text-size (&optional n)
  "Increases the size of text within current buffer (cf. `text-scale-increase')."
  (interactive "P")
  (text-scale-increase 2))

(defun decrease-text-size (&optional n)
  "Decreases the size of text within current buffer (cf. `text-scale-increase')."
  (interactive "P")
  (text-scale-decrease 2))
; My Functions (End) ;
