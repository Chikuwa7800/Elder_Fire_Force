## 移動時に再起実行
 # 再起カウント
  scoreboard players add @s eff.bullet.rerun 1
 # エンティティhit検知
  execute positioned ^ ^ ^ positioned ~-0.001 ~-0.001 ~-0.001 as @e[dx=0,dy=0,dz=0,type=!#elder_force:cannot_hurt_entities,tag=!eff.normal_bullet] positioned ~-0.998 ~-0.998 ~-0.998 if entity @s[dx=0,dy=0,dz=0] unless score @s eff.entity_id = @n[tag=eff.normal_bullet] eff.entity_id positioned ~0.999 ~0.999 ~0.999 run function elder_force:entity/bullet/hit
  execute positioned ^ ^ ^0.125 positioned ~-0.001 ~-0.001 ~-0.001 as @e[dx=0,dy=0,dz=0,type=!#elder_force:cannot_hurt_entities,tag=!eff.normal_bullet] positioned ~-0.998 ~-0.998 ~-0.998 if entity @s[dx=0,dy=0,dz=0] unless score @s eff.entity_id = @n[tag=eff.normal_bullet] eff.entity_id positioned ~0.999 ~0.999 ~0.999 run function elder_force:entity/bullet/hit
  execute positioned ^ ^ ^0.25 positioned ~-0.001 ~-0.001 ~-0.001 as @e[dx=0,dy=0,dz=0,type=!#elder_force:cannot_hurt_entities,tag=!eff.normal_bullet] positioned ~-0.998 ~-0.998 ~-0.998 if entity @s[dx=0,dy=0,dz=0] unless score @s eff.entity_id = @n[tag=eff.normal_bullet] eff.entity_id positioned ~0.999 ~0.999 ~0.999 run function elder_force:entity/bullet/hit
  execute positioned ^ ^ ^0.375 positioned ~-0.001 ~-0.001 ~-0.001 as @e[dx=0,dy=0,dz=0,type=!#elder_force:cannot_hurt_entities,tag=!eff.normal_bullet] positioned ~-0.998 ~-0.998 ~-0.998 if entity @s[dx=0,dy=0,dz=0] unless score @s eff.entity_id = @n[tag=eff.normal_bullet] eff.entity_id positioned ~0.999 ~0.999 ~0.999 run function elder_force:entity/bullet/hit
  execute positioned ^ ^ ^0.5 positioned ~-0.001 ~-0.001 ~-0.001 as @e[dx=0,dy=0,dz=0,type=!#elder_force:cannot_hurt_entities,tag=!eff.normal_bullet] positioned ~-0.998 ~-0.998 ~-0.998 if entity @s[dx=0,dy=0,dz=0] unless score @s eff.entity_id = @n[tag=eff.normal_bullet] eff.entity_id positioned ~0.999 ~0.999 ~0.999 run function elder_force:entity/bullet/hit
  execute positioned ^ ^ ^0.625 positioned ~-0.001 ~-0.001 ~-0.001 as @e[dx=0,dy=0,dz=0,type=!#elder_force:cannot_hurt_entities,tag=!eff.normal_bullet] positioned ~-0.998 ~-0.998 ~-0.998 if entity @s[dx=0,dy=0,dz=0] unless score @s eff.entity_id = @n[tag=eff.normal_bullet] eff.entity_id positioned ~0.999 ~0.999 ~0.999 run function elder_force:entity/bullet/hit
  execute positioned ^ ^ ^0.75 positioned ~-0.001 ~-0.001 ~-0.001 as @e[dx=0,dy=0,dz=0,type=!#elder_force:cannot_hurt_entities,tag=!eff.normal_bullet] positioned ~-0.998 ~-0.998 ~-0.998 if entity @s[dx=0,dy=0,dz=0] unless score @s eff.entity_id = @n[tag=eff.normal_bullet] eff.entity_id positioned ~0.999 ~0.999 ~0.999 run function elder_force:entity/bullet/hit
  execute positioned ^ ^ ^0.875 positioned ~-0.001 ~-0.001 ~-0.001 as @e[dx=0,dy=0,dz=0,type=!#elder_force:cannot_hurt_entities,tag=!eff.normal_bullet] positioned ~-0.998 ~-0.998 ~-0.998 if entity @s[dx=0,dy=0,dz=0] unless score @s eff.entity_id = @n[tag=eff.normal_bullet] eff.entity_id positioned ~0.999 ~0.999 ~0.999 run function elder_force:entity/bullet/hit

 # ブロックにぶつかった？
  execute positioned ^ ^ ^ unless block ~ ~ ~ #elder_force:no_collision run function elder_force:entity/bullet/hit_to_ground
  execute positioned ^ ^ ^0.125 unless block ~ ~ ~ #elder_force:no_collision run function elder_force:entity/bullet/hit_to_ground
  execute positioned ^ ^ ^0.25 unless block ~ ~ ~ #elder_force:no_collision run function elder_force:entity/bullet/hit_to_ground
  execute positioned ^ ^ ^0.375 unless block ~ ~ ~ #elder_force:no_collision run function elder_force:entity/bullet/hit_to_ground
  execute positioned ^ ^ ^0.5 unless block ~ ~ ~ #elder_force:no_collision run function elder_force:entity/bullet/hit_to_ground
  execute positioned ^ ^ ^0.625 unless block ~ ~ ~ #elder_force:no_collision run function elder_force:entity/bullet/hit_to_ground
  execute positioned ^ ^ ^0.75 unless block ~ ~ ~ #elder_force:no_collision run function elder_force:entity/bullet/hit_to_ground
  execute positioned ^ ^ ^0.875 unless block ~ ~ ~ #elder_force:no_collision run function elder_force:entity/bullet/hit_to_ground
 # 演出
  particle smoke ^ ^ ^ 0.0125 0.0125 0.0125 0 1 force
 # 再起カウントが移動速度値と同じになれば再起を止める
  $execute unless score @s eff.bullet.rerun matches $(speed).. positioned ^ ^ ^1 run return run function elder_force:entity/bullet/do_on_moving with entity @s data
 # スコアリセット
  scoreboard players reset @s eff.bullet.rerun