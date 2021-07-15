" Duration of a pomodoro in minutes (default: 25)
let g:pomodoro_time_work = 25

" Duration of a break in minutes (default: 5)
let g:pomodoro_time_slack = 5

" Log completed pomodoros, 0 = False, 1 = True (default: 0)
let g:pomodoro_do_log = 0

" Path to the pomodoro log file (default: /tmp/pomodoro.log)
let g:pomodoro_log_file = "/tmp/pomodoro.log"

" Display the remaining time of a pomodoro in statusline
set statusline=%#ErrorMsg#%{PomodoroStatus()}%#StatusLine#

" Bells and whistles
let g:pomodoro_notification_cmd = "aplay --quiet ~/Downloads/mario-sounds/smb_1-up.wav"
