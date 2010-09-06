(add-to-list 'load-path (concat elisp-home "/color-theme-6.6.0"))
(eval-when-compile    (require 'color-theme))
(defun my-color-theme ()
  "Color theme by Ai.Freedom, created 2008-07-22."
  (interactive)
  (color-theme-install
   '(my-color-theme
     ((background-color . "DodgerBlue4")
      (background-mode . dark)
      (background-toolbar-color . "#bfbfbfbfbfbf")
      (border-color . "#000000000000")
      (bottom-toolbar-shadow-color . "#6c6c68686868")
      (cursor-color . "DarkGoldenrod1")
      (foreground-color . "white smoke")
      (mouse-color . "black")
      (top-toolbar-shadow-color . "#e5e5e0e0e1e1"))
     ((browse-kill-ring-separator-face . bold)
      (compilation-message-face . underline)
      (ecb-analyse-bucket-element-face . ecb-analyse-bucket-element-face)
      (ecb-analyse-bucket-node-face . ecb-analyse-bucket-node-face)
      (ecb-analyse-face . ecb-default-highlight-face)
      (ecb-analyse-general-face . ecb-default-general-face)
      (ecb-directories-general-face . ecb-default-general-face)
      (ecb-directory-face . ecb-default-highlight-face)
      (ecb-directory-not-accessible-face . ecb-directory-not-accessible-face)
      (ecb-history-face . ecb-default-highlight-face)
      (ecb-history-general-face . ecb-default-general-face)
      (ecb-method-face . ecb-default-highlight-face)
      (ecb-method-non-semantic-face . speedbar-tag-face)
      (ecb-methods-general-face . ecb-default-general-face)
      (ecb-mode-line-data-face . ecb-mode-line-data-face)
      (ecb-mode-line-prefix-face . ecb-mode-line-prefix-face)
      (ecb-mode-line-win-nr-face . ecb-mode-line-win-nr-face)
      (ecb-source-face . ecb-default-highlight-face)
      (ecb-source-in-directories-buffer-face . ecb-source-in-directories-buffer-face)
      (ecb-source-read-only-face . ecb-source-read-only-face)
      (ecb-sources-general-face . ecb-default-general-face)
      (ecb-tag-header-face . ecb-tag-header-face)
      (ecb-tree-guide-line-face . ecb-tree-guide-line-face)
      (goto-address-mail-face . italic)
      (goto-address-mail-mouse-face . secondary-selection)
      (goto-address-url-face . bold)
      (goto-address-url-mouse-face . highlight)
      (ibuffer-deletion-face . font-lock-type-face)
      (ibuffer-filter-group-name-face . bold)
      (ibuffer-marked-face . font-lock-warning-face)
      (ibuffer-title-face . font-lock-type-face)
      (list-matching-lines-buffer-name-face . underline)
      (list-matching-lines-face . match)
      (view-highlight-face . highlight)
      (widget-mouse-face . highlight))
     (default ((t (:stipple nil :background "DodgerBlue4" :foreground "white smoke" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 121 :width normal :family "bitstream-bitstream vera sans mono"))))
     (blue ((t (:foreground "blue"))))
     (bold ((t (:bold t :weight bold))))
     (bold-italic ((t (nil))))
     (border ((t (:background "#000000000000"))))
     (border-glyph ((t (nil))))
     (buffer-menu-buffer ((t (:bold t :weight bold))))
     (button ((t (:underline t))))
     (cmode-bracket-face ((t (:bold t :weight bold))))
     (comint-highlight-input ((t (:bold t :weight bold))))
     (comint-highlight-prompt ((t (:foreground "cyan1"))))
     (compilation-column-number ((t (:bold t :weight bold :foreground "gold1"))))
     (compilation-error ((t (:foreground "tomato" :background "red"))))
     (compilation-info ((t (:bold t :foreground "Green1" :weight bold))))
     (compilation-line-number ((t (:foreground "light yellow"))))
     (compilation-warning ((t (:bold t :foreground "Orange" :weight bold))))
     (completions-common-part ((t (:family "bitstream-bitstream vera sans mono" :width normal :weight normal :slant normal :underline nil :overline nil :strike-through nil :box nil :inverse-video nil :foreground "white smoke" :background "DodgerBlue4" :stipple nil :height 121))))
     (completions-first-difference ((t (:bold t :weight bold))))
     (cperl-array-face ((t (:bold t :foreground "wheat" :weight bold))))
     (cperl-hash-face ((t (:bold t :foreground "chartreuse" :weight bold))))
     (cursor ((t (:background "DarkGoldenrod1"))))
     (custom-button ((t (nil))))
     (custom-button-mouse ((t (:background "grey90" :foreground "black" :box (:line-width 2 :style released-button)))))
     (custom-button-pressed ((t (:background "lightgrey" :foreground "black" :box (:line-width 2 :style pressed-button)))))
     (custom-button-pressed-unraised ((t (:underline t :foreground "violet"))))
     (custom-button-unraised ((t (:underline t))))
     (custom-changed ((t (:background "blue" :foreground "white"))))
     (custom-comment ((t (:background "dim gray"))))
     (custom-comment-tag ((t (:foreground "gray80"))))
     (custom-documentation ((t (nil))))
     (custom-face-tag ((t (:bold t :family "helv" :underline t :weight bold :height 1.2))))
     (custom-group-tag ((t (:bold t :family "helv" :foreground "blue" :underline t :weight bold :height 1.2))))
     (custom-group-tag-1 ((t (:bold t :family "helv" :foreground "red" :underline t :weight bold :height 1.2))))
     (custom-invalid ((t (:background "red" :foreground "yellow"))))
     (custom-link ((t (:underline t :foreground "cyan1"))))
     (custom-modified ((t (:background "blue" :foreground "white"))))
     (custom-rogue ((t (:background "black" :foreground "pink"))))
     (custom-saved ((t (:underline t))))
     (custom-set ((t (:background "white" :foreground "blue"))))
     (custom-state ((t (:bold t :foreground "cyan" :weight bold))))
     (custom-themed ((t (:background "blue1" :foreground "white"))))
     (custom-variable-button ((t (:bold t :underline t :weight bold))))
     (custom-variable-tag ((t (:bold t :foreground "blue" :underline t :weight bold))))
     (custom-visibility ((t (:underline t :foreground "cyan1" :height 0.8))))
     (dired-directory ((t (:bold t :weight bold :foreground "chartreuse"))))
     (dired-flagged ((t (:foreground "tomato" :background "red"))))
     (dired-header ((t (:bold t :weight bold :foreground "gold1"))))
     (dired-ignored ((t (:foreground "grey70"))))
     (dired-mark ((t (:bold t :weight bold :foreground "cyan3"))))
     (dired-marked ((t (:foreground "tomato" :background "red"))))
     (dired-symlink ((t (:bold t :weight bold :foreground "gold1"))))
     (dired-warn-writable ((t (:foreground "tomato" :background "red"))))
     (dired-warning ((t (:foreground "tomato" :background "red"))))
     (ecb-analyse-bucket-element-face ((t (:height 1.0))))
     (ecb-analyse-bucket-node-face ((t (:bold t :weight bold :height 1.0))))
     (ecb-analyse-face ((t (:background "magenta"))))
     (ecb-analyse-general-face ((t (:height 1.0))))
     (ecb-bucket-node-face ((t (:bold t :weight bold :height 1.0))))
     (ecb-default-general-face ((t (:height 1.0))))
     (ecb-default-highlight-face ((t (:background "magenta"))))
     (ecb-directories-general-face ((t (:height 1.0))))
     (ecb-directory-face ((t (:background "magenta"))))
     (ecb-directory-not-accessible-face ((t (:foreground "gray60" :height 1.0))))
     (ecb-history-face ((t (:background "magenta"))))
     (ecb-history-general-face ((t (:height 1.0))))
     (ecb-method-face ((t (:background "magenta"))))
     (ecb-method-non-semantic-face ((t (:foreground "brown" :height 1.0))))
     (ecb-methods-general-face ((t (:height 1.0))))
     (ecb-mode-line-data-face ((t (nil))))
     (ecb-mode-line-prefix-face ((t (:foreground "forestgreen"))))
     (ecb-mode-line-win-nr-face ((t (:bold t :weight bold))))
     (ecb-source-face ((t (:background "magenta"))))
     (ecb-source-in-directories-buffer-face ((t (:foreground "LightBlue1" :height 1.0))))
     (ecb-source-read-only-face ((t (:italic t :slant italic))))
     (ecb-sources-general-face ((t (:height 1.0))))
     (ecb-tag-header-face ((t (:background "SeaGreen1"))))
     (ecb-tree-guide-line-face ((t (:foreground "gray" :height 1.0))))
     (ecb-type-tag-class-face ((t (:bold t :weight bold))))
     (ecb-type-tag-enum-face ((t (:bold t :weight bold))))
     (ecb-type-tag-group-face ((t (:bold t :foreground "dim gray" :weight bold))))
     (ecb-type-tag-interface-face ((t (:bold t :weight bold))))
     (ecb-type-tag-struct-face ((t (:bold t :weight bold))))
     (ecb-type-tag-typedef-face ((t (:bold t :weight bold))))
     (ecb-type-tag-union-face ((t (:bold t :weight bold))))
     (eieio-custom-slot-tag-face ((t (:foreground "light blue"))))
     (eldoc-highlight-function-argument ((t (:bold t :weight bold))))
     (escape-glyph ((t (:foreground "cyan"))))
     (ff-paths-non-existant-file-face ((t (:bold t :foreground "NavyBlue" :weight bold))))
     (file-name-shadow ((t (:foreground "grey70"))))
     (fixed-pitch ((t (:family "courier"))))
     (font-lock-builtin-face ((t (:bold t :foreground "wheat" :weight bold))))
     (font-lock-comment-delimiter-face ((t (:bold t :weight bold :foreground "gray72"))))
     (font-lock-comment-face ((t (:bold t :foreground "gray72" :weight bold))))
     (font-lock-constant-face ((t (:bold t :foreground "cyan3" :weight bold))))
     (font-lock-doc-face ((t (:foreground "tomato"))))
     (font-lock-doc-string-face ((t (:foreground "#00C000"))))
     (font-lock-function-name-face ((t (:bold t :foreground "chartreuse" :weight bold))))
     (font-lock-keyword-face ((t (:bold t :foreground "gold1" :weight bold))))
     (font-lock-negation-char-face ((t (nil))))
     (font-lock-other-emphasized-face ((t (:bold t :foreground "gold1" :weight bold))))
     (font-lock-other-type-face ((t (:bold t :foreground "gold1" :weight bold))))
     (font-lock-preprocessor-face ((t (:foreground "plum" :slant normal))))
     (font-lock-reference-face ((t (:bold t :foreground "orangered" :weight bold))))
     (font-lock-regexp-grouping-backslash ((t (:bold t :weight bold))))
     (font-lock-regexp-grouping-construct ((t (:bold t :weight bold))))
     (font-lock-string-face ((t (:foreground "tomato"))))
     (font-lock-type-face ((t (:bold t :foreground "gold1" :weight bold))))
     (font-lock-variable-name-face ((t (:foreground "light yellow"))))
     (font-lock-warning-face ((t (:background "red" :foreground "tomato"))))
     (fringe ((t (:background "grey10"))))
     (green ((t (:foreground "green"))))
     (gui-button-face ((t (:background "grey75" :foreground "black"))))
     (gui-element ((t (:background "#e7e3d6" :foreground " #000000"))))
     (header-line ((t (:box (:line-width -1 :style released-button) :background "grey20" :foreground "grey90" :box nil))))
     (help-argument-name ((t (nil))))
     (highlight ((t (:background "red" :foreground "yellow"))))
     (ido-first-match ((t (:bold t :weight bold))))
     (ido-incomplete-regexp ((t (:foreground "tomato" :background "red"))))
     (ido-indicator ((t (:background "red1" :foreground "yellow1" :width condensed))))
     (ido-only-match ((t (:foreground "ForestGreen"))))
     (ido-subdir ((t (:foreground "red1"))))
     (isearch ((t (:bold t :background "pale turquoise" :foreground "blue" :weight bold))))
     (isearch-fail ((t (:background "red4"))))
     (italic ((t (nil))))
     (lazy-highlight ((t (:background "paleturquoise4"))))
     (lazy-highlight-face ((t (:bold t :foreground "dark magenta" :weight bold))))
     (left-margin ((t (nil))))
     (link ((t (:foreground "cyan1" :underline t))))
     (link-visited ((t (:underline t :foreground "violet"))))
     (list-mode-item-selected ((t (:bold t :background "gray68" :foreground "yellow" :weight bold))))
     (match ((t (:background "RoyalBlue3"))))
     (menu ((t (nil))))
     (minibuffer-prompt ((t (:foreground "cyan"))))
     (mode-line ((t (:background "goldenrod" :foreground "#000000" :box (:line-width -1 :style released-button)))))
     (mode-line-buffer-id ((t (:bold t :background "goldenrod" :foreground "darkblue" :weight bold))))
     (mode-line-highlight ((t (:box (:line-width 2 :color "grey40" :style released-button)))))
     (mode-line-inactive ((t (:background "grey30" :foreground "grey80" :box (:line-width -1 :color "grey40" :style nil) :weight light))))
     (modeline-mousable ((t (:background "goldenrod" :foreground "darkblue"))))
     (modeline-mousable-minor-mode ((t (:background "goldenrod" :foreground "darkblue"))))
     (mouse ((t (:background "black"))))
     (my-tab-face ((t (:background "SlateBlue1"))))
     (next-error ((t (:foreground "yellow" :background "red"))))
     (nobreak-space ((t (:foreground "cyan" :underline t))))
     (p4-depot-added-face ((t (:foreground "steelblue1"))))
     (p4-depot-deleted-face ((t (:foreground "red"))))
     (p4-depot-unmapped-face ((t (:foreground "grey90"))))
     (p4-diff-change-face ((t (:foreground "dark green"))))
     (p4-diff-del-face ((t (:bold t :foreground "salmon" :weight bold))))
     (p4-diff-file-face ((t (:background "blue"))))
     (p4-diff-head-face ((t (:background "blue"))))
     (p4-diff-ins-face ((t (:foreground "steelblue1"))))
     (paren-blink-off ((t (:foreground "DodgerBlue4"))))
     (paren-match ((t (:background "red" :foreground "yellow"))))
     (paren-mismatch ((t (:background "DeepPink"))))
     (pointer ((t (:background "white"))))
     (primary-selection ((t (:bold t :background "medium sea green" :weight bold))))
     (query-replace ((t (:bold t :weight bold :foreground "blue" :background "pale turquoise"))))
     (red ((t (:foreground "red"))))
     (region ((t (:background "red" :foreground "yellow"))))
     (right-margin ((t (nil))))
     (scroll-bar ((t (:background "grey75" :foreground "#000000"))))
     (secondary-selection ((t (:background "gray91" :foreground "sienna3"))))
     (semantic-highlight-edits-face ((t (:background "gray20"))))
     (semantic-unmatched-syntax-face ((t (:underline "red"))))
     (senator-intangible-face ((t (:foreground "gray75"))))
     (senator-momentary-highlight-face ((t (:background "gray30"))))
     (senator-read-only-face ((t (:background "#664444"))))
     (shadow ((t (:foreground "grey70"))))
     (show-paren-match ((t (:background "cyan3" :foreground "blue"))))
     (show-paren-mismatch ((t (:background "red" :foreground "blue"))))
     (show-trailing-whitespace ((t (:background "red" :foreground "blue"))))
     (speedbar-button-face ((t (:foreground "white"))))
     (speedbar-directory-face ((t (:foreground "gray"))))
     (speedbar-file-face ((t (:foreground "gold1"))))
     (speedbar-highlight-face ((t (:background "lightslateblue" :foreground "gold1"))))
     (speedbar-selected-face ((t (:foreground "red" :underline t))))
     (speedbar-separator-face ((t (:background "blue" :foreground "white" :overline "gray"))))
     (speedbar-tag-face ((t (:foreground "chartreuse"))))
     (tabbar-button-face ((t (:background "gray72" :family "helv" :foreground "dark red" :box (:line-width 2 :color "white" :style released-button) :height 0.8))))
     (tabbar-default-face ((t (:family "helv" :background "gray72" :foreground "gray60" :height 0.8))))
     (tabbar-selected-face ((t (:background "gray72" :family "helv" :foreground "blue" :box (:line-width 2 :color "white" :style released-button) :height 0.8))))
     (tabbar-separator-face ((t (:foreground "gray60" :background "gray72" :family "helv" :height 0.16000000000000003))))
     (tabbar-unselected-face ((t (:foreground "gray60" :background "gray72" :family "helv" :box (:line-width 2 :color "white" :style pressed-button) :height 0.8))))
     (text-cursor ((t (:background "DarkGoldenrod1" :foreground "DodgerBlue4"))))
     (tool-bar ((t (:background "#edeceb" :foreground "#000000" :box (:line-width 1 :style released-button)))))
     (tooltip ((t (:family "helv" :background "lightyellow" :foreground "black"))))
     (trailing-whitespace ((t (:background "red1"))))
     (underline ((t (:underline t))))
     (variable-pitch ((t (:family "helv"))))
     (vertical-border ((t (nil))))
     (vertical-divider ((t (:background "#e7e3d6" :foreground "#000000"))))
     (which-func ((t (:foreground "Blue1"))))
     (widget-button ((t (:bold t :weight bold))))
     (widget-button-pressed ((t (:foreground "red"))))
     (widget-documentation ((t (:foreground "dark green"))))
     (widget-field ((t (:background "gray85"))))
     (widget-inactive ((t (:foreground "dim gray"))))
     (widget-single-line-field ((t (:background "gray85"))))
     (yellow ((t (:foreground "yellow"))))
     (zmacs-region ((t (:background "white" :foreground "midnightblue")))))))
(add-to-list 'color-themes '(my-color-theme  "THEME NAME" "YOUR NAME"))

;;(require 'color-theme) ;; 调用color-theme
(my-color-theme) ;; 配置颜色
