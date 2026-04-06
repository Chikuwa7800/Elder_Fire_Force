## エンティティヒット
 # 当たった地点にマーカー配置
  summon marker ~ ~ ~ {Tags:["eff.bullet.hit"]}
 # 判定
  # ヘッドショット(エンティティ視点から1ブロック内)
   execute at @s anchored eyes positioned ^ ^ ^0.001 positioned ~-0.5 ~-0.5 ~-0.5 if entity @n[type=marker,tag=eff.bullet.hit,dx=0,dy=0,dz=0] positioned ~0.5 ~0.5 ~0.5 run function elder_force:entity/bullet/_head_shot
  # その他(ボディショット)
   execute at @s anchored eyes positioned ^ ^ ^0.001 positioned ~-0.5 ~-0.5 ~-0.5 unless entity @n[type=marker,tag=eff.bullet.hit,dx=0,dy=0,dz=0] at @s anchored eyes positioned ^ ^ ^0.001 run function elder_force:entity/bullet/_body_shot
 # マーカーキル
  kill @n[type=marker,tag=eff.bullet.hit]