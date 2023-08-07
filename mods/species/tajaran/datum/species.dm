/datum/appearance_descriptor/age/tajara
	standalone_value_descriptors = list(
		"an infant" =       1,
		"a toddler" =       3,
		"a child" =         7,
		"an adolescent" =  13,
		"a young adult" =  18,
		"an adult" =       30,
		"middle-aged" =    45,
		"aging" =          60,
		"elderly" =       85
	)

/decl/species/tajara
	name = SPECIES_TAJARA
	name_plural = "Tajara"
	base_prosthetics_model = null

	low_light_vision_effectiveness = 0.15
	low_light_vision_adjustment_speed = 0.3

	description = "The Tajara are a race of humanoids that possess markedly felinoid traits that include \
	 a semi-prehensile tail, a body covered in fur of varying shades, and padded, digitigrade feet. \
 	 They are a naturally superstitious species, being that they are from a harsh and icy cold planet."

	hidden_from_codex = FALSE

	age_descriptor = /datum/appearance_descriptor/age/tajara

	available_bodytypes = list(
		/decl/bodytype/feline/female,
		/decl/bodytype/feline/masculine
)

	preview_outfit = /decl/hierarchy/outfit/job/generic/engineer

	spawn_flags = SPECIES_CAN_JOIN | SPECIES_IS_WHITELISTED //Whitelisted because you MUST have a basic understanding on the lore
	appearance_flags = HAS_HAIR_COLOR | HAS_LIPS | HAS_UNDERWEAR | HAS_SKIN_COLOR | HAS_EYE_COLOR

	blood_types = list(
		/decl/blood_type/feline/mplus,
		/decl/blood_type/feline/mminus,
		/decl/blood_type/feline/rplus,
		/decl/blood_type/feline/rminus,
		/decl/blood_type/feline/mrplus,
		/decl/blood_type/feline/mrminus,
		/decl/blood_type/feline/oplus,
		/decl/blood_type/feline/ominus
	)


	flesh_color = "#afa59e"
	base_hair_color = "#080808"
	base_color = "#080808"
	base_eye_color = "#080808"
	default_h_style = /decl/sprite_accessory/hair/taj

	organs_icon = 'mods/species/tajaran/icons/organs.dmi'

	darksight_range = 7
	slowdown = -0.5
	snow_slowdown_mod = -1
	flash_mod = 2

	hunger_factor = DEFAULT_HUNGER_FACTOR * 1.2
	gluttonous = GLUT_TINY

//TODO: Add a unarmed claws attack tajara have claws!

	unarmed_attacks = list(
		/decl/natural_attack/stomp,
		/decl/natural_attack/kick,
		/decl/natural_attack/punch,
		/decl/natural_attack/bite/sharp
	)

	move_trail = /obj/effect/decal/cleanable/blood/tracks/paw

	cold_level_1 = 200
	cold_level_2 = 140
	cold_level_3 = 80

	heat_level_1 = 330
	heat_level_2 = 380
	heat_level_3 = 800

	heat_discomfort_level = 294
	cold_discomfort_level = 230

	heat_discomfort_strings = list(
		"Your fur prickles in the heat.",
		"You feel uncomfortably warm.",
		"Your overheated skin itches."
	)

	available_cultural_info = list(
		TAG_CULTURE = list(
			/decl/cultural_info/culture/tajaran/ethnicity_hharar,
			/decl/cultural_info/culture/tajaran/ethnicity_zhan,
			/decl/cultural_info/culture/tajaran/ethnicity_msai,
			/decl/cultural_info/culture/tajaran/ethnicity_njarir,
			/decl/cultural_info/culture/tajaran/ethnicity_mixedbreed
		),
		TAG_HOMEWORLD = list(
			/decl/cultural_info/location/adhomai,
			/decl/cultural_info/location/other
		)
	)

	default_emotes = list(
		/decl/emote/human/swish,
		/decl/emote/human/wag,
		/decl/emote/human/sway,
		/decl/emote/human/qwag,
		/decl/emote/human/fastsway,
		/decl/emote/human/swag,
		/decl/emote/human/stopsway,
		/decl/emote/audible/purr,
		/decl/emote/audible/purrlong,
		/decl/emote/audible/meow,
		/decl/emote/audible/mrrp
	)

	//Autohiss
	autohiss_basic_map = list(
		"r" = list("rr", "rrr", "rrrr")
	)

	autohiss_extra_map = list(
		"m" = list("mr", "mrr", "mrrr")//you play like a cat mrrp mrp meow!
	)

	autohiss_exempt = list(
		LANGUAGE_SIIKMAAS,
		LANGUAGE_AKHANI
	)

	has_organ = list(
		BP_HEART =    /obj/item/organ/internal/heart,
		BP_STOMACH =  /obj/item/organ/internal/stomach,
		BP_LUNGS =    /obj/item/organ/internal/lungs,
		BP_LIVER =    /obj/item/organ/internal/liver,
		BP_KIDNEYS =  /obj/item/organ/internal/kidneys,
		BP_BRAIN =    /obj/item/organ/internal/brain,
		BP_APPENDIX = /obj/item/organ/internal/appendix,
		BP_EYES =     /obj/item/organ/internal/eyes/taj
	)

	override_limb_types = list(BP_TAIL = /obj/item/organ/external/tail/cat)

/obj/item/organ/internal/eyes/taj
	name = "tajaran eyes"

/decl/species/tajaran/handle_additional_hair_loss(var/mob/living/carbon/human/H, var/defer_body_update = TRUE)
	. = H && H.change_skin_color(rgb(189, 171, 143))
