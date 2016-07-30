(provide 'eel)

(defun eel-duplicate-line ()
  "Duplicates the current line below it"
  (interactive)
  (save-excursion
    (beginning-of-line)
    (kill-line)
    (yank)
    (open-line 1)
    (next-line 1)
    (yank)))

(defun eel-copy-filename-to-killring ()
  "Copies the filename of the buffer into the clipboard"
  (interactive)
  (if (buffer-file-name)
      (progn 
	(kill-new (buffer-file-name))
	(message buffer-file-name))
    (message "Buffer has no file name associated with it")))
