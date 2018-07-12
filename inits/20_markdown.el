;; markdown-mode
(setq auto-mode-alist (cons '("\\.md" . gfm-mode) auto-mode-alist))
(setq markdown-command "pandoc")

;(require 'w3m)
;(require 'markdown-mode)
;
;(defun w3m-browse-url-other-window (url &optional newwin)
;  (let ((w3m-pop-up-windows t))
;    (if (one-window-p) (split-window))
;    (other-window 1)
;    (w3m-browse-url url newwin)))
;
;(defun markdown-render-w3m (n)
;  (interactive "p")
;  (message (buffer-file-name))
;  (call-process "/usr/local/bin/grip" nil nil nil
;                "--gfm" "--export"
;                (buffer-file-name)
;                "/tmp/grip.html")
;  (w3m-browse-url-other-window "file://tmp/grip.html")
;  )
;(define-key markdown-mode-map "\C-c \C-c" 'markdown-render-w3m)


;; (setq github-user "mask0")
;; (setq github-pass "MII0hRa8JHgEmEPT")
;;
;; (defun my-markdown-preview ()
;;   (interactive)
;;   (when (get-process "grip") (kill-process "grip"))
;;   (when (get-process "grip<1>") (kill-process "grip<1>"))  ;; プロセスが二重に起動していた場合、そちらもkillする
;;   (start-process "grip" "*grip*" "grip" (format "--user=%s" github-user) (format "--pass=%s" github-pass) "--browser" buffer-file-name)
;;   (when (get-process "grip") (set-process-query-on-exit-flag (get-process "grip") nil))
;;   (when (get-process "grip<1>") (set-process-query-on-exit-flag (get-process "grip<1>") nil))    ;; プロセスが二重に起動していた場合、そちらもフラグを設定する
;;   )
;; (define-key global-map (kbd "C-c p") 'my-markdown-preview)
;;
