# 随机选其一
$execute store result storage jk:pof data.spectral_hand.index int 1 run random value 0..$(random_max)
function jkpof:state/1/special_item/spectral_hand/2 with storage jk:pof data.spectral_hand
