playsound block.stone.step neutral @a ~ ~ ~ 0.5 2
playsound entity.player.attack.strong neutral @a ~ ~ ~ 0.5 2
particle item{item:"iron_nugget"} ~ ~ ~ 0.0 0.0 0.0 0 5
function elder_force:entity/bullet/damage with entity @n[tag=eff.normal_bullet] data
kill @n[tag=eff.normal_bullet]