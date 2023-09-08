;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
(setq user-full-name "Thiago Lopes"
      user-mail-address "thiagolopes@protonmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-unicode-font' -- for unicode glyphs
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;
(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
     doom-variable-pitch-font (font-spec :family "DejaVu Sans" :size 12))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-zenburn)
(setq display-line-numbers-type t)
(setq org-directory "~/org/")

(use-package! expand-region
  :bind ("M-@" . er/expand-region))

(use-package! counsel
  :commands (counsel-yank-pop counsel-ag counsel-fzf)
  :bind
  ("M-?" . counsel-ag)
  ("C-M-?" . counsel-fzf))

(use-package! smartparens
  :bind
  ("C-)" . sp-forward-slurp-sexp)
  ("C-(" . sp-forward-barf-sexp))

(global-set-key (kbd "C-=") #'text-scale-increase)
(global-set-key (kbd "C-+") #'text-scale-increase)
(global-set-key (kbd "C--") #'text-scale-decrease)
(global-set-key (kbd "M-n") #'forward-paragraph)
(global-set-key (kbd "M-p") #'backward-paragraph)

;; Buffer navegation
(global-set-key (kbd "<f3>") 'kmacro-start-macro-or-insert-counter)
(global-set-key (kbd "<f4>") 'kmacro-end-or-call-macro)

;; lisp sanitize
(global-set-key (kbd "M-3") #'(lambda () (interactive) (insert "#")))
(global-set-key (kbd "M-9") #'(lambda () (interactive) (insert "(")))
(global-set-key (kbd "M-0") #'(lambda () (interactive) (insert ")")))
(global-set-key (kbd "M-[") #'(lambda () (interactive) (insert "{")))
(global-set-key (kbd "M-]") #'(lambda () (interactive) (insert "}")))

(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)
(global-set-key (kbd "C-M-s") 'isearch-forward)
(global-set-key (kbd "C-M-r") 'isearch-backward)

(when (>= emacs-major-version 29)
    (pixel-scroll-precision-mode t))

;; Yes, I really want to quit.
(setq confirm-kill-emacs nil)
