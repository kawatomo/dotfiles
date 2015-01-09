(load "~/.emacs.d/site-lisp/emacs21-256color.el")
(setq load-path
      (append
       (list
(expand-file-name "~/.emacs.d/site-lisp/")
(expand-file-name "~/.emacs.d/site-lisp/themes/")

       )
       load-path))

(load "~/.emacs.d/site-lisp/themes/color-theme-library.el")
(require 'color-theme)
(color-theme-dark-laptop)  
(global-font-lock-mode t)

(display-time-mode 1)

(setq visible-bell t)

(show-paren-mode 1)

(if window-system (menu-bar-mode 1) (menu-bar-mode -1))

(setq delete-auto-save-files t)

(setq backup-inhibited t)

(setq auto-coding-functions nil)

(setq anthy-wide-space " ")

