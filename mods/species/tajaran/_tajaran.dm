#define SPECIES_TAJARA "Tajara"
#define CULTURE_TAJARA "Tajara"
#define LANGUAGE_SIIKMAAS "Siik'Maas"
#define LANGUAGE_AKHANI "Akhani"
#define LANGUAGE_SIIKTAJR "Siik'Tajr"
#define BODY_FLAG_FELINE BITFLAG(7)

/obj/item/clothing/Initialize()
	. = ..()
	if(bodytype_equip_flags & BODY_FLAG_EXCLUDE)
		bodytype_equip_flags |= BODY_FLAG_FELINE

/mob/living/carbon/human/tajaran/Initialize(mapload)
	. = ..(mapload, SPECIES_TAJARA)

/decl/modpack/tajara
	name = "CG Purrsistent Tajara Content"

//Huge thanks to Aurora.3 & CitRP for the content used