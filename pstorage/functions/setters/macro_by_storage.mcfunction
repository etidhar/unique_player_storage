$data modify storage pstorage:stats changes.change merge value {dir:"$(dir)",command:"$(command)"}
execute as @s at @s store result storage pstorage:stats changes.change.uuid0 int 1 run data get entity @s UUID[0]
execute as @s at @s store result storage pstorage:stats changes.change.uuid1 int 1 run data get entity @s UUID[1]
execute as @s at @s store result storage pstorage:stats changes.change.uuid2 int 1 run data get entity @s UUID[2]
execute as @s at @s store result storage pstorage:stats changes.change.uuid3 int 1 run data get entity @s UUID[3]
function pstorage:technical/run_function_by_storage with storage pstorage:stats changes.change
