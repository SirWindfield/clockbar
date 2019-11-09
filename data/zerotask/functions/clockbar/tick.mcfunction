#######################################################################
# Author:  SirWindfield (https://github.com/SirWindfield)             #
# License: GNU GPLv3                                                  #
#                                                                     #
# If applicable, credit to other people's work is given in the readme #
#######################################################################

# Display settings chat message if requested. Trigger has to be reset to make it work again.
execute as @a[scores={cb_config=1..}] run tellraw @s ["",{"text":"--------------------------------------\nClockbar Configuration: Made by SirWindfield\n\n \u00201. Visible: ["},{"text":"True","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s add ztWantsCB"}},{"text":"] | ["},{"text":"False","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove ztWantsCB"}},{"text":"]\n \u00202. Time Format: ["},{"text":"12 Hours","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cbFormat 12"}},{"text":"] | ["},{"text":"24 Hours","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cbFormat 24"}},{"text":"]"}]
scoreboard players reset @a cb_config

# Store the time for the tick
execute as @a[tag=ztWantsCB] store result score @s cbTime run time query daytime

# Add a tag to all players currently holding the item
execute as @a[tag=ztWantsCB] if entity @s[nbt={SelectedItem:{id:"minecraft:clock"}}] run tag @s add ztShowCB
execute as @a[tag=ztShowCB] unless entity @s[nbt={SelectedItem:{id:"minecraft:clock"}}] run tag @s remove ztShowCB

# Toggle logic for the clock is split into two files
execute as @a[tag=ztShowCB,tag=ztWantsCB] run function zerotask:clockbar/show
execute as @a[tag=!ztShowCB] run function zerotask:clockbar/hide

# Allow player to call the trigger again
scoreboard players enable @a cb_config
