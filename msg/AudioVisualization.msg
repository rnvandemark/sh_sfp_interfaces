# A description of visualized audio for some set of actors.

# The number of actors that the audio got translated into
int32 num_actors

# A sorted list of timestamps in seconds that describe when the manifestations
# in translation ideally occur
sh_common_interfaces/Float32Arr timestamps

# A 2D array with dimensions [N, num_actors], where N is the length of
# timestamps and num_actors is the above value. The value translation[i]
# describes the state of each actor at time timestamps[i]
sh_common_interfaces/Float32Arr[] translation
