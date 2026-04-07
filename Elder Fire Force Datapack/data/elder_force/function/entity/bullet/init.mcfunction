## 状態決め
 # 識別タグ付け
  tag @s add eff.bullet
  tag @s add eff.normal_bullet
 # 識別番号をスコアとエンティティデータ両方に振り分け
  # エンティティデータに振り分け
   execute store result score @s eff.entity_id run scoreboard players get @n[tag=eff.shot] eff.entity_id
  # スコアに振り分け
   execute store result entity @s data."owner" float 1 run scoreboard players get @n[tag=eff.shot] eff.entity_id
 # エンティティデータにattribute的なのを代入
  $data merge entity @s {teleport_duration:1,shadow_radius:0.1,shadow_strength:1,data:{"speed":"$(speed)","damage":"$(damage)","head_damage":"$(head_damage)","gravity":"$(gravity)"}}
 # 弾丸の向きをオーナーと一致させる
  rotate @s ~ ~
