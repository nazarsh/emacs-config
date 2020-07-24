;; Adjustments made during the transition from Atom/VSCode to Emacs
;; Add MELPA repository for packages
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)

;; make sure we load all necessary packages before proceeding
(prelude-require-package 'lsp-treemacs)
(prelude-require-package 'atom-one-dark-theme)


;; remove scrollbar(scroll-bar-mode -1)
(when (display-graphic-p)
  (setq scroll-bar-mode -1)
  )

;; swap super and meta to bind meta to command on mac
(setq mac-command-modifier 'meta)
(setq mac-option-modifier 'super)

;; enable zen mode
(require 'zen-mode)
(global-set-key (kbd "C-M-z") 'zen-mode)

;; load atom-one-dark on startup
(when (display-graphic-p)
  (load-theme 'atom-one-dark t)
  )

;; set line spacing
(setq-default line-spacing 0.4)
(setq-default fill-column 120)

;; Make sure package is available for Alchemist
(add-to-list 'package-pinned-packages '(alchemist . "melpa-stable") t)
