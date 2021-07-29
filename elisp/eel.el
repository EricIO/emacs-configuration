;;; eel.el -- My personal little emacs functions that are mightely usefull.

;;; Commentary:
;;; Well this is a collection of usefull functions that I well...use.

;;; Code:

(defun eel/duplicate-line ()
  "Duplicates the current line below it."
  (interactive)
  (save-excursion
    (beginning-of-line)
    (kill-line)
    (yank)
    (open-line 1)
    (forward-line 1)
    (yank)))

(defun eel/copy-filename-to-killring ()
  "Copies the filename of the buffer into the clipboard."
  (interactive)
  (if (buffer-file-name)
      (progn
	(kill-new (buffer-file-name))
	(message buffer-file-name))
    (message "Buffer has no file name associated with it")))

(defun eel/switch-to-scratch ()
  "Switch to the *scratch* buffer or go back to the previous buffer that you visited."
  (interactive)
  (if (string-equal (buffer-name) "*scratch*")
      (switch-to-buffer (other-buffer))
    (switch-to-buffer "*scratch*")))

(defun eel/insert-date-now ()
  "Insert a date string formated like : 2021-03-13T13:00+01:00."
  (interactive)
  (insert (format-time-string "%Y-%m-%dT%H:%M:%S%z")))

(provide 'eel)
;;; eel.el ends here
