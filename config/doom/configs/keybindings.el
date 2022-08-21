;;; $DOOMDIR/configs/keybindings.el -*- lexical-binding: t; -*-

;; centaur tabs
(evil-define-key 'normal centaur-tabs-mode-map (kbd "C-<right>") 'centaur-tabs-forward         ; default Doom binding is 'g t'
                                               (kbd "C-<left>")  'centaur-tabs-backward)       ; default Doom binding is 'g T'

;; delete keybinding for SPC-:
(map! :leader
      :nv ":" nil)

(add-hook! 'rustic-mode-hook #'(lambda ()
                                 (map! :leader
                                       :desc "Fromat Rust buffer"
                                       :nv "c f" #'rustic-format-buffer)))

