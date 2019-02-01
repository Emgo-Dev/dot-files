;load: loads a file from EmacsLisp.
;require: loads a file only if it hasn't been loaded already.
(add-to-list 'load-path "~/.emacs.d/lisp/")
; "load" checks direcotires in users "load-path" variable. Otherwise an absolute path is necessary.
(load "my-settings")
(load "my-packages")
(load "my-functions")
(load "my-unbindings")
(load "my-bindings")

; # My Key-Bind Methodology
;
; ## EMACS Manual Reference
;
; The following examples show manners in which to format
; a keybinding in the EMAC init file ('~/.emacs').
;
; ### kbd Function
; The kbd function converts string key sequences
; into an acceptable argument for 'global-set-key'.
;
; ```lisp
; (global-set-key (kbd "C-c y") 'clipboard-yank)
; (global-set-key (kbd "C-M-q") 'query-replace)
; (global-set-key (kbd "<f5>") 'flyspell-mode)
; (global-set-key (kbd "C-<f5>") 'linum-mode)
; (global-set-key (kbd "C-<right>") 'forward-sentence)
; (global-set-key (kbd "<mouse-2>") 'mouse-save-then-kill)
; ```
;
; ### Lisp String
;
; Probably the simplest solution, yet only works on ASCII
; characters. Note that there are no spaces between input
; events.
; 
; ```lisp
; (global-set-key "\C-x\M-l" 'make-symbolic-link)
; ```
;
; ### Lisp Vector
;
; Useful for when 'key sequence' includes function keys
; or mouse button events; any non-ASCII characters. Each
; element represents an input event and are separated by
; a space. If the element is a ASCII character, declare
; it a lisp character constant prefixing it with '?'.
;
; ```lisp
; (global-set-key [?\C-=] 'make-symbolic-link)
; (global-set-key [?\M-\C-=] 'make-symbolic-link)
; (global-set-key [?\H-a] 'make-symbolic-link)
; (global-set-key [f7] 'make-symbolic-link)
; (global-set-key [C-mouse-1] 'make-symbolic-link)
; ```
;
; ## An Example by Comparison
;
; The default EMACS keybindings to move the 'pointer' left and right
; are 'C-b' and 'C-f' respectively. My bindings instead utilize
; 'C-j' and 'C-k' respectively; furthermore 'C-i' moves
; the 'pointer' up one line - replacing 'M-v' and 'C-n'
; is unchanged.
;
; This pattern creates a WASD like region which demands
; even less finger movement than EMACS defaults; though
; EMACS strived to map them to their appropriate titles
; (ie: 'C-f' represented *forward* character). Still as you
; grow more accustomed that association is less necessary.
; 
;
; ```
; q w e r t y u i o p [ ] \
;                \ - middle finger
;  a s d f g h j k l ; '
;             / - index finger
;   z x c v b n m , . /
; ```
; 
; ## Key by key
;
; Though each key has been modified from EMACS defaults,
; and EMACS associated common actions with keys sharing
; that character (ie: 'C-n' called the command 'next-line');
; the keys do maintain an association. Some of these
; and keybindings using this 'complete key' are as follows:
;
; - j: actions associated with 'left'
; -- 'M-j': Move pointer backward one word
; -- 'C-j': Move pointer backward one character
; -- 'C-x C-j': Move to previous window
; -- 'C-x j': Split window down
; 
; - k: actions associated with 'right'
; -- 'M-k': Move pointer forward one word
; -- 'C-k': Move pointer forward one character
; -- 'C-x C-k': Move to next window
; -- 'C-x k': Split window right
;
; - i: actions associated with 'up'
; -- 'C-i': Move pointer up one line
; -- 'C-x C-i': Scroll page up
; -- 'C-x i': Shrink window vertically
;
; - n: actions associated with 'down'
; -- 'C-n': Move pointer down one line
; -- 'C-x C-n': Scroll page down
; -- 'C-x n': Enlarge window vertically
;
; ## Need More Modifiers?
;
; Hopefully the vision is starting to become clear.
; While not everything has been covered yet, this
; pattern has managed to keep most navigation and window
; controls to the right hand, and modifiers to the left.
; However EMACS only allows so many modifiers, namely
; you must decide which key will be a prefix key and
; a prefix key cannot itself make a 'complete key'.
;
; A prefix key is the 'C-x' combination; 'C-x' never
; triggers a command itelf, if it did no 'complete key'
; using it would work. However you can do 'C-x C-x' to
; make a 'complete key'. Let's say 'C-f' makes a complete
; key and calls the forward-char command, if you bind a
; command to 'C-f C-d', 'C-f' will never allow that sequence
; to build past itself.
;
; So being limited to those four close-proximity keys can
; be a problem, especially if we want to maintain the clear
; purpose so far established. The following keys aim to
; extend 'j' and 'k', and while they are different keys,
; their position can be seen as extremes of 'j' and 'k'.
; 
; - 'l': actions associated with 'left' modifiers
; -- 'M-l': move the 'pointer' to start of line
; - ';': actions associated with 'right' modifiers
; -- 'M-;': move the pointer to end of line
; 
; The above keys use a 'M' modifier rather than 'C' because
; running EMACS in terminal mode (-nw), the terminal
; does not recognize 'C' as a key combination key. Basically
; holding 'ctrl' will still send ; to the terminal as a
; plain character, 'M' however works. If you're using
; the EMACS GUI than feel free to replace the modifier.
;
; These keys can be seen as extensions of 'j' and 'k'.
; While you could construct various 'complete key's
; using other keys with these two, such as 'C-x C-c C-j'
; or 'C-x M-x j', having to press more than the initial
; modifier key combo makes a simple command take twice
; the effort.
;
; Instead these two characters shre the left to right orientation
; of 'j' and 'k' while not wrapping around them and resting
; directly under two unused fingers to copliment our main navigation.
; 
; ## Keymap Graph
;
;
; ```
; q w e r t y u i o p [ ] \
;  a s d f g h j k l ; '
;              | |  \/      
;               \|   \_[ 'C-l': move pointer sol
;                \       'C-;': move pointer eol ]
;                 \    
;                  \   [ 'C-j': move pointer backward char
;                   \_/  'M-j': move pointer backward word
;                    |   'C-x C-j': move to previous window
;                    |   'C-x j': split window down ]
;                    |  
;                    \_[ 'C-k': move pointer forward char
;                        'M-k': move pointer forward word
;                        'C-x C-k': move to next window
;                        'C-x k': split window right ]
;                    
;   z x c v b n m , . /
; ```

; Function Table of Index ;
;; Cancel Keyboard Input(keyboard-quit): C-c
;; Close Buffer(kill-buffer): C-bd
;; Close Window(delete-window): C-xd
;; Copy/Kill Text Region(kill-region): C-hd
;; Copy Text Region(copy-region-as-kill): C-hs
;; Delete Character(delete-char): C-d
;; Delete/Kill Word(kill-word): M-d
;; Delete/Kill Line(kill-line): none, kill region of highlighted lines
;; Enter Two Space Indent(space-times-2): C-space
;; Emacs Help(help-command): C-/
;; Focus on Next Window(move-next-window): C-xC-k
;; Focus on Previous Window(move-previous-window): C-xC-j
;; Mark Pointer Position for Highlight(set-mark-command): C-h
;; Move Pointer to Beginning of Line(move-beginning-of-line): C-;
;; Move Pointer to Beginning of Buffer(beginning-of-buffer): M-l
;; Move Pointer to End of Buffer(end-of-buffer): M-;
;; Move Pointer to End of Line(move-end-of-line): C-;
;; Move Pointer to Next Character(forward-char): C-k
;; Move Pointer to Next Line(next-line): C-n
;; Move Pointer to Next Word(forward-word): M-k
;; Move Pointer to Previous Char(previous-char): C-j
;; Move Pointer to Previous Line(previous-line): C-i
;; Move Pointer to Previous Word(previous-word): M-j
;; Open Terminal Instance in Window(term): f12
;; Open Buffer in Window(switch-to-buffer): C-bo
;; Open File in Window(find-file): C-xo
;; Paste/Yank Last Killed Text Entry(yank): C-y
;; Paste/Yank Cycle Through Killed Text(yank-pop): M-y
;; Set Char Mode in Term(term-char-mode): C-f12
;; Set Line Mode in Term(term-line-mode): M-f12
;; Set Argument(universal-argument): C-a
;; Scroll Buffer Up(scroll-down-command): M-i
;; Scroll Buffer Down(scroll-up-command): M-n
;; Scroll Buffer w/ Pointer at Center/Top/Bottom(recenter-top-bottom): C-p
;; Save Buffer(save-buffer): C-bs
;; Save Prompt Changed Buffers(save-some-buffers): C-bC-s
;; Split Window Horizontally(split-window-horizontally): C-xk
;; Split Window Vertically(split-window-vertically): C-xj
;; Undo Buffer State to Last "Input"(undo): C-bu
