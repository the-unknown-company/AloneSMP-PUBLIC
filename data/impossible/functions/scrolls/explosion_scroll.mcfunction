recipe take @s impossible:recipe_implosion

advancement revoke @s only impossible:implosion_recipe

 execute as @a at @s run give @s piglin_banner_pattern{display:{Name:'{"text":"Implosion Scroll","color":"red","bold":true}',Lore:['{"text":"Made When A Wither Ate A Spicy Chili","color":"yellow","italic":true}','{"text":"RIGHT CLICK -  Summon An Explosion That Deals Damage To All Nearby Entities ","color":"dark_green","bold":true}','{"text":"Grants You Temporary Immunity","color":"gold","bold":true}']},int:1b,implode:1b,Enchantments:[{}]} 5

clear @s minecraft:knowledge_book