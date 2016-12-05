(provide 'eel)

(defun eel/duplicate-line ()
  "Duplicates the current line below it"
  (interactive)
  (save-excursion
    (beginning-of-line)
    (kill-line)
    (yank)
    (open-line 1)
    (next-line 1)
    (yank)))

(defun eel/copy-filename-to-killring ()
  "Copies the filename of the buffer into the clipboard"
  (interactive)
  (if (buffer-file-name)
      (progn 
	(kill-new (buffer-file-name))
	(message buffer-file-name))
    (message "Buffer has no file name associated with it")))

(defun eel/switch-to-scratch ()
  "Switches to the *scratch* buffer or goes back to
the previous buffer that you visited"
  (interactive)
  (if (string-equal (buffer-name) "*scratch*")
      (switch-to-buffer (other-buffer))
    (switch-to-buffer "*scratch*")))
