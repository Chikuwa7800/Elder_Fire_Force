#tag @s add eff.broken
playsound entity.item_frame.remove_item player @a ~ ~ ~ 1 1
tellraw @s {translate:"notice.eff.break",color:dark_red}