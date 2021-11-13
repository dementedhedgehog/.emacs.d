;
;  Blaizes Emacs File
;
; C-c <  dedent block
; C-c >  indent block

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Set up the package manager
; 
(message "set up the package manager")

;; ; start the package manager
;; (require 'package)

;; ; add to the repository list
;; (add-to-list 'package-archives
;;              '("marmalade" . "http://marmalade-repo.org/packages/"))
;; (add-to-list 'package-archives
;;              '("melpa" . "http://melpa.milkbox.net/packages/") t)

;; ; initialize the package
;; (package-initialize)



;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ; auto-complete
;; ; 
;; (message "set up auto-complete")
;; (require 'auto-complete)

;; ; do default config for auto complete
;; (require 'auto-complete-config)
;; (ac-config-default)

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ; flymake-mode 
;; ; (checks syntax on the fly)
;; ; 
;; ;; (message "set up flymake")
;; ;; (defun blaizes:flymake-google-init () 
;; ;;   (require 'flymake-google-cpplint)
;; ;;   (custom-set-variables
;; ;;    '(flymake-google-cpplint-command "/usr/local/bin/cpplint"))
;; ;;   (flymake-google-cpplint-load)
;; ;;   )
;; ;; (add-hook 'c-mode-hook 'blaizes:flymake-google-init)
;; ;; (add-hook 'c++-mode-hook 'blaizes:flymake-google-init)

;; ;; ; start google-c-style with emacs
;; ;; (require 'google-c-style)
;; ;; (add-hook 'c-mode-common-hook 'google-set-c-style)
;; ;; (add-hook 'c-mode-common-hook 'google-make-newline-indent)

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ; setup auto complete for c headers
;; ; 
;; (message "set up auto-complete for c headers")
;; (defun blaizes:ac-c-header-init ()
;;   (require 'auto-complete-c-headers)
;;   (add-to-list 'ac-sources 'ac-source-c-headers)

;;   ; have to tell the code where the header files are so 
;;   ; it can autocomplete them.  get this by running: gcc -xc++ -E -v -
;;   (add-to-list 'achead:include-directories '"/usr/include/c++/4.8")
;;   (add-to-list 'achead:include-directories '"/usr/include/x86_64-linux-gnu/c++/4.8")
;;   (add-to-list 'achead:include-directories '"/usr/include/c++/4.8/backward")
;;   (add-to-list 'achead:include-directories '"/usr/lib/gcc/x86_64-linux-gnu/4.8/include")
;;   (add-to-list 'achead:include-directories '"/usr/local/include")
;;   (add-to-list 'achead:include-directories '"/usr/lib/gcc/x86_64-linux-gnu/4.8/include-fixed")
;;   (add-to-list 'achead:include-directories '"/usr/include/x86_64-linux-gnu")
;;   (add-to-list 'achead:include-directories '"/usr/include")
;; )
;; (add-hook 'c-mode-common-hook 'blaizes:ac-c-header-init)
;; (add-hook 'c++-mode-common-hook 'blaizes:ac-c-header-init)



;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ; yasnippet
;; ; 
;; (message "set up yet another snippet extension")
;; (require 'yasnippet)

;; ; ensure it's always on
;; (yas-global-mode 1)



;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ; yasnippet
;; ; 
;; (add-to-list 'load-path "/home/blaize/env/emacs/go-mode.el")
;; (autoload 'go-mode "go-mode" nil t)
;; (add-to-list 'auto-mode-alist '("\\.go\\'" . go-mode))

;; (add-hook 'go-mode-hook
;;           (lambda ()
;;             (add-hook 'before-save-hook 'gofmt-before-save)
;;             (setq tab-width 4)
;;             (setq indent-tabs-mode 1)))

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ; iedit-mode 
;; ; (for editing the same variable name in lots of places)
;; ; 
;; (message "set up iedit-mode")
;; (define-key global-map (kbd "C-c ;") 'iedit-mode)
;; ; start flymake-google-cpplint-load
;; ; let's define a function for flymake initialization


;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ; turn on semantic
;; ; (for editing the same variable name in lots of places)
;; ;  
;; (message "set up semantic")
;; (semantic-mode 1)
;; ; let's define a function which adds semantic as a suggestion backend to auto complete
;; ; and hook this function to c-mode-common-hook
;; (defun blaizes:add-semantic-to-autocomplete() 
;;   (add-to-list 'ac-sources 'ac-source-semantic)
;; )
;; (add-hook 'c-mode-common-hook 'blaizes:add-semantic-to-autocomplete)

;; ; turn on ede mode 
;; ;(global-ede-mode 1)

;; ; create a project for our program.
;; ;(ede-cpp-root-project "my project" 
;; ;		      :file "/home/blaize/proj/unreal/UnrealEngine_4.6/README.md" 
;; ;		      :include-path '("/Engine"))

;; ; you can use system-include-path for setting up the system header file locations.
;; ; turn on automatic reparsing of open buffers in semantic
;; (global-semantic-idle-scheduler-mode 1)



;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ; turn on projectile
;; ; (for finding files in projects).
;; ;  
;; (message "set up projectile")
;; (require 'projectile)
;; (projectile-global-mode) ;; to enable in all buffers
;; ; enable caching
;; (setq projectile-enable-caching t)


;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ; 
;; ; Turn on ggtags
;; ;  
;; (add-hook 'c-mode-common-hook
;;           (lambda ()
;;             (when (derived-mode-p 'c-mode 'c++-mode 'java-mode)
;;               (ggtags-mode 1))))


;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ; 
;; ; Javascript
;; ;  
;; (defun spaces-not-tabs-js-mode-hook ()
;;   "Custom `js-mode' behaviours."
;;   (setq indent-tabs-mode nil))

;; (add-hook 'js-mode-hook 'spaces-not-tabs-js-mode-hook)

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;
;; ; Add some methods
;; ;
;; (message "add method kill-all-buffers")
;; (defun kill-all-buffers ()
;;     "Kill all buffers."
;;     (interactive)
;;     (mapc 'kill-buffer (buffer-list)))




;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;
;; ; User interface modes
;; ;

;; ; save space by hidding the menu and tool bar
;; (menu-bar-mode -1)
;; (tool-bar-mode -1)

;; ; hide the startup message
;; (message "hide the startup message")
;; (setq inhibit-startup-message t)


;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;
;; ; Oooh - Pretty Colours
;; ;
;; (message "turn on font-lock mode")

;; ;(require 'extra-latex-font-lock)
;; ;(setq font-lock-maximum-decoration t)

;; ; turn on pretty colours
;; (global-font-lock-mode t)

;; ; fn for setting pretty frame colours
;; (defun set-frame-options ()
;;   (set-foreground-color "yellow")
;;   (set-background-color "black")
;;   (set-cursor-color "Blue")
;;   (message "set frame options")
;; )
;; ; set the frame options for this frame using the fn above
;; (set-frame-options)
;; (defun set-any-other-frame-options (frame)
;;   (select-frame frame)
;;   (set-frame-options)
;; )
;; ; and any other frames we create..
;; (setq after-make-frame-functions 'set-any-other-frame-options)

;; ; set faces at the end to make sure they don't get clobbered
;; (cond ((and t window-system)
;;        (message "setting faces")
;;        (custom-set-faces
;;         '(font-lock-comment-face ((t (:foreground "green"))))
;; 		  '(font-lock-string-face ((t (:foreground "wheat"))))
;; 		  '(font-lock-keyword-face ((t (:foreground "orangered"))))
;; 		  '(show-paren-mismatch-face ((t (:background "red"))))
;; 		  '(font-lock-type-face ((t (:foreground "MediumSpringGreen"))))
;; 		  '(modeline ((t (:foreground "gold" :background "navy"))))
;; 		  '(show-paren-match-face ((t (:background "blue"))))
;; 		  '(font-lock-function-name-face ((t (:foreground "orange"))))
;; 		  )
;;        )
;;       )


;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ; Turn on the python magic
;; ; 
;; (message "set up the python stuff, elpy")
;; ;(elpy-enable)


;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ; Turn on semantic, a c/c++ file navigation library
;; ; 
;; ;; (message "set up semantic (helps navigate in code)")
;; ;; (semantic-mode 1)

;; ;; ;; Semantic
;; ;; (global-semantic-idle-completions-mode t)
;; ;; (global-semantic-decoration-mode t)
;; ;; (global-semantic-highlight-func-mode t)
;; ;; (global-semantic-show-unmatched-syntax-mode t)

;; ;;(define-key global-map (kbd "C-c J") 'semantic-ia-fast-jump)
;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(package-selected-packages
;;    (quote
;;     (yaml-mode typescript tss ts-comint tide shader-mode projectile magit iedit graphviz-dot-mode google-c-style gited git-command git-blamed ggtags flymake-google-cpplint flymake-cursor f expand-region elpy dot-mode csharp-mode auto-complete-c-headers))))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(font-lock-comment-face ((t (:foreground "green"))))
;;  '(font-lock-function-name-face ((t (:foreground "orange"))))
;;  '(font-lock-keyword-face ((t (:foreground "orangered"))))
;;  '(font-lock-string-face ((t (:foreground "wheat"))))
;;  '(font-lock-type-face ((t (:foreground "MediumSpringGreen"))))
;;  '(modeline ((t (:foreground "gold" :background "navy"))))
;;  '(show-paren-match-face ((t (:background "blue"))))
;;  '(show-paren-mismatch-face ((t (:background "red")))))
