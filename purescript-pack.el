;;; haskell-pack.el --- Haskell configuration

;;; Commentary:

;;; Code:

;; haskell-pack

(use-package psci)
(use-package purescript-mode
  :config
  (add-hook 'purescript-mode-hook (lambda ()
                                    (custom-set-variables
                                     '(capitalized-words-mode t)
                                     '(turn-on-eldoc-mode t))))
  ;;(add-hook 'purescript-mode-hook 'turn-on-purescript-indentation)
  (add-hook 'purescript-mode-hook 'turn-on-purescript-indent)
  ;;(add-hook 'purescript-mode-hook 'turn-on-purescript-simple-indent)
  (add-hook 'purescript-mode-hook 'inferior-psci-mode))

(provide 'purescript-pack)
;;; purescript-pack.el ends here
