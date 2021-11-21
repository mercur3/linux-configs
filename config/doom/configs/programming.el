;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; prettier symbols
(setq prettify-symbols-alist
      '(("lambda" . 955)))
(global-prettify-symbols-mode 1)

;; editor setup
(defun setup ()
  (setq fill-column 100)                        ;; visual column line
  (display-fill-column-indicator-mode)          ;; display column indicator at
  (setq truncate-lines 'nil))                   ;; wrap long lines

(add-hook 'prog-mode-hook #'setup)
(add-hook 'org-mode-hook #'setup)

;; remove anoying popups when lsp is enabled
(setq lsp-ui-doc-enable nil)

;; ensure rust-analyzer is used as lsp-server
(after! rustic
  (setq rustic-lsp-server 'rust-analyzer))
