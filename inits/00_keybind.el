(define-key global-map [?¥] [?\\])  ;; ¥の代わりにバックスラッシュを入力する

;; C-hをbackspaceに
(bind-key "C-h" 'delete-backward-char)

;;C-x C-fで開ける種類を増やす
(ffap-bindings)

;; 画面縦分割と移動をM-t一つで行う(C-x 3 C-x o --> C-t)
(defun other-window-or-split ()
  (interactive)
  (when (one-window-p)
    (split-window-horizontally))
  (other-window 1))
(global-set-key (kbd "C-t") 'other-window-or-split)
