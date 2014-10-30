;;; haskell-pack.el --- Haskell configuration

;;; Commentary:

;;; Code:

;; haskell-pack

(require 'install-packages-pack)
(install-packages-pack/install-packs '(purescript-mode
                                       psci
                                       repl-toggle))

(require 'purescript-mode)

(add-hook 'purescript-mode-hook (lambda ()
                                  (custom-set-variables
                                   '(capitalized-words-mode t)
                                   '(turn-on-eldoc-mode t)
                                   '(turn-on-purescript-indent t))))

(require 'psci)
(add-hook 'purescript-mode-hook 'inferior-psci-mode)

(require 'repl-toggle)
(add-to-list 'rtog/mode-repl-alist '(purescript-mode . psci))

(provide 'purescript-pack)
;;; purescript-pack.el ends here
