; Packages ;
(require 'package)

;; Melpa Setup ;;
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (when no-ssl
    (warn "\
Your version of Emacs does not support SSL connections,
which is unsafe because it allows man-in-the-middle attacks.
There are two things you can do about this warning:
1. Install an Emacs version that does support SSL and be safe.
2. Remove this warning from your init file so you won't see it again."))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives (cons "gnu" (concat proto "://elpa.gnu.org/packages/")))))
;; Melpa Setup (End) ;;

;; Melpa Packages ;;
; Load Emacs Lisp packages, and activate them.
(package-initialize)

;;; Ace Window ;;;
(if (not (require 'ace-window nil t))
    (message "package not found")
)
;;; Ace Window (End) ;;;

;;; Aggressive Indent Mode ;;;
(if (not (require 'aggressive-indent-mode nil t))
    (message "package not found")
  ; Activate locally.
  ;(add-hook 'css-mode '(lambda () (aggressive-indent-mode)))
  ; Activate globally.
  (global-aggressive-indent-mode 1)
  ; Exclude from specific modes.
  ;(add-to-list 'aggressive-indent-excluded-modes 'html-mode)
)
;;; Aggressive Indent Mode (End) ;;;

;;; All The Icons ;;;
(if (not (require 'all-the-icons nil t))
    (message "package not found")
)
;;; All The Icons (End) ;;;

;;; All The Icons Dired Mode ;;;
(if (not (require 'all-the-icons-dired nil t))
    (message "package not found")
  (add-hook 'dired-mode-hook 'all-the-icons-dired-mode)
)
;;; All The Icons Dired Mode (End) ;;;

;;; Autocomplete Mode ;;;
(if (not (require 'auto-complete nil t))
    (message "package not found")
  (global-auto-complete-mode 1)
)
;;; Autocomplete Mode (End) ;;;

;;; Auto Dim Other Buffers ;;;
;(customize-face auto-dim-other-buffers-face)
(if (not (require 'auto-dim-other-buffers nil t))
    (message "package not found")
  (custom-theme-set-faces
    'deeper-blue
    '(auto-dim-other-buffers-face ((t (:foreground "#333" :background "#111"))))
  )
  (add-hook 'after-init-hook (lambda () (auto-dim-other-buffers-mode t))))

;;; Auto Dim Other Buffers (End) ;;;

;;; Bind Key ;;;
(if (not (require 'bind-key nil t))
    (message "package not found"))
;;; Bind Key (End) ;;;

;;; Markdown Mode ;;;
(if (not (require 'auto-dim-other-buffers nil t))
    (message "package not found"))
;;; Markdown Mode (End) ;;;
;; Melpa Packages (End) ;;
; Packages (End) ;
