scoreboard objectives add carrot minecraft.used:minecraft.carrot_on_a_stick 
scoreboard objectives add tick_timer dummy
scoreboard objectives add seconds_timer dummy

scoreboard objectives add death minecraft.custom:minecraft.deaths "deaths"
scoreboard objectives add health health 
scoreboard players reset @a death
scoreboard objectives add lov dummy 
scoreboard objectives add summon dummy "Summoning True/False"
scoreboard players reset @a summon
scoreboard players enable @a summon
bossbar add minecraft:followerblood "The Follower Of The BLOOD GOD" 
bossbar set followerblood color red
bossbar set followerblood max 670
bossbar set followerblood style notched_6
bossbar set followerblood players @a
bossbar set followerblood value 0
scoreboard objectives add ability dummy "Ability Timer"
summon armor_stand 0 0 0 {Invisible:true,Invulnerable:true,Tags:["backstab"]}
scoreboard objectives add time dummy "TIMER"

scoreboard objectives add motion_x1 dummy
scoreboard objectives add motion_y1 dummy
scoreboard objectives add motion_z1 dummy

scoreboard objectives add motion_x2 dummy
scoreboard objectives add motion_y2 dummy
scoreboard objectives add motion_z2 dummy

scoreboard objectives add LeftClick dummy
scoreboard objectives add RightClick dummy
scoreboard objectives add charges dummy
scoreboard players reset @a charges

scoreboard players set @a LeftClick 0
scoreboard players set @a RightClick 0

execute as @p at @s run summon minecraft:interaction ~ ~ ~ {Tags: ["int"],height:2,width:2}

say Special Server Datapack is Loading
title @a times 40 120 40
title @a title {"text":"AloneSMP"}
title @a subtitle {"text":"v1.6 Input Optimisation Update"}

