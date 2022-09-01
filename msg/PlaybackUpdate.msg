# An update on the sound file currently playing

# The unique video ID of the audio that is playing
string video_id

# Whether or not the current sound file's playback is paused
bool is_paused

# Total duration of the sound file
builtin_interfaces/Duration duration_total
# Current timestamp relative to the start
builtin_interfaces/Duration duration_current
