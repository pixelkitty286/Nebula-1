/datum/hud/pai/FinalizeInstantiation()
	var/obj/screen/using
	using = new /obj/screen/pai/software()
	using.SetName("Software Interface")
	adding += using
	using = new /obj/screen/pai/subsystems()
	using.SetName("Subsystems")
	adding += using
	using = new /obj/screen/pai/shell()
	using.SetName("Toggle Chassis")
	adding += using
	using = new /obj/screen/pai/rest()
	using.SetName("Rest")
	adding += using
	using = new /obj/screen/pai/light()
	using.SetName("Toggle Light")
	adding += using
	..()
	hide_inventory()

/obj/screen/pai
	icon = 'icons/mob/screen/pai.dmi'

/obj/screen/pai/Click()
	if(!isobserver(usr) && (!usr.incapacitated() || usr.resting))
		OnClick()

/obj/screen/pai/proc/OnClick()

/obj/screen/pai/software
	name = "Software Interface"
	icon_state = "pai"
	screen_loc = ui_pai_software

/obj/screen/pai/software/OnClick()
	var/mob/living/silicon/pai/pAI = usr
	pAI.paiInterface()

/obj/screen/pai/shell
	name = "Toggle Chassis"
	icon_state = "pai_holoform"
	screen_loc = ui_pai_shell

/obj/screen/pai/shell/OnClick()
	var/mob/living/silicon/pai/pAI = usr
	if(pAI.is_in_card)
		pAI.unfold()
	else
		pAI.fold()

/obj/screen/pai/chassis
	name = "Holochassis Appearance Composite"
	icon_state = "pai_holoform"

/obj/screen/pai/rest
	name = "Rest"
	icon_state = "pai_rest"
	screen_loc = ui_pai_rest

/obj/screen/pai/rest/OnClick()
	var/mob/living/silicon/pai/pAI = usr
	pAI.lay_down()

/obj/screen/pai/light
	name = "Toggle Integrated Lights"
	icon_state = "light"
	screen_loc = ui_pai_light

/obj/screen/pai/light/OnClick()
	var/mob/living/silicon/pai/pAI = usr
	pAI.toggle_integrated_light()

/obj/screen/pai/subsystems
	name = "SubSystems"
	icon_state = "subsystems"
	screen_loc = ui_pai_subsystems

/obj/screen/pai/subsystems/OnClick()
	var/mob/living/silicon/pai/pAI = usr
	var/ss_name = input(usr, "Activates the given subsystem", "Subsystems", "") in pAI.silicon_subsystems_by_name
	if (!ss_name)
		return

	var/stat_silicon_subsystem/SSS = pAI.silicon_subsystems_by_name[ss_name]
	if(istype(SSS))
		SSS.Click()
