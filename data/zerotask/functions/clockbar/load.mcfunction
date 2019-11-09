#######################################################################
# Author:  SirWindfield (https://github.com/SirWindfield)             #
# License: GNU GPLv3                                                  #
#                                                                     #
# If applicable, credit to other people's work is given in the readme #
#######################################################################

# Variable to hold the current daytime and the time format
scoreboard objectives add cbTime dummy
scoreboard objectives add cbFormat dummy
scoreboard players set @a cbFormat 24

# Configuration variables that can be set using triggers
scoreboard objectives add cb_config trigger
scoreboard players enable @a cb_config

# By default, all players will have the clockbar enabled
tag @a add ztWantsCB

# Adds the needed bossbar for all players
execute as @a run bossbar add zerotask:clockbar {"text":"Time","color":"gold"}
