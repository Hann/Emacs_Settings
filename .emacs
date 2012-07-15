;;;;;;;;;;;;;;;;;;;;;
;; encoding-system ;;
;;;;;;;;;;;;;;;;;;;;;

(set-terminal-coding-system 'utf-8 )
(set-keyboard-coding-system 'utf-8 )
(set-selection-coding-system 'utf-8 )
(set-buffer-file-coding-system 'utf-8 )
(set-file-name-coding-system 'utf-8 )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; emacs full screen mode ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun writeroom ()
  "Switches to a WriteRoom-like fullscreen style"
  (interactive)	
  (when (featurep 'aquamacs)
    ;; switch to white on black
    (color-theme-initialize)
    (color-theme-clarity)
    ;; switch to Garamond 36pt
    (aquamacs-autoface-mode 0)
    (set-frame-font "-apple-garamond-medium-r-normal--36-360-72-72-m-360-iso10646-1")
    ;; switch to fullscreen mode
    (aquamacs-toggle-full-frame)))


;;;;;;;;;;;;;;;;;;;;;;;;
;; auto-complete-mode ;;
;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path "~/.emacs.d/plugins/autocomplete")    ; This may not be appeared if you have already added.
(require 'auto-complete-config)
(ac-config-default)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/plugins/autocomplete/ac-dict")


;;;;;;;;;;;;;;
;; yasippet ;;
;;;;;;;;;;;;;;

(add-to-list 'load-path
              "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(yas/global-mode 1)

;;;;;;;;;;;;;;
;; zen-coding ;;
;;;;;;;;;;;;;;

(add-to-list 'load-path "~/.emacs.d/plugins/zencoding")
(require 'zencoding-mode)


;;;;;;;;;;;;;;;;;
;; color-theme ;;
;;;;;;;;;;;;;;;;;

(require 'color-theme)
(color-theme-initialize)
(color-theme-kingsajz)










