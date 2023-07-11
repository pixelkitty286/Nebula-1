/decl/bodytype/feline/female
	name =                 "feminine"
	bodytype_category =    BODYTYPE_HUMANOID
	limb_blend =           ICON_ADD
	icon_template =        'mods/species/tajaran/icons/template.dmi'
	icon_base =            'mods/species/tajaran/icons/body_female.dmi'
	icon_deformed =        'mods/species/tajaran/icons/deformed_body_female.dmi'
	bandages_icon =        'icons/mob/bandage.dmi'
	health_hud_intensity = 1.75
	bodytype_flag =        BODY_FLAG_FELINE
	associated_gender =      FEMALE
	uniform_state_modifier = "_f"


/decl/bodytype/feline/masculine
	name =                   "masculine"
	bodytype_category =    BODYTYPE_HUMANOID
	limb_blend =           ICON_ADD
	icon_base =              'mods/species/tajaran/icons/body_male.dmi'
	icon_deformed =          'mods/species/tajaran/icons/deformed_body_male.dmi'
	bandages_icon =        'icons/mob/bandage.dmi'
	bodytype_flag =        BODY_FLAG_FELINE
	associated_gender =      MALE
	uniform_state_modifier = null

/obj/item/organ/external/tail/cat
	tail_animation = 'mods/species/tajaran/icons/tail.dmi'
	tail = "tajtail"
	tail_blend = ICON_ADD
