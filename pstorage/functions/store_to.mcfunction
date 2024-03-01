execute as @a unless score @s pstorage.timer = !current pstorage.timer run tellraw @a {"text": "unique player storage made by etidhar\nneed unique player storage? click here for the github!","clickEvent": {"action": "open_url","value": ""},"color": "green"}
execute as @a unless score @s pstorage.timer = !current pstorage.timer run scoreboard players operation @s pstorage.timer = !current pstorage.timer
scoreboard players add !current pstorage.timer 1
scoreboard players add @a pstorage.timer 1
execute as @a unless score @s pstorage.first_time = @s pstorage.first_time run tag @s add pstorage_first_joined
execute as @a[tag=pstorage_first_joined] run scoreboard players add @s pstorage.first_time 1
execute as @a[tag=pstorage_first_joined] run function pstorage:make_storage_by_time with storage pstorage:stats
execute as @a[tag=pstorage_first_joined] store result storage pstorage:stats uuid0 int 1 run data get entity @s UUID[0]
execute as @a[tag=pstorage_first_joined] store result storage pstorage:stats uuid1 int 1 run data get entity @s UUID[1]
execute as @a[tag=pstorage_first_joined] store result storage pstorage:stats uuid2 int 1 run data get entity @s UUID[2]
execute as @a[tag=pstorage_first_joined] store result storage pstorage:stats uuid3 int 1 run data get entity @s UUID[3]
execute as @a[tag=pstorage_first_joined] run function pstorage:make_storage_by_uuid with storage pstorage:stats
tag @a remove pstorage_first_joined