;;; $DOOMDIR/configs/org.el -*- lexical-binding: t; -*-

(setq org-directory "~/code/org/")

;; show when org heading is folded
(setq org-ellipsis " ▾")

;; headings
(setq org-superstar-headline-bullets-list '(8278 8280 8281)
      org-superstar-cycle-headline-bullets nil)

;; line height for each org heading
(custom-set-faces '(org-level-1 ((t (:inherit outline-1 :height 1.3))))
                  '(org-level-2 ((t (:inherit outline-2 :height 1.2))))
                  '(org-level-3 ((t (:inherit outline-3 :height 1.1))))
                  '(org-level-4 ((t (:inherit outline-4 :height 1.0))))
                  '(org-level-5 ((t (:inherit outline-5 :height 1.0)))))

(after! org (setq! org-todo-keywords '((sequence "TODO(t)"
                                                "INPROGRESS(i)"
                                                "|"
                                                "DONE(d)"
                                                "CANCELLED(c)"))
                   org-todo-keyword-faces '(("TODO"
                                             :foreground "7c7c75"
                                             :weight normal
                                             :underline t)
                                            ("INPROGRESS"
                                             :foreground "0098dd"
                                             :weight normal
                                             :underline t)
                                            ("DONE"
                                             :foregrounf "50a14f"
                                             :weight normal
                                             :underline t)
                                            ("CANCELLED"
                                             :foreground "ff6480"
                                             :weight normal
                                             :underline t))
                   org-log-done 'time))

