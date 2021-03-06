(package-initialize)
(defconst +home-dir+ "~")
(defconst +emacs-dir+ (concat +home-dir+ "/emacs"))
(defconst +emacs-profiles-dir+ (concat +emacs-dir+ "/profiles"))
(defconst +emacs-lib-dir+ (concat +emacs-dir+ "/libs"))
(defconst +emacs-conf-dir+ (concat +emacs-dir+ "/config"))
(defconst +emacs-tmp-dir+ (concat +emacs-dir+ "/tmp"))
(defconst +emacs-snippets-dir+ (concat +emacs-dir+ "/snippets"))

(defun add-load-path (p)
  (add-to-list 'load-path (concat +emacs-dir+ "/" p)))

(defun add-lib-path (p)
  (add-to-list 'load-path (concat +emacs-lib-dir+ "/" p)))

(defun load-conf-file (f)
  (load-file (concat +emacs-conf-dir+ "/" f ".el")))

(defun load-lib-file (f)
  (load-file (concat +emacs-lib-dir+ "/" f)))

(defun load-profile (p)
  (load-file (concat +emacs-profiles-dir+ "/" p ".el")))

(defun load-customizations ()
  (let ((filename (concat +emacs-dir+ "/custom.el")))
    (if (file-readable-p filename)
        (load-file filename))))

(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)

(load-theme 'material t)
(tool-bar-mode -1)
(add-load-path "")
(add-load-path "lib")

(load-profile "default")
(load-profile "js")
(subword-mode +1)
(define-key input-decode-map "\e\eOA" [(meta up)])
(define-key input-decode-map "\e\eOB" [(meta down)])
(global-set-key [(meta up)] 'transpose-line-up)
(global-set-key [(meta down)] 'transpose-line-down)
(load-customizations)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(global-set-key [f8] 'neotree-toggle)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(zencoding-preview-output ((t (:inherit highlight)))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (material)))
 '(custom-safe-themes
   (quote
    ("98cc377af705c0f2133bb6d340bf0becd08944a588804ee655809da5d8140de6" default)))
 '(frame-background-mode (quote dark))
 '(grep-find-ignored-directories
   (quote
    ("SCCS" "RCS" "CVS" "MCVS" ".svn" ".git" ".hg" ".bzr" "_MTN" "_darcs" "{arch}" "node_modules" "dist")))
 '(js2-strict-inconsistent-return-warning nil)
 '(js2-strict-missing-semi-warning nil))
