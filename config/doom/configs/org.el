(setq org-directory "~/code/org/")

;; show when org heading is folded
(setq org-ellipsis " ▾")

(setq org-superstar-headline-bullets-list '(8278 8280 8281))
(setq org-superstar-cycle-headline-bullets nil)

;; display italic, bold, etc. inline words without markers
(setq org-hide-emphasis-markers t)

;; line height for each org heading
(custom-set-faces
  '(org-level-1 ((t (:inherit outline-1 :height 1.2))))
  '(org-level-2 ((t (:inherit outline-2 :height 1.1))))
  '(org-level-3 ((t (:inherit outline-3 :height 1.0))))
  '(org-level-4 ((t (:inherit outline-4 :height 1.0))))
  '(org-level-5 ((t (:inherit outline-5 :height 1.0)))))
