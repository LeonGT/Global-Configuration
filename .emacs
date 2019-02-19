
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(defun split-3-windows-horizontally-evenly ()
  (interactive)
  (command-execute 'split-window-horizontally)
  (command-execute 'split-window-horizontally)
  (command-execute 'balance-windows)
)
(global-set-key (kbd "C-x 4") 'split-3-windows-horizontally-evenly)


(setq linum-format "%4d\u2502 ")
(global-set-key [(control z)] nil)
;;(setq inhibit-startup-screen t)

;; init.el --- Emacs configuration

;; INSTALL PACKAGES
;; --------------------------------------

(setq inhibit-startup-message t) ;; hide the startup message
(load-theme 'material t) ;; load material theme
(global-linum-mode t) ;; enable line numbers globally
(setq default-tab-width 4)
(setq indent-tabs-mode nil)

(add-hook 'python-mode-hook
      (lambda ()
        (setq tab-width 4)
		(setq indent-tabs-mode nil)
        (setq python-indent-offset 4)))


(winner-mode 1)
