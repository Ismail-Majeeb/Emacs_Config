;;; highlight-thing-autoloads.el --- automatically extracted autoloads (do not edit)   -*- lexical-binding: t -*-
;; Generated by the `loaddefs-generate' function.

;; This file is part of GNU Emacs.

;;; Code:

(add-to-list 'load-path (or (and load-file-name (directory-file-name (file-name-directory load-file-name))) (car load-path)))



;;; Generated autoloads from highlight-thing.el

(autoload 'highlight-thing-mode "highlight-thing" "\
Minor mode that highlights things at point

This is a minor mode.  If called interactively, toggle the
`Highlight-Thing mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `highlight-thing-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t)
(put 'global-highlight-thing-mode 'globalized-minor-mode t)
(defvar global-highlight-thing-mode nil "\
Non-nil if Global Highlight-Thing mode is enabled.
See the `global-highlight-thing-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-highlight-thing-mode'.")
(custom-autoload 'global-highlight-thing-mode "highlight-thing" nil)
(autoload 'global-highlight-thing-mode "highlight-thing" "\
Toggle Highlight-Thing mode in all buffers.
With prefix ARG, enable Global Highlight-Thing mode if ARG is
positive; otherwise, disable it.

If called from Lisp, toggle the mode if ARG is `toggle'.
Enable the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

Highlight-Thing mode is enabled in all buffers where
`highlight-thing-mode-maybe-activate' would do it.

See `highlight-thing-mode' for more information on Highlight-Thing
mode.

(fn &optional ARG)" t)
(register-definition-prefixes "highlight-thing" '("highlight-thing-"))

;;; End of scraped data

(provide 'highlight-thing-autoloads)

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; no-native-compile: t
;; coding: utf-8-emacs-unix
;; End:

;;; highlight-thing-autoloads.el ends here
