;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
(setq doom-font (font-spec :family "JetBrains Mono" :size 16)
      doom-big-font (font-spec :family "JetBrains Mono" :size 26))

(custom-set-faces!
  '(font-lock-comment-face :slant italic))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; start on fullscreen mode
(add-to-list 'default-frame-alist '(fullscreen . maximized))

(setq centaur-tabs-set-bar 'over
      centaur-tabs-style "alternate"
      centaur-tabs-set-close-button nil
      centaur-tabs-show-new-tab-button nil)

;; display icons with colors
(setq doom-themes-treemacs-theme "doom-colors")

;; use custom image on splash screen
(setq fancy-splash-image "~/.config/doom/resource/img/emacs-icon.png")

;; doom-modeline
(setq doom-modeline-irc nil)
(setq doom-modeline-env-version nil)
