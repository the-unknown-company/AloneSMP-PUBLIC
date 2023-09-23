scoreboard players add @a tick_timer 1
execute as @a at @a if score @s tick_timer matches 20.. run function impossible:second_increase_timer


#The line of code below sets EssenceLunatic's score to 1000 if it is more than 1000

execute as EssenceLunatic at EssenceLunatic if score @s charges matches 1000.. run scoreboard players set @s charges 1000

#This caps everyone else's charges to 100
execute as @a[name=!"EssenceLunatic"] if score @s[name=!"EssenceLunatic"] charges matches 100.. run scoreboard players set @s charges 100

scoreboard players add @a time 1

#thor hammer
execute as @a[scores={carrot=1..,mana=60..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{thor:1}}}] at @s anchored eyes run summon minecraft:lightning_bolt ^ ^-1 ^7
#mana thor hammer
execute as @a[scores={carrot=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{thor:1},Count:1b}}] if score @p mana matches 60.. run scoreboard players remove @s mana 60

#levitation staff
execute as @a[scores={carrot=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{throw:1}}}] at @s anchored eyes run function impossible:carrot
execute as @a[scores={carrot=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{throw:1},Count:1b}}] if score @p mana matches 600.. run scoreboard players remove @s mana 600
#tp wand
execute at @a[scores={carrot=1..,mana=60..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{tp:1}}}] as @a at @a run tp @s ^ ^2 ^10
execute at @a[scores={carrot=1..,mana=60..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{tp:1}}}] run playsound minecraft:block.beacon.deactivate master @a
execute at @a[scores={carrot=1..,mana=60..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{tp:1}}}] run particle minecraft:composter ~ ~0.5 ~ 0.2 0.2 0.2 0.5 20 force
execute as @a[scores={carrot=1..,mana=60..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{tp:1}}}] if score @p mana matches 60.. run scoreboard players remove @s mana 60

#bridge egg
execute at @e[type=egg,nbt={Item:{tag:{bridge:1},Count:1b}}] run fill ~.2 ~-2 ~1 ~2 ~-2 ~.4 gray_wool 
scoreboard players reset @a carrot

#daggers
execute at @a[nbt={SelectedItem:{id:"minecraft:diamond_sword",tag:{dagger:1}}}] run effect give @p speed 1 1 true
execute at @a[nbt={SelectedItem:{id:"minecraft:netherite_sword",tag:{dagger:1}}}] run effect give @p speed 1 1 true
execute at @a[nbt={SelectedItem:{id:"minecraft:golden_sword",tag:{dagger:1}}}] run effect give @p speed 1 1 true
execute at @a[nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{dagger:1}}}] run effect give @p speed 1 1 true

#armour stand hands
execute if entity @e[type=player] positioned as @e[type=armor_stand] run data merge entity @e[type=armor_stand,sort=nearest,limit=1] {ShowArms:1} 

#fireball
execute as @e[tag=motion_projectile,tag=!motion_added] at @s rotated as @p run function impossible:apply_motion

#summoner
execute at @p[nbt={SelectedItem:{id:"minecraft:zombie_head",tag:{summoner:1}}}] run function impossible:summoner

#boss fight
#execute if score @p death matches 1 run tellraw @a "Just lose already"
#execute if score @p death matches 1.. run scoreboard players reset @a death
#execute as @e[type=wither_skeleton,tag=follower] if score @p mana matches 60..70 at @e[type=wither_skeleton] run summon vex ~ ~2 ~


execute if score @p time matches 72000 run function impossible:blood_moon
execute if score @p time matches 72000 run scoreboard players reset @a time


#recipes
#execute as @e[type=item,nbt={Item:{id:"minecraft:lightning_rod",Count:1b}}] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_axe",Count:1b}},limit=1,sort=nearest,distance=0..1] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:diamond_block",Count:2b}},limit=1,sort=nearest,distance=0..1] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_scrap",Count:2b}},limit=1,sort=nearest,distance=0..1] at @s run summon minecraft:item ~ ~0.1 ~ {Tags:["fresh_craft"],Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"THOR\'S HAMMER","color":"aqua","bold":true,"italic":false}',Lore:['{"text":"A Hammer forged in the deap dwarrven star","color":"yellow","bold":true,"italic":false}']},HideFlags:1,Unbreakable:1b,CustomModelData:123456,thor:1,Enchantments:[{id:"minecraft:sharpness",lvl:8s}]}}}
#execute as @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",Count:2b}}] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:oak_log",Count:1b}},limit=1,sort=nearest,distance=0..1] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:iron_nugget",Count:5b}},limit=1,sort=nearest,distance=0..1] at @s run summon minecraft:item ~ ~0.1 ~ {Tags:["fresh_craft"],Item:{id:"minecraft:iron_sword",Count:1b,tag:{display:{Name:'{"text":"Iron Dagger"}',Lore:['{"text":"A dagger made by assasins"}']},HideFlags:2,RepairCost:5,CustomModelData:100000,dagger:1,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:10,Operation:0,UUID:[I;1084858978,-988787860,-1290957763,-460283981]}]}}}
#execute as @e[type=item,nbt={Item:{id:"minecraft:gold_ingot",Count:2b}}] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:oak_log",Count:1b}},limit=1,sort=nearest,distance=0..1] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:gold_nugget",Count:5b}},limit=1,sort=nearest,distance=0..1] at @s run summon minecraft:item ~ ~0.1 ~ {Tags:["fresh_craft"],Item:{id:"minecraft:golden_sword",Count:1b,tag:{display:{Name:'{"text":"Gold Dagger"}',Lore:['{"text":"A dagger made by assasins"}']},HideFlags:2,RepairCost:5,CustomModelData:200000,dagger:1,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:10,Operation:0,UUID:[I;1084858978,-988787860,-1290957763,-460283981]}]}}}
#execute as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:2b}}] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:oak_log",Count:1b}},limit=1,sort=nearest,distance=0..1] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:blue_wool",Count:5b}},limit=1,sort=nearest,distance=0..1] at @s run summon minecraft:item ~ ~0.1 ~ {Tags:["fresh_craft"],Item:{id:"minecraft:diamond_sword",Count:1b,tag:{display:{Name:'{"text":"Diamond Dagger"}',Lore:['{"text":"A dagger made by assasins"}']},HideFlags:2,RepairCost:5,CustomModelData:300000,dagger:1,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:10,Operation:0,UUID:[I;1084858978,-988787860,-1290957763,-460283981]}]}}}
#execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_ingot",Count:2b}}] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:oak_log",Count:1b}},limit=1,sort=nearest,distance=0..1] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_scrap",Count:5b}},limit=1,sort=nearest,distance=0..1] at @s run summon minecraft:item ~ ~0.1 ~ {Tags:["fresh_craft"],Item:{id:"minecraft:netherite_sword",Count:1b,tag:{display:{Name:'{"text":"Netherite Dagger"}',Lore:['{"text":"A dagger made by assasins"}']},HideFlags:2,RepairCost:5,CustomModelData:400000,dagger:1,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:10,Operation:0,UUID:[I;1084858978,-988787860,-1290957763,-460283981]}]}}}
#execute as @e[type=item,nbt={Item:{id:"minecraft:iron_block",Count:3b}}] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:blaze_rod",Count:3b}},limit=1,sort=nearest,distance=0..1] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_ingot",Count:5b}},limit=1,sort=nearest,distance=0..1] at @s run summon minecraft:item ~ ~0.1 ~ {Tags:["fresh_craft"],Item:{id:"minecraft:netherite_sword",Count:1b,tag:{display:{Name:'{"text":"The Sabre"}',Lore:['{"text":"Used by ancient pirates"}']},HideFlags:2,CustomModelData:500000,sabre:1,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:0,UUID:[I;-1734673878,852118437,-2076739259,-76247608]},{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:2,Operation:0,UUID:[I;-894736301,1142771407,-1601432323,1691009821]}]}}}
#execute as @e[type=item,nbt={Item:{id:"minecraft:ender_pearl",Count:16b}}] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:blaze_rod",Count:1b}},limit=1,sort=nearest,distance=0..1] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:2b}},limit=1,sort=nearest,distance=0..1] at @s run summon minecraft:item ~ ~0.1 ~ {Tags:["fresh_craft"],Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"TP Wand","color":"dark_blue","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"The ancient builder\'s\\nforged this grand item.","color":"dark_blue","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:7,Unbreakable:1b,tp:1,Enchantments:[{id:"minecraft:knockback",lvl:4s}]}}}
#execute as @e[type=item,nbt={Item:{id:"minecraft:gray_wool",Count:16b}}] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:egg",Count:16b}},limit=1,sort=nearest,distance=0..1] at @s run summon minecraft:item ~ ~0.1 ~ {Tags:["fresh_craft"],Item:{id:"minecraft:egg",Count:1b,tag:{display:{Name:'{"text":"Bridge Egg","color":"gray","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"An EGG so dense it releases the matter from within its black hole","color":"black","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:7,Unbreakable:1b,bridge:1,Enchantments:[{id:"minecraft:knockback",lvl:4s}]}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:slime_block",Count:32b}}] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:tnt",Count:32b}},limit=1,sort=nearest,distance=0..1] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:bow",Count:1b}},limit=1,sort=nearest,distance=0..1] at @s run summon item ~ ~0.5 ~ {Tags:["bombbow"],Item:{id:"minecraft:bow",Count:1b,tag:{display:{Name:'{"text":"The Sticky Bomb Bow","color":"#41BF28","bold":true}',Lore:['{"text":"The Bow Is Enriched With Compact Slime","color":"#41BF28","bold":true}']},Enchantments:[{}]}}}


#deleting items from recipes
#thor hammer
#execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:lightning_rod",Count:1b}},sort=nearest,limit=1]
#execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:netherite_axe",Count:1b}},sort=nearest,limit=1]
#execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:diamond_block",Count:2b}},sort=nearest,limit=1]
#execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:netherite_scrap",Count:2b}},sort=nearest,limit=1]
#iron-dagger
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",Count:2b}},sort=nearest,limit=1]
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:oak_log",Count:2b}},sort=nearest,limit=1]
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:iron_nugget",Count:5b}},sort=nearest,limit=1]
#gold-dagger
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:gold_ingot",Count:2b}},sort=nearest,limit=1]
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:oak_log",Count:1b}},sort=nearest,limit=1]
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:gold_nugget",Count:5b}},sort=nearest,limit=1]
#diamond-dagger
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:2b}},sort=nearest,limit=1]
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:oak_log",Count:1b}},sort=nearest,limit=1]
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:blue_wool",Count:5b}},sort=nearest,limit=1]
#netherite-dagger
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:netherite_ingot",Count:2b}},sort=nearest,limit=1]
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:oak_log",Count:1b}},sort=nearest,limit=1]
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:netherite_scrap",Count:5b}},sort=nearest,limit=1]
#tp-wand
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:ender_pearl",Count:16b}},sort=nearest,limit=1]
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:blaze_rod",Count:1b}},sort=nearest,limit=1]
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:2b}},sort=nearest,limit=1]
#EGG
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:gray_wool",Count:16b}},sort=nearest,limit=1]
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:egg",Count:16b}},sort=nearest,limit=1]
#netherite-sabre
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:iron_block",Count:3b}},sort=nearest,limit=1]
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:blaze_rod",Count:3b}},sort=nearest,limit=1]
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:netherite_ingot",Count:5b}},sort=nearest,limit=1]
#bomb-bow
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:slime_block",Count:32b}},sort=nearest,limit=1]
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:tnt",Count:32b}},sort=nearest,limit=1]
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:bow",Count:1b}},sort=nearest,limit=1]


execute as @e[tag=fresh_craft] at @s run playsound minecraft:entity.lightning_bolt.impact master @a
execute as @e[tag=fresh_craft] at @s run playsound minecraft:entity.iron_golem.hurt master @a
execute as @e[tag=fresh_craft] at @s run playsound minecraft:entity.lightning_bolt.thunder master @a
execute as @e[tag=fresh_craft] at @s run playsound minecraft:block.anvil.use master @a
execute as @e[tag=fresh_craft] run tag @s remove fresh_craft


#boss fight for knight of the blood god
#summoning
execute as @e[type=item,nbt={Item:{id:"minecraft:nether_star",Count:4b}}] at @e[type=item,nbt={Item:{id:"minecraft:nether_star"}}] if block ~ ~-1 ~ crying_obsidian run particle squid_ink ~ ~ ~ 0.4 0.4 0.4 0.2 25
execute as @e[type=item,nbt={Item:{id:"minecraft:nether_star",Count:4b}}] at @e[type=item,nbt={Item:{id:"minecraft:nether_star"}}] if block ~ ~-1 ~ crying_obsidian run particle smoke ~ ~ ~ 0.8 0.8 0.8 0.2 50
execute as @e[type=item,nbt={Item:{id:"minecraft:nether_star",Count:4b}}] at @e[type=item,nbt={Item:{id:"minecraft:nether_star"}}] if block ~ ~-1 ~ crying_obsidian run scoreboard players add @p summon 1
execute as @a at @p if score @p summon matches 1..3 run playsound entity.wither.spawn ambient @a ~100 ~100 ~100 100 1 1
execute as @a at @p if score @p summon matches 80 as @e[type=item,nbt={Item:{id:"minecraft:nether_star",Count:4b}}] at @e[type=item,nbt={Item:{id:"minecraft:nether_star",Count:4b}}] run function impossible:bloodboss 
execute as @a at @p if score @p summon matches 80 run bossbar set followerblood visible true 
execute as @a at @p if score @p summon matches 82.. run kill @e[type=item,nbt={Item:{id:"minecraft:nether_star",Count:4b}},distance=1..1000]
execute as @a at @p if score @p summon matches 82.. run scoreboard players reset @a summon
execute as @a at @p if score @p summon matches 82.. as @e[type=item,nbt={Item:{id:"minecraft:nether_star"}}] at @e[type=item,nbt={Item:{id:"minecraft:nether_star"}}] run setblock ~ ~-1 ~ air replace 
execute at @e[tag=follower] run particle crimson_spore ~ ~ ~ 0.4 0.8 0.4 0.2 30
execute at @e[tag=follower] run particle smoke ~ ~ ~ 0.5 0.8 0.5 0.2 40
#bossbar
execute store result bossbar minecraft:followerblood value as @e[tag=follower,limit=1] run data get entity @s Health
execute unless entity @e[tag=follower,limit=1] run bossbar set minecraft:followerblood visible false
execute if entity @e[tag=follower,limit=1] run bossbar set minecraft:followerblood visible true
#abilities
scoreboard players add @a ability 1
execute as @e[tag=follower,limit=1] if score @p ability matches 600 run effect give @e[tag=!follower] levitation 2 4 false
execute as @e[tag=follower,limit=1] if score @p ability matches 600 run say Now You Will DIE
execute if score @p ability matches 1060.. run scoreboard players reset @a ability

execute as @e[tag=follower,limit=1] if score @p ability matches 450 run effect give @e[tag=!follower] darkness 25 255 true
execute as @e[tag=follower,limit=1] if score @p ability matches 450 at @p run tp ^ ^ ^-1 
execute as @e[tag=follower,limit=1] if score @p ability matches 450 run effect give @e[tag=follower,limit=1] speed 5 5 true
execute as @e[tag=follower,limit=1] if score @p ability matches 450 run say HA HA HA HA HA

execute as @e[tag=follower,limit=1] if score @p ability matches 700 at @e[tag=follower,limit=1] run function impossible:boss_summon

execute if score @p ability matches 1060.. run scoreboard players reset @a ability

execute as @e[tag=follower,limit=1] if score @p ability matches 1020..1060 at @e[tag=follower,limit=1] anchored eyes run function impossible:follow_boss

#bomb-bow
execute as @a[nbt={SelectedItem:{id:"minecraft:bow",tag:{Enchantments:[{}]}}}] at @e[type=arrow,nbt={inGround:true}] run tag @e[type=arrow,nbt={inGround:false,HasBeenShot:true,},distance=..40] add bomb
execute as @a[nbt={SelectedItem:{id:"minecraft:bow",tag:{Enchantments:[{}]}}}] at @e[type=arrow,nbt={inGround:true,Tags:[bomb]}] run summon tnt ~ ~-1 ~ {Fuse:35,NoGravity:true,Motion:[0]}
execute as @a[nbt={SelectedItem:{id:"minecraft:bow",tag:{Enchantments:[{}]}}}] at @e[type=arrow,nbt={inGround:true,Tags:[bomb]}] run playsound block.slime_block.place ambient @a ~ ~ ~ 100 1 1
execute as @a at @e[type=arrow,nbt={inGround:true,Tags:[bomb]}] run kill @e[type=arrow,nbt={inGround:true,Tags:[bomb]}]


# Left click detection
execute as @e[type=minecraft:interaction,tag=int] on attacker run scoreboard players add @s LeftClick 1
execute as @e[tag=int,type=minecraft:interaction] at @s if entity @a[scores={LeftClick=1..},distance=..1] run kill @s
#execute as @a[scores={LeftClick=1..}] at @s run say LEFT CLICK
execute as @a[scores={LeftClick=1..}] at @s unless entity @e[tag=int,distance=..1] run summon minecraft:interaction ~ ~5 ~ {Tags: ["int"],height:2,width:2}
execute as @a[scores={LeftClick=1..}] at @s unless entity @e[tag=int,distance=..1] run scoreboard players set @s LeftClick 0

# Right click detection
execute as @e[type=minecraft:interaction,tag=int] on target run scoreboard players add @s RightClick 1
execute as @e[tag=int,type=minecraft:interaction] at @s if entity @a[scores={RightClick=1..},distance=..1] run kill @s
#execute as @a[scores={RightClick=1..}] at @s run say RIGHT CLICK
#for implosion scroll
execute as @a[scores={RightClick=1..},nbt={SelectedItem:{id:"minecraft:piglin_banner_pattern"}}] at @s[scores={RightClick=1..},nbt={SelectedItem:{id:"minecraft:piglin_banner_pattern",tag:{int:1b,implode:1b}}}] run effect give @p resistance 5 255 true
execute as @a[scores={RightClick=1..},nbt={SelectedItem:{id:"minecraft:piglin_banner_pattern"}}] at @s[scores={RightClick=1..},nbt={SelectedItem:{id:"minecraft:piglin_banner_pattern",tag:{int:1b,implode:1b}}}] run summon tnt ~ ~1 ~ {Fuse:5}
execute as @a[scores={RightClick=1..},nbt={SelectedItem:{id:"minecraft:piglin_banner_pattern"}}] at @s[scores={RightClick=1..},nbt={SelectedItem:{id:"minecraft:piglin_banner_pattern",tag:{int:1b,implode:1b}}}] run clear @s piglin_banner_pattern{int:1b} 1

#for health scroll
execute as @a[scores={RightClick=1..},nbt={SelectedItem:{id:"minecraft:piglin_banner_pattern"}}] at @s[scores={RightClick=1..},nbt={SelectedItem:{id:"minecraft:piglin_banner_pattern",tag:{int:1b,heal:1b}}}] run effect give @e[distance=..5] regeneration 5 5 true
execute as @a[scores={RightClick=1..},nbt={SelectedItem:{id:"minecraft:piglin_banner_pattern"}}] at @s[scores={RightClick=1..},nbt={SelectedItem:{id:"minecraft:piglin_banner_pattern",tag:{int:1b,heal:1b}}}] run clear @s piglin_banner_pattern{int:1b} 1


#for lifesteal
execute as @a[nbt={SelectedItem:{tag:{int:1b,life:1b}}},scores={mana=150..,RightClick=1..}] if predicate impossible:is_holding_sword_assassination if predicate impossible:is_sneaking run effect give @s invisibility 5 1 true
execute as @a[nbt={SelectedItem:{tag:{int:1b,life:1b}}}] if predicate impossible:is_holding_sword_assassination if predicate impossible:is_standing run effect clear @s invisibility 
execute as @a[nbt={SelectedItem:{tag:{int:1b,life:1b}}},scores={mana=150..,RightClick=1..}] run scoreboard players remove @s mana 150



# for all interactions + teleporting entities to player.
function impossible:scrolls/interaction/interaction

# abilities:
#for Rishi
#fly
execute as @a if predicate impossible:is_holding_flystick run effect give @s levitation 1 6 true
execute as @a if predicate impossible:is_holding_hoverstick run effect give @s levitation 1 255 true
# resistance and other passive abilites
#for tnt cannon
execute as @a[scores={RightClick=1..,mana=50..},nbt={SelectedItem:{id:"minecraft:blaze_rod"}}] at @s[scores={RightClick=1..},nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{int:1b,tnt_launch:1b}}}] run function impossible:throw
execute as @a[scores={RightClick=1..,mana=50..},nbt={SelectedItem:{id:"minecraft:blaze_rod"}}] at @s[scores={RightClick=1..},nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{int:1b,tnt_launch:1b}}}] run scoreboard players remove @s mana 50



#for Hudaifa

execute as @a at @a if score @s seconds_timer matches 120.. if predicate impossible:chance1-50 run function impossible:squacc_possession
execute as KingWaluigi1 at KingWaluigi if predicate impossible:damage_dealt run function impossible:damage_after_possession


#for jan

#for Michael

# to reset the interaction entity
execute as @a[scores={RightClick=1..}] at @s unless entity @e[tag=int,distance=..1] run summon minecraft:interaction ~ ~5 ~ {Tags: ["int"],height:2,width:2}
execute as @a[scores={RightClick=1..}] at @s unless entity @e[tag=int,distance=..1] run scoreboard players set @s RightClick 0

scoreboard players add @a mana 1
execute if score @r mana matches 1000.. run scoreboard players set @s mana 1000 



