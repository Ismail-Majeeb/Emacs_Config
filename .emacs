 ;; Loading MELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-enabled-themes '(doom-ayu-dark))
 '(custom-safe-themes
   '("4ade6b630ba8cbab10703b27fd05bb43aaf8a3e5ba8c2dc1ea4a2de5f8d45882" "0c860c4fe9df8cff6484c54d2ae263f19d935e4ff57019999edbda9c7eda50b8" "4eb9462a8fff9153bfe88a9ef53aa043aec8b79c5298d2873e887e0c3a8b03de" "3325e2c49c8cc81a8cc94b0d57f1975e6562858db5de840b03338529c64f58d1" default))
 '(display-battery-mode t)
 '(display-time-mode t)
 '(global-display-line-numbers-mode t)
 '(menu-bar-mode nil)
 '(package-selected-packages
   '(lsp-pyright elpy elisp-autofmt highlight-defined projectile company-box quickrun lsp-java lsp-ui lsp-mode company format-all move-dup rainbow-delimiters smartparens ialign multiple-cursors prettify-math prettify-greek highlight-thing symbol-overlay rainbow-mode highlight-indent-guides atom-dark-theme atom-one-dark-theme doom-themes dimmer doom-modeline smex ido-vertical-mode ido-completing-read+ goto-line-preview centaur-tabs yascroll all-the-icons-nerd-fonts beacon nerd-icons all-the-icons dashboard lua-mode ayu-theme gotham-theme memory-usage monokai-theme which-key))
 '(scroll-bar-mode nil)
 '(size-indication-mode t)
 '(tool-bar-mode nil)
 '(tooltip-mode nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:slant normal :weight bold :height 155 :width normal :family "Fira Code"))))
 '(highlight-thing ((t (:background "light coral")))))


;; To Load all-the-icon icons
(when (display-graphic-p)
  (require 'all-the-icons))

(use-package all-the-icons
  :config
  ;; Make sure the icon fonts are good to go
  (set-fontset-font t 'unicode (font-spec :family "all-the-icons") nil 'append)
  (set-fontset-font t 'unicode (font-spec :family "file-icons") nil 'append)
  (set-fontset-font t 'unicode (font-spec :family "Material Icons") nil 'append)
  (set-fontset-font t 'unicode (font-spec :family "github-octicons") nil 'append)
  (set-fontset-font t 'unicode (font-spec :family "FontAwesome") nil 'append)
  (set-fontset-font t 'unicode (font-spec :family "Weather Icons") nil 'append))

;; --------------------------[Dashboard Package]----------------------------
(require 'dashboard)
(dashboard-setup-startup-hook)

;; Set the title
(setq dashboard-banner-logo-title "Welcome to Emacs")

;; Set the banner
(setq dashboard-startup-banner 'logo)
;; Value can be:
;;  - 'official which displays the official emacs logo.
;;  - 'logo which displays an alternative emacs logo.
;;  - an integer which displays one of the text banners
;;    (see dashboard-banners-directory files).
;;  - a string that specifies a path for a custom banner
;;    currently supported types are gif/image/text/xbm.
;;  - a cons of 2 strings which specifies the path of an image to use
;;    and other path of a text file to use if image isn't supported.
;;    ("path/to/image/file/image.png" . "path/to/text/file/text.txt").
;;  - a list that can display an random banner,
;;    supported values are: string (filepath), 'official, 'logo and integers.

;; Content is not centered by default. To center, set
(setq dashboard-center-content t)

;; vertically center content
(setq dashboard-vertically-center-content t)

;; To disable shortcut "jump" indicators for each section, set
(setq dashboard-show-shortcuts nil)

;; To customize which items are displayed, you can use the following snippet
(setq dashboard-items '((recents   . 5)
                        (bookmarks . 5)
                        (projects  . 5)))

;; To enable cycle navigation between each section:
(setq dashboard-navigation-cycle t)

;; To customize item shortcuts:
(setq dashboard-item-shortcuts '((recents   . "r")
                                 (bookmarks . "m")
                                 (projects  . "p")
                                 (agenda    . "a")
                                 (registers . "e")))

; display icons on both GUI and terminal
(setq dashboard-display-icons-p t)

;; To use all-the-icons package:
(setq dashboard-icon-type 'all-the-icons)

;; To use nerd-icons package:
;;(setq dashboard-icon-type 'nerd-icons)

;; To add icons to the widget headings and their items:
(setq dashboard-set-heading-icons nil)
(setq dashboard-set-file-icons t)

;; --------------------------[Beacon Package]----------------------------

(beacon-mode 1)

;; --------------------------[Yascroll Package]----------------------------

(global-yascroll-bar-mode 1)

;; --------------------------[Centaur Package]----------------------------

(require 'centaur-tabs)
(centaur-tabs-mode t)

;; You can make the headline face match the centaur-tabs-default face. This makes the tabbar have an uniform appearance.
(centaur-tabs-headline-match)

;; To change the tab style. There are a lot of styles [alternate, bar, box, chamfer, rounded, slant, wave, zigzag]
(setq centaur-tabs-style "bar")

;; To change the tab height
(setq centaur-tabs-height 32)

;; To display themed icons from all the icons
(setq centaur-tabs-icon-type 'all-the-icons)
(setq centaur-tabs-set-icons t)

;; To make icons plain (same color as tabs’ text):
;; (setq centaur-tabs-plain-icons t)

;; To gray out icons for the unselected tabs:
(setq centaur-tabs-gray-out-icons 'buffer)

;;To display a colored bar at the left of the selected tab, Also you can change left to [over, under]
(setq centaur-tabs-set-bar 'left)
;; Note: If you're not using Spacmeacs, in order for the underline to display
;; correctly you must add the following line:
;;(setq x-underline-at-descent-line t)

;; To change the displayed string for the close button
(setq centaur-tabs-close-button "")

;; To display a marker indicating that a buffer has been modified (atom-style)
(setq centaur-tabs-set-modified-marker t)

;; To change the displayed string for the modified-marker
(setq centaur-tabs-modified-marker "")

;; To customize the tabs font by changing it’s height and font family use the following function:
(centaur-tabs-change-fonts "Fira Sans Bold" 120)

;; The default behaviour from the centaur-tabs-forward/backward functions is to go through all the tabs
;; in the current group and then change the group. If this is something that is to desired to be changed
;; the centaur-tabs-cycle-scope custom must be changed like this:
(setq centaur-tabs-cycle-scope 'tabs)

;; To display cool navigation buttons.
(setq centaur-tabs-show-navigation-buttons t)

;; Adds a count of the current tab position in the total number of tabs in the current window.
(setq centaur-tabs-show-count t)

(global-set-key (kbd "C-<prior>")  'centaur-tabs-backward)
(global-set-key (kbd "C-<next>") 'centaur-tabs-forward)

;; --------------------------[goto-line-preview Package]----------------------------

(global-set-key [remap goto-line] 'goto-line-preview)

;; --------------------------[ido-completing-read+ Package]----------------------------

(ido-mode t)
(ido-everywhere t)

(require 'ido-completing-read+)
(setq ido-ubiquitous-mode t)

;; --------------------------[ido-vertical-mode Package]----------------------------

(require 'ido-vertical-mode)
(ido-vertical-mode 1)
;; (setq ido-vertical-define-keys 'C-n-and-C-p-only)
(setq ido-vertical-show-count t)

;; --------------------------[smex Package]----------------------------

(require 'smex)
(global-set-key (kbd "M-x") 'smex)

;; --------------------------[ivy Package]----------------------------



;; --------------------------[HELM Package]----------------------------



;; --------------------------[doom-modeline Package]----------------------------

(require 'doom-modeline)
(doom-modeline-mode 1)
;; There are a lot of tweaks and configs you can check if you want!!!
;; https://github.com/seagle0128/doom-modeline

;; --------------------------[dimmer Package]----------------------------

(require 'dimmer)
(dimmer-configure-which-key)
(dimmer-mode t)

;; --------------------------[highlight-indent-guides Package]----------------------------

(require 'highlight-indent-guides)
(add-hook 'prog-mode-hook 'highlight-indent-guides-mode)
(setq highlight-indent-guides-method 'bitmap)
(setq highlight-indent-guides-auto-enabled nil)
(set-face-background 'highlight-indent-guides-odd-face "white smoke")
(set-face-background 'highlight-indent-guides-even-face "peach puff")
(set-face-foreground 'highlight-indent-guides-character-face "gainsboro")

;; --------------------------[rainbow-mode Package]----------------------------

(require 'rainbow-mode)
(setq rainbow-ansi-colors t)
(setq rainbow-html-colors t)
(setq rainbow-latex-colors t)
(setq rainbow-x-colors t)

;; --------------------------[symbol-overlay Package]----------------------------

(require 'symbol-overlay)
(global-set-key (kbd "M-i") 'symbol-overlay-put)
(global-set-key (kbd "M-n") 'symbol-overlay-switch-forward)
(global-set-key (kbd "M-p") 'symbol-overlay-switch-backward)
(global-set-key (kbd "<f7>") 'symbol-overlay-mode)
(global-set-key (kbd "<f8>") 'symbol-overlay-remove-all)

;; --------------------------[highlight-thing Package]----------------------------

(require 'highlight-thing)
(global-highlight-thing-mode)
(setq highlight-thing-delay-seconds 0.2)
;; The colour is set above in the "custom-set-faces" area.
;; Check https://github.com/fgeller/highlight-thing.el For More Tweaks.

;; --------------------------[emojify Package]----------------------------



;; --------------------------[prettify-symbols-mode Package]----------------------------

(global-prettify-symbols-mode +1)

;; --------------------------[multiple-cursors Package]----------------------------

;; Check https://github.com/magnars/multiple-cursors.el For More Tweaks.
(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; --------------------------[ialign Package]----------------------------

;; Check https://github.com/mkcms/interactive-align For How To Use it.
(require 'ialign)
(global-set-key (kbd "C-x l") #'ialign)

;; --------------------------[smartparens Package]----------------------------

(require 'smartparens-config)
;; Always start smartparens mode
(add-hook 'prog-mode-hook #'smartparens-mode)
(add-hook 'text-mode-hook #'smartparens-mode)
(add-hook 'markdown-mode-hook #'smartparens-mode)

;; --------------------------[rainbow-delimiters Package]----------------------------

(require ' rainbow-delimiters)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

;; --------------------------[mode-dup Package]----------------------------

(require 'move-dup)
(global-set-key (kbd "M-<up>") 'move-dup-move-lines-up)
(global-set-key (kbd "M-<down>") 'move-dup-move-lines-down)
(global-set-key (kbd "C-M-<up>") 'move-dup-duplicate-up)
(global-set-key (kbd "C-M-<down>") 'move-dup-duplicate-down)

;; --------------------------[format-all Package]----------------------------

(require 'format-all)
(add-hook 'prog-mode-hook 'format-all-mode)

;; --------------------------[company Package]----------------------------

(require 'company)
(add-hook 'after-init-hook 'global-company-mode)

;; --------------------------[company Package]----------------------------

;; Check https://github.com/sebastiencs/company-box/ for more tweaks. 
(require 'company-box)
(add-hook 'company-mode-hook 'company-box-mode)

;; --------------------------[dumb-jump Package]----------------------------



;; --------------------------[lsp-mode Package]----------------------------

;; check https://emacs-lsp.github.io/lsp-mode/ for more info.
;; if you want to change prefix for lsp-mode keybindings.
(setq lsp-keymap-prefix "s-l")
(require 'lsp-mode)
(add-hook 'prog-mode-hook #'lsp)

(setq lsp-ido-show-symbol-kind t
      lsp-ido-show-symbol-filename t)

;; --------------------------[lsp-ui Package]------------------------------

(require 'lsp-ui)

;; lsp-ui-sideline:
;; show diagnostics messages in sideline
(setq lsp-ui-sideline-show-diagnostics t)
;; show hover messages in sideline
(setq lsp-ui-sideline-show-hover t)
;; show code actions in sideline
(setq lsp-ui-sideline-show-code-actions t)
;; When set to line the information will be updated when user changes current line
;; otherwise the information will be updated when user changes current point
(setq lsp-ui-sideline-update-mode t)
;; seconds to wait before showing sideline
(setq lsp-ui-sideline-delay t)

;; lsp-ui-peek:
;; enable lsp-ui-peek
(setq lsp-ui-peek-enable t)
;;  show the directory of files
(setq lsp-ui-peek-show-directory t)
;; You may remap xref-find-{definitions,references} (bound to M-. M-? by default):
(define-key lsp-ui-mode-map [remap xref-find-definitions] #'lsp-ui-peek-find-definitions)
(define-key lsp-ui-mode-map [remap xref-find-references] #'lsp-ui-peek-find-references)
;; There is a window-local jump list dedicated to cross references:
(setq lsp-ui-peek-jump-backward t)
(setq lsp-ui-peek-jump-forward t)

;; lsp-ui-doc
;; Enable lsp-ui-doc
(setq lsp-ui-doc-enable t)
;; Where to display the doc (top, bottom or at-point)
(setq lsp-ui-doc-position 'top)
;; Where to display the doc (left or right)
(setq lsp-ui-doc-side 'right)
;; Number of seconds before showing the doc
(setq lsp-ui-doc-delay 1.5)
;; When non-nil, move the cursor over a symbol to show the doc
;;(setq lsp-ui-doc-show-with-cursor)
;; When non-nil, move the mouse pointer over a symbol to show the doc
;;(setq lsp-ui-doc-show-with-mouse)


;; --------------------------[lsp-java Package]----------------------------

(require 'lsp-java)
(add-hook 'java-mode-hook #'lsp)

;; --------------------------[lsp-pyright Package]----------------------------

(require 'lsp-pyright)
(add-hook 'python-mode-hook #'lsp) ; or lsp-deferred

;; --------------------------[quickrun Package]----------------------------
;; check https://github.com/emacsorphanage/quickrun for more information.
(require 'quickrun)

;; --------------------------[dap-mode Package]----------------------------

;; --------------------------[which-key Package]----------------------------

;; check https://github.com/justbur/emacs-which-key/ for more tweaks and info.

(require 'which-key)
(which-key-mode)
(setq which-key-setup-side-window-bottom t)

;; --------------------------[projectile Package]----------------------------

;; Check https://docs.projectile.mx/projectile/usage.html for more info.
(require 'projectile)
(projectile-mode +1)
;; Recommended keymap prefix on Windows/Linux
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
;; Automated Project Discovery
(setq projectile-project-search-path '("~/Dev/"))

;; --------------------------[flycheck Package]----------------------------

;; Check https://www.flycheck.org/en/latest/ for more info.
;; (require 'flycheck)
(setq global-flycheck-mode +1)

;; --------------------------[highlight-defind Package]----------------------------

;; Check https://github.com/Fanael/highlight-defined for more tweaks.
;;(require 'highlight-defined-mode)
(add-hook 'emacs-lisp-mode-hook 'highlight-defined-mode)

;; --------------------------[elisp-autofmt Package]----------------------------

;; Check https://codeberg.org/ideasman42/emacs-elisp-autofmt for more tweaks.
(require 'elisp-autofmt)

;; --------------------------[treemacs Package]----------------------------

;; Check https://github.com/Alexander-Miller/treemacs?tab=readme-ov-file for more tweaks.
(require 'treemacs)

;;(define-key winum-keymap (kbd "M-0") #'treemacs-select-window))

(setq treemacs-display-in-side-window          t)
;; (setq treemacs-eldoc-display                   'simple)
(setq treemacs-file-event-delay                2000)
(setq treemacs-file-follow-delay               0.2)
;; (setq treemacs-file-name-transformer           #'identity)
;; (setq treemacs-directory-name-transformer      #'identity)
(setq treemacs-indentation                     2)
(setq treemacs-indentation-string              " ")
(setq treemacs-is-never-other-window           nil)
(setq treemacs-max-git-entries                 5000)
(setq treemacs-missing-project-action          'ask)
(setq treemacs-move-forward-on-expand          nil)
(setq treemacs-no-png-images                   nil)
(setq treemacs-no-delete-other-windows         t)
(setq treemacs-project-follow-cleanup          nil)
(setq treemacs-position                        'left)
;; (setq treemacs-read-string-input               'from-child-frame)
;; (setq treemacs-recenter-distance               0.1)
;; (setq treemacs-recenter-after-file-follow      nil)
;; (setq treemacs-recenter-after-tag-follow       nil)
;; (setq treemacs-recenter-after-project-jump     'always)
;; (setq treemacs-recenter-after-project-expand   'on-distance)
;; (setq treemacs-litter-directories              '("/node_modules" "/.venv" "/.cask"))
;; (setq treemacs-project-follow-into-home        nil)
(setq treemacs-show-cursor                     nil)
(setq treemacs-show-hidden-files               t)
(setq treemacs-silent-filewatch                nil)
(setq treemacs-silent-refresh                  nil)
(setq treemacs-sorting                         'alphabetic-asc)
(setq treemacs-select-when-already-in-treemacs 'move-back)
(setq treemacs-space-between-root-nodes        t)
(setq treemacs-wide-toggle-width               45)
(setq treemacs-width                           35)
(setq treemacs-width-increment                 1)
(setq treemacs-width-is-initially-locked       t)
(setq treemacs-workspace-switch-cleanup        nil)

;;the default width and height of the icons is 22 pixels. If you are
;; using a Hi-DPI display, uncomment this to double the icon size.
(setq treemacs-resize-icons 30)
(setq treemacs-follow-mode t)
(setq treemacs-filewatch-mode t)
(setq treemacs-fringe-indicator-mode 'always)
(global-set-key (kbd "M-0"      ) 'treemacs-select-window)
(global-set-key (kbd "C-x t 1"  ) 'treemacs-delete-other-windows)
(global-set-key (kbd "C-x t t"  ) 'treemacs)
(global-set-key (kbd "C-x t d"  ) 'treemacs-select-directory)
(global-set-key (kbd "C-x t B"  ) 'treemacs-bookmark)
(global-set-key (kbd "C-x t C-t") 'treemacs-find-file)
(global-set-key (kbd "C-x t M-t") 'treemacs-find-tag)
;; (setq treemacs-deferred-git-apply-delay 0.5)
;; (setq treemacs-file-extension-regex            treemacs-last-period-regex-value)
;; (setq treemacs-follow-after-init               t)
;; (setq treemacs-expand-after-init               t)
;; (setq treemacs-find-workspace-method           'find-for-file-or-pick-first)
;; (setq treemacs-git-command-pipe                "")
;; (setq treemacs-goto-tag-strategy               'refetch-index)
;; (setq treemacs-header-scroll-indicators        '(nil . "^^^^^^"))
;; (setq treemacs-hide-dot-git-directory          t)
;; (setq treemacs-tag-follow-cleanup              t)
;; (setq treemacs-tag-follow-delay                1.5)
;; (setq treemacs-text-scale                      nil)
;; (setq treemacs-user-mode-line-format           nil)
;; (setq treemacs-user-header-line-format         nil)

(require 'treemacs-projectile)
(require 'treemacs-all-the-icons)
(require 'treemacs-nerd-icons)
(require 'treemacs-magit-autoloads)

;; --------------------------[elpy Package]----------------------------

(require 'elpy)
(elpy-enable)



;; --------------------------[lsp-mode Package]----------------------------
;; --------------------------[lsp-mode Package]----------------------------
;; --------------------------[lsp-mode Package]----------------------------
;; --------------------------[lsp-mode Package]----------------------------
;; --------------------------[lsp-mode Package]----------------------------

;; I will Stop configuring this file for a while.
;; Last thing I did was lsp-pyright and elpy packages.














