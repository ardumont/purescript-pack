;;; haskell-pack.el --- Haskell configuration

;;; Commentary:

;;; Code:

;; haskell-pack

(require 'install-packages-pack)
(install-packages-pack/install-packs '(purescript-mode))

(require 'purescript-mode)

(add-hook 'purescript-mode-hook (lambda ()
                                  (custom-set-variables
                                   '(capitalized-words-mode t)
                                   '(turn-on-eldoc-mode t)
                                   '(turn-on-purescript-indent t))))

(provide 'purescript-pack)
;;; purescript-pack.el ends here
