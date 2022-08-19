#!/bin/bash

/Users/paulpersonal/Documents/programs/restic -r rclone:OneDrive:/restic/test --verbose backup \
--password-command /Users/paulpersonal/Documents/restic-macos-scheduled-backup/scripts/get_password.sh \
-o rclone.program="/Users/paulpersonal/Documents/programs/rclone" \
/Users/paulpersonal/Documents/restic-macos-scheduled-backup/test
