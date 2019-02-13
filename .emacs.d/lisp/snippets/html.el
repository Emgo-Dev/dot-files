; HTML Snippets ;
(require 'sgml-mode)
(bind-key html-mode-map "M-1 < a >" (lambda nil nil (interactive)
  (insert "<a></a>")
  (backward-char 4)))
(bind-key html-mode-map "< a / >" (lambda nil nil (interactive)
  (insert "<a title=\"\" target=\"\" href=\"\"></a>")
  (backward-char 4)))
(bind-key html-mode-map "< i n p u t t e x t / >" (lambda nil nil (interactive)
  (insert "<input type=\"text\" />")))
(bind-key html-mode-map "< t e x t a r e a / >" (lambda nil nil (interactive)
  (insert "<textarea placeholder=\"Type here...\"></textarea>")
  (backward-char 11)))
(bind-key html-mode-map "< p / >" (lambda nil nil (interactive)
  (insert "<p></p>")
  (backward-char 4)))
(bind-key html-mode-map "< u l / >" (lambda (i) nil (interactive "P")
  (setq count i)
  (insert "<ul>")
  (if i
    (while (> count 0)
      (newline 1)(space-times-2)(insert "<li></li>")(setq count (- count 1))
      (if (= count 0)
        (newline))))
  (insert "</ul>")))
(bind-key html-mode-map "< s t y l e >" (lambda nil nil (interactive)
  (insert "<style></style>")
  (backward-char 8)))
(bind-key html-mode-map "< s c r i p t >" (lambda nil nil (interactive)
  (insert "<script></script>")
  (backward-char 8)))
(bind-key html-mode-map "< l i n k >" (lambda nil nil (interactive)
  (insert "<link />")))
(bind-key html-mode-map "< l i n k / >" (lambda nil nil (interactive)
  (insert "<link rel=\"stylesheet\" type=\"text/css\" href=\"\" />")))
(bind-key html-mode-map "< p r e >" (lambda nil nil (interactive)
  (insert "<pre></pre>")
  (backward-char 6)))
(bind-key html-mode-map "c o d e" (lambda nil nil (interactive)
  (insert "<pre><div class=\"syntax\">Language</div><code></code></pre>")
  (backward-char 13)))
(bind-key html-mode-map "< c o d e >" (lambda nil nil (interactive)
  (insert "<code></code>")
  (backward-char 7)))
(bind-key html-mode-map "< h t m l / >" (lambda nil nil (interactive)
  (insert "<html></html>")
  (backward-char 7)))
(bind-key html-mode-map "h t m l" (lambda nil nil (interactive)
  (insert "<!DOCTYPE html>
<html lang=\"en\" dir=\"ltr\">
<head>
  <meta charset=\"utf-8\" />
  <title>Snippet Title</title>

  <!-- Vendor Stylesheets -->

  <!-- User Stylesheets -->

  <!-- Vendor Scripts -->

  <!-- User Scripts -->

</head>

<body>
  
</body>

<!-- Vendor Scripts -->

<!-- User Scripts -->

</html>")))
; HTML Snippets (End) ;
