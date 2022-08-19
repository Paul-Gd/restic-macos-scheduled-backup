#!/bin/bash

main() {
  echo "$(date) Starting backup script"
  sleep 30
  check_internet_connectivity

  #  $1
  /Users/paulpersonal/Documents/restic-macos-scheduled-backup/scripts/backup_repo.sh
  exit_code=$?

  if [ $exit_code != 0 ]; then
    echo "Restic backup failed. Exit code $exit_code"
    /usr/bin/osascript -e "display notification \"Restic backup failed. Exit code $exit_code\" with title \"Restic - Backup failed\""
    exit $exit_code
  fi
  echo "Restic backup successful"
  /usr/bin/osascript -e "display notification \"Restic backup successful\" with title \"Restic - Backup successful\""
  exit $exit_code
}

check_internet_connectivity() {
  attempts=10

  for ((i = 0; i <= attempts; i++)); do
    ping 1.1.1.1 -c 1 >/dev/null 2>&1 && return
  done

  echo "Could not reach 1.1.1.1 after $attempts attempts. Backup not started!"
  /usr/bin/osascript -e "display notification \"Could not reach 1.1.1.1 after $attempts attempts. Backup not started!\" with title \"Restic - No network\""

  exit 1
}

#if [ "$#" -ne 1 ]; then
#    echo "Illegal number of parameters"
#    exit 1
#fi

main "$@"
