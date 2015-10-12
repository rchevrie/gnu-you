;; Setup scala mode along with ensime

;; On Macs, it might be a safer bet to use exec-path instead of PATH, for instance: 
(setq exec-path (append exec-path '("/usr/local/bin")))

(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)


;; OPTIONAL
;; there are some great Scala yasnippets, browse through:
;; https://github.com/AndreaCrotti/yasnippet-snippets/tree/master/scala-mode
(add-hook 'scala-mode-hook #'yas-minor-mode)
;; but company-mode / yasnippet conflict. Disable TAB in company-mode with
(define-key company-active-map [tab] nil)
