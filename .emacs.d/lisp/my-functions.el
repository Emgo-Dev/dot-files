; Custom Functions ;
;
;; Found Functions ;;
; These are awsome functions I nabbed from some help forums.
; Will link if I can find source URL.

(defmacro map-bindkey (keymap key def)
  "Bind def to key in keymap"
  `(define-key ,keymap ,key ,def))

(defmacro new-key-wrapper (keymap key def)
  "Bind Test"
  `(define-key ,keymap ,key ,def))

(defmacro global-bindkey (key def)
  "*Bind KEY globally to DEF.
  KEY should be a string constant in the format used for
  saving keyboard macros (cf. `global-bindkey')."
    `(global-set-key (kbd ,key) ,def))

(defmacro global-unbindkey (key)
  "*Bind KEY globally to DEF.
  KEY should be a string constant in the format used for
  saving keyboard macros (cf. `global-unbindkey')."
    `(global-unset-key (kbd ,key)))

(defmacro local-bindkey (key def)
  "*Bind KEY locally in MAP to DEF.
  KEY should be a string constant in the format used for
  saving keyboard macros (cf. `local-bindkey')."
    `(local-set-key (kbd ,key) ,def))

(defmacro local-unbindkey (key)
  "*Bind KEY locally in MAP to DEF.
  KEY should be a string constant in the format used for
  saving keyboard macros (cf. `insert-kbd-macro')."
    `(local-unset-key (kbd ,key)))

(defmacro hook-bindkey (hook key def)
  "*Bind KEY locally in MAP to DEF.
  KEY should be a string constant in the format used for
  saving keyboard macros (cf. `insert-kbd-macro')."
    `(add-hook ,hook '(lambda () (local-bindkey ,key ,def))))

(defmacro hook-unbindkey (hook key)
  "*Bind KEY locally in MAP to DEF.
  KEY should be a string constant in the format used for
  saving keyboard macros (cf. `insert-kbd-macro')."
    `(add-hook ,hook '(lambda () (local-unbindkey ,key))))
;; Found Functions (End) ;;

;; My Functions ;;
(defun space-times-2 ()
  (interactive)
  (insert "  ")
)

(defun move-next-window (i)
  (interactive "P")
  (if i
    (other-window (* i 1))
    (other-window 1))
)

(defun move-previous-window (i)
  (interactive "P")
  (if i
    (other-window (* i -1))
    (other-window -1))
)

(defun increase-window-size (i)
  "Increase current windows share of split frame vertically."
  (interactive "P")
  (if i
    (enlarge-window (* i 10))
    (enlarge-window 10))
)

(defun decrease-window-size (i)
  "Decrease current windows share of split frame vertically."
  (interactive "P")
  (if i
    (enlarge-window (* i -10))
    (enlarge-window -10))
)

; (interactive): declares that the function may be called within emacs as a command via M-x, or a keybinding
; (interactive "P"): delegates the first argument to be receivable from a universal-argument prefix value
(defun increase-window-size-horizontally (&optional a)
  "Increase current windows share of split frame horizontally."
  (interactive "P")
  (if a
    (enlarge-window-horizontally (* a 10))
    (enlarge-window-horizontally 10))
)

(defun decrease-window-size-horizontally (&optional a)
  "Decrease current windows share of split frame horizontally."
  (interactive "P")
  (if a
    (enlarge-window-horizontally (* a -10))
    (enlarge-window-horizontally -10))
)

(defun increase-text-size ()
  (interactive)
  "Increases the size of text within current buffer."
  (text-scale-increase 2)
)

(defun decrease-text-size ()
  "Decreases the size of text within current buffer."
  (interactive)
  (text-scale-decrease 2)
)

(defun unindent-region ()
  (interactive)
  (indent-region -1)
)
;; My Functions (End) ;;
; Custom Functions (End) ;
