# An update on the sound file currently playing

uint8 UNKNOWN=0
uint8 STOPPED=1
uint8 PAUSED=2
uint8 PLAYING=3

# Meta values
uint8 META_BEGIN=0
uint8 META_END=4
uint8 META_COUNT=4

# The playback status of a sound file (if stopped, no sound file is loaded)
uint8 status

# The (ideally) human-friendly name of the sound file currently playing
string name

# Total duration of the sound file
builtin_interfaces/Duration duration_total
# Current timestamp relative to the start
builtin_interfaces/Duration duration_current
