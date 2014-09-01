(setq todotxt-default-file (expand-file-name "~/Dropbox/todo/todo.txt"))
(define-key global-map "\C-co" 'todotxt-open-file)
(define-key global-map "\C-ct" 'todotxt-add-todo)
(define-key global-map "\C-]" 'mc/mark-next-like-this)

(setq org-agenda-files (list "~/mike-maheu/gtd/gtd.org"
                             "~/mike-maheu/projects/designshack.org"
                             "~/mike-maheu/projects/git.org"))
(require 'linum)
(setq backup-directory-alist            '((".*" . "~/.EmacsTrash")))
(setq backup-inhibited 'anyvaluebutnil )
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  )
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-enabled-themes (quote (wombat)))
 '(custom-safe-themes
   (quote
    ("1ac9a474d289e6a44894d1b484b3aa5eb345cea6ed6f32ec5214c797ac7ddf23" "37d5f4f0a03ddc7dd0078ebdefcdd362beaf7abe9460c45ac164edac3ca35a5e" default)))
 '(display-time-mode t)
 '(org-agenda-files
   (quote
    ("~/mike-maheu/projects/designshack.org" "~/mike-maheu/projects/git.org")))
 '(remember-data-file "~/mike-maheu/gtd/reminders.org")
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 (set-face-attribute 'default nil :height 100)
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(mode-line ((t (:foreground "black" :background "#ffcc00" :box nil))))
 '(term ((t (:inherit default :foreground "keyboardFocusIndicatorColor"))) t))
;; Put this in .emacs:

   (defun gnus-subscribe-selectively (newsgroup)
     (gnus-subscribe-alphabetically newsgroup)
     (if (not (string-match
               ;; This regexp matches only non-wacky newsgroups.
         ;; Change it to suit your preference.
               "^\\(rec\\|comp\\|alt\\|oberlin\\|sci\\|misc\\|soc\\|news\\)\\."
               newsgroup))
       (gnus-group-unsubscribe-group newsgroup)))

   (setq gnus-subscribe-newsgroup-method 'gnus-subscribe-selectively)

   ;; Note: weirdly, gnus-group-unsubscribe-group will *subscribe* you
   ;; to a group if it does not exist in your newsrc file already. :-S
   ;; That's why gnus-subscribe-alphabetically is done unconditionally first

(define-key input-decode-map "\e[1;5A" [C-up])
(define-key input-decode-map "\e[1;5B" [C-down])
