#v0 : selector, v1 : numerator, v2 : denominator, v3 : red

execute if score v0 V matches 0 if score v3 V matches 0 run title @s[tag=!reloading] actionbar ["",{"text":"[ S : B : "},{"text":"A","bold":true,"color":"red"},{"text":" ]    "},{"score":{"name":"v1","objective":"V"}},{"text":"/"},{"score":{"name":"v2","objective":"V"}}]
execute if score v0 V matches 1 if score v3 V matches 0 run title @s[tag=!reloading] actionbar ["",{"text":"[ S : "},{"text":"B","bold":true,"color":"red"},{"text":" : A ]    "},{"score":{"name":"v1","objective":"V"}},{"text":"/"},{"score":{"name":"v2","objective":"V"}}]
execute if score v0 V matches 2 if score v3 V matches 0 run title @s[tag=!reloading] actionbar ["",{"text":"[ "},{"text":"S","bold":true,"color":"red"},{"text":" : B : A ]    "},{"score":{"name":"v1","objective":"V"}},{"text":"/"},{"score":{"name":"v2","objective":"V"}}]
execute if score v0 V matches 0 if score v3 V matches 1 run title @s[tag=!reloading] actionbar ["",{"text":"[ S : B : "},{"text":"A","bold":true,"color":"red"},{"text":" ]    "},{"score":{"name":"v1","objective":"V"},"color":"red"},{"text":"/","color":"red"},{"score":{"name":"v2","objective":"V"},"color":"red"}]
execute if score v0 V matches 1 if score v3 V matches 1 run title @s[tag=!reloading] actionbar ["",{"text":"[ S : "},{"text":"B","bold":true,"color":"red"},{"text":" : A ]    "},{"score":{"name":"v1","objective":"V"},"color":"red"},{"text":"/","color":"red"},{"score":{"name":"v2","objective":"V"},"color":"red"}]
execute if score v0 V matches 2 if score v3 V matches 1 run title @s[tag=!reloading] actionbar ["",{"text":"[ "},{"text":"S","bold":true,"color":"red"},{"text":" : A : B ]    "},{"score":{"name":"v1","objective":"V"},"color":"red"},{"text":"/","color":"red"},{"score":{"name":"v2","objective":"V"},"color":"red"}]
