tag @s add eff.shot
$execute summon item_display run function elder_force:entity/bullet/init {"speed":$(speed),"damage":$(damage),"gravity":$(gravity)}
tag @s remove eff.shot