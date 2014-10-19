$modelname "Missile_Defense.mdl"

$model "studio" "Missile_Defense_base.smd"

$bodygroup Hull
{
	studio "Missile_Defense_gibs2.smd"
	studio "idle.smd"
}

$bodygroup Rgun
{
	studio "Missile_Defense_gibs3.smd"
	studio "idle.smd"
}

$bodygroup Lgun
{
	studio "Missile_Defense_gibs4.smd"
	studio "idle.smd"
}

$bodygroup Dome
{
	studio "Missile_Defense_gibs5.smd"
	studio "idle.smd"
}

$cdmaterials "models/missile_defense"
$attachment "0" "R_Gun_AtchPnt" -0.00 0.00 0.00 rotate -0 0 0 
$attachment "1" "L_Gun_AtchPnt" -0.00 -0.00 0.00 rotate -0 0 0 


$controller 0 "Main_Base" ZR -360.000000 360.000000
$controller 1 "R_Gun" XR -90.000000 45.000000
$controller 1 "L_gun" XR -90.000000 45.000000

$surfaceprop "metal"
$eyeposition 0.000 0.000 0.000
$illumposition 0.008 -0.000 28.235
$sequence idle "idle" {
	loop 
	ACT_IDLE 1 
	fps 30.000000 
	{ event AE_NPC_MUZZLEFLASH 0 "COMBINE R_Gun_AtchPnt" }
	{ event AE_NPC_MUZZLEFLASH 0 "COMBINE L_Gun_AtchPnt" }
}