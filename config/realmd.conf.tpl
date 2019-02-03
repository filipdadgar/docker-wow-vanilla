##################################4##########
# MaNGOS realmd configuration file         #
############################################

[RealmdConf]
ConfVersion=2010062001

###################################################################################################################
# REALMD SETTINGS
#
#    LoginDatabaseInfo
#        Database connection settings for the realm server.
#        Default: hostname;port;username;password;database
#                 .;somenumber;username;password;database - use named pipes at Windows
#                       Named pipes: mySQL required adding "enable-named-pipe" to [mysqld] section my.ini
#                 .;/path/to/unix_socket;username;password;database - use Unix sockets at Unix/Linux
#                       Unix sockets: experimental, not tested
#
#    LogsDir
#         Logs directory setting.
#         Important: Logs dir must exists, or all logs be disable
#         Default: "" - no log directory prefix. if used log names aren't absolute paths
#                       then logs will be stored in the current directory of the running program.
#
#    MaxPingTime
#         Settings for maximum database-ping interval (minutes between pings)
#
#    RealmServerPort
#         Port on which the server will listen
#
#    BindIP
#         Bind Realm Server to IP/hostname
#         This option is useful for running multiple worldd/realmd instances
#         on different IP addresses using default ports.
#         DO NOT CHANGE THIS UNLESS YOU _REALLY_ KNOW WHAT YOU'RE DOING
#
#    PidFile
#        Realmd daemon PID file
#        Default: ""             - do not create PID file
#                 "./realmd.pid" - create PID file (recommended name)
#
#    LogLevel
#        Server console level of logging
#        0 = Minimum; 1 = Error; 2 = Detail; 3 = Full/Debug
#        Default: 0
#
#    LogTime
#        Include time in server console output [hh:mm:ss]
#        Default: 0 (no time)
#                 1 (print time)
#
#    LogFile
#        Logfile name
#        Default: "Realmd.log"
#                 "" - empty name disable creating log file
#
#    LogTimestamp
#        Logfile with timestamp of server start in name
#        Default: 0 - no timestamp in name
#                 1 - add timestamp in name in form Logname_YYYY-MM-DD_HH-MM-SS.Ext for Logname.Ext
#
#    LogFileLevel
#        Server file level of logging
#        0 = Minimum; 1 = Error; 2 = Detail; 3 = Full/Debug
#        Default: 0
#
#    LogColors
#        Color for messages (format "normal_color details_color debug_color error_color)
#        Colors: 0 - BLACK, 1 - RED, 2 - GREEN,  3 - BROWN, 4 - BLUE, 5 - MAGENTA, 6 -  CYAN, 7 - GREY,
#                8 - YELLOW, 9 - LRED, 10 - LGREEN, 11 - LBLUE, 12 - LMAGENTA, 13 - LCYAN, 14 - WHITE
#        Default: "" - none colors
#                 "13 7 11 9" - for example :)
#
#    UseProcessors
#        Used processors mask for multi-processors system (Used only at Windows)
#        Default: 0 (selected by OS)
#                 number (bitmask value of selected processors)
#
#    ProcessPriority
#        Process proirity setting (Used only at Windows)
#        Default: 1 (HIGH)
#                 0 (Normal)
#
#    WaitAtStartupError
#        After startup error report wait <Enter> or some time before continue (and possible close console window)
#                 -1 (wait until <Enter> press)
#        Default:  0 (not wait)
#                  N (>0, wait N secs)
#
#    MinRealmListDelay
#        Minimum amount of time, in seconds, that must pass before a second realm list request is considered legitimate
#        Default: 1
#
#    RealmsStateUpdateDelay
#        Realm list Update up delay (updated at realm list request if delay expired).
#        Default: 20
#                 0  (Disabled)
#
#    WrongPass.MaxCount
#        Number of login attemps with wrong password before the account or IP is banned
#        Default: 0  (Never ban)
#
#    WrongPass.BanTime
#        Duration of the ban in seconds (0 means permanent ban)
#        Default: 600
#
#    WrongPass.BanType
#        Ban the IP or account on which login is attempted
#        Default: 0 (Ban IP)
#                 1 (Ban Account)
#
#    ReqEmailVerification
#        Required that the user has verified their email address before allowing logins
#        Default: 0 (No verification required)
#                 1 (Verification required)
#
#    GeoLocking
#        Blocks account logins when a change in geographical location is detected
#        Default: 0
#
#    SendMail
#        Whether the server is allowed to send emails
#        The server must have been compiled with USE_SENDGRID
#        Default: 0 (Do not send mail)
#
#    MailFrom
#        Specify the email address to send mail from
#        Default: ""
#
#    MailCertChecks
#        Whether to validate the certificates of the mail server
#        Default: 1 (Recommended)
#
#    SendGridKey
#        If SendGrid is being used for emailing, specify your API key here
#        This option must be set if SendGrid is enabled
#        Default: ""
#
#    GeolockGUID
#        The SendGrid template GUID for geolocking emails
#        Default: ""
#
###################################################################################################################

LoginDatabaseInfo = "${database_hostname};3306;${wow_database_user};${wow_database_user_password};realmd"
LogsDir = ""
MaxPingTime = 30
RealmServerPort = 3724
BindIP = "0.0.0.0"
PidFile = ""
LogLevel = 0
LogTime = 0
LogFile = "Realmd.log"
LogTimestamp = 0
LogFileLevel = 0
LogColors = ""
UseProcessors = 0
ProcessPriority = 1
WaitAtStartupError = 0
MinRealmListDelay = 1
RealmsStateUpdateDelay = 20
WrongPass.MaxCount = 0
WrongPass.BanTime = 600
WrongPass.BanType = 0
ReqEmailVerification = 0
GeoLocking = 0
SendMail = 0
MailFrom = ""
MailCertChecks = 1
SendGridKey = ""
GeolockGUID = ""
