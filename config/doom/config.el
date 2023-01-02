;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Andri Reveli"
      user-mail-address "reveliandri@gmail.com")

;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

;; do not prompt for exit confirmation
(setq confirm-kill-emacs nil)

;; deal with: file xyz newer than byte-compiled file abc, using the old one
(setq load-prefer-newer t)

(setq tab-width 4)

;; completion
(setq vertico-count 20
      vertico-resize nil)

;; try the `completion-category-sort-function` first
(advice-add #'vertico--sort-function :before-until #'completion-category-sort-function)

(defun completion-category-sort-function ()
  (or (vertico--metadata-get 'display-sort-function)
      (alist-get (vertico--metadata-get 'category)
                 completion-category-sort-function-overrides)))

;; completion category-specific sort function overrides
(defvar completion-category-sort-function-overrides
  '((file . (lambda (files)
              ;; sort alphabetically
              (setq files (vertico-sort-alpha files))
              ;; but then move directories first
              (nconc (seq-filter (lambda (x) (string-suffix-p "/" x)) files)
                     (seq-remove (lambda (x) (string-suffix-p "/" x)) files))))))

;; dont kill scratch buffer
(add-hook 'kill-buffer-query-functions (lambda ()
                                         (if (not (equal (buffer-name) "*scratch*"))
                                             t
                                           (message "Not allowed to kill scratch buffer")
                                           nil)))

;; delete by moving to trash
(setq delete-by-moving-to-trash t)
(setq dired-kill-when-opening-new-dired-buffer t)

(load! "configs/ui")
(load! "configs/keybindings")
(load! "configs/org")
(load! "configs/programming")

