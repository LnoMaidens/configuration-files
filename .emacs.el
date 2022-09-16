(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
;;(package-initialize)
;;(package-refresh-contents)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq inferior-lisp-program "/usr/bin/sbcl")
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(irony-mode -1)
(show-paren-mode 1)
(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(add-hook 'text-mode-hook 'display-line-numbers-mode)
(setq inhibit-startup-message t)
(setq x-select-enable-clipboard t)
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq scroll-conservatively 100)
(setq rind-bell-function 'ignore)
(global-set-key (kbd "C-x C-y") 'clipboard-yank)
(setq-default tab-width 4)
(setq-default standard-indent 4)
(setq c-basic-offset tab-width)
(setq-default electric-indent-inhibit t)
(setq-default indent-tabs-mode t)
(setq backward-delete-char-untabify-method 'nil)
(global-prettify-symbols-mode t)
(setq electric-pair-pairs '(
                            (?\{ . ?\})
                            (?\( . ?\))
                            (?\[ . ?\])
                            (?\" . ?\")
                            ))
(electric-pair-mode t)

 (defun split-and-follow-horizontally ()
	(interactive)
	(split-window-below)
	(balance-windows)
	(other-window 1))
 (global-set-key (kbd "C-x 2") 'split-and-follow-horizontally)

(defun split-and-follow-vertically ()
  (interactive)
  (split-window-right)
  (balance-windows)
  (other-window 1))
(global-set-key (kbd "C-x 3") 'split-and-follow-vertically)


(defun highlight-line ()
  "falls ich den zeiger versesse"
  (interactive)
  (global-hl-line-mode t)
  (sleep-for 1)
  (global-hl-line-mode -1)
)

(add-to-list 'default-frame-alist
	     '(font . "Monospace-13"))
(load-theme 'tango-dark t)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;functions
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;(defun move-line (arg)
  ;;"move the current line up or down c")


;;keybinds
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq x-ctrl-keysym 'meta)
(setq x-meta-keysym 'ctrl)
;;(global-set-key (kbd "M-ö") 'forward-char)
;;(global-set-key (kbd "M-Ö") 'forward-word)
;;(global-set-key (kbd "C-M-ö") 'end-of-line)
;;(global-set-key (kbd "M-j") 'backward-char)
;;(global-set-key (kbd "M-J") 'backward-word)
;;(global-set-key (kbd "C-M-j") 'move-beginning-of-line)
;;(global-set-key (kbd "M-k") 'next-line)
;;(global-set-key (kbd "M-K") 'scroll-up-command)
;;(global-set-key (kbd "M-l") 'previous-line)
;;(global-set-key (kbd "M-L") 'scroll-down-command)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;text manipulation
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;(global-set-key (kbd "M-f") 'delete-char)
;;(global-set-key (kbd "M-F") 'kill-word)
;;(global-set-key (kbd "C-M-f")'kill-whole-line)
;;(global-set-key (kbd ""))

;;emacs options
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;(global-set-key (kbd "M-y M-n") 'kill-buffer)
;;(lobal-set-key (kbd "M-y M-N") 'kill-emacs)
;;(global-set-key (kbd "M-y M-g") 'quoted-insert)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(initial-buffer-choice t)
 '(package-selected-packages
   '(irony slime shrink-path pulsar haskell-snippets haskell-emacs evil compat bind-key))
 '(warning-suppress-types '((irony) (irony) (irony))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
