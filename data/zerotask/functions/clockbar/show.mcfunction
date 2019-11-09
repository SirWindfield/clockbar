#######################################################################
# Author:  SirWindfield (https://github.com/SirWindfield)             #
# License: GNU GPLv3                                                  #
#                                                                     #
# If applicable, credit to other people's work is given in the readme #
#######################################################################

# Add the bossbar to the right player
bossbar set zerotask:clockbar players @s

# Update time value
execute store result bossbar zerotask:clockbar value run scoreboard players get @s cbTime

execute as @s if score @s cbFormat matches 12 run function zerotask:clockbar/show12
execute as @s if score @s cbFormat matches 24 run function zerotask:clockbar/show24
