//Culture

//Borealis culture
/decl/cultural_info/culture/tajaran//base define
	name = CULTURE_TAJARA
	description = "The Tajaran culture is steeped in superstition and tradition from centuries of survival on their harsh, frozen homeworld."
	language = /decl/language/tajaran
	secondary_langs = list(
		/decl/language/human/common,
		/decl/language/tajaran/akhani,
		/decl/language/tajaran/tailsign,
		/decl/language/sign
	)

/decl/cultural_info/culture/tajaran/ethnicity_hharar
	name = CULTURE_TAJARA_HHARAR
	description = "The first Tajaran ethnicity who Humanity came in contact with is generally viewed as the 'typical Tajara', which is reinforced by their numerical superiority over the other groups. Additionally, given their large numbers and capabilities, they most often serve in governmental positions and as ambassadors to other races; this leads to them being taken as the 'face' of the Tajaran race, as it were. Hharar trend towards being the most intellectual of all Tajaran groups, and as such their physical prowess is significantly reduced. The Hharar are the stereotypical 'worker' Tajara, commonly described as loyal employees who are passionate and not afraid to voice their opinions."
	language = /decl/language/tajaran
	secondary_langs = list(
		/decl/language/tajaran,
		/decl/language/tajaran/akhani,
		/decl/language/tajaran/tailsign,
		/decl/language/sign,
		/decl/language/human/common
	)

/decl/cultural_info/culture/tajaran/ethnicity_zhan
	name = CULTURE_TAJARA_ZHAN
	description = "The second most populous of Tajaran ethnicities, and are considered to be the backbone of the Tajaran workforce. Because of their history of hard work and the way they adapted to harsh mountain life, Zhan-Khazan are more physically intimidating than other Tajara. Featuring more toned, muscular bodies, thicker fur coats, and heavier bodyweight, they are well-suited to tasks requiring brute strength and heavy lifting. Due to their status as laborer they suffer discrimination and are usually regarded as less intelligent."
	language = /decl/language/tajaran
	secondary_langs = list(
		/decl/language/tajaran,
		/decl/language/tajaran/akhani,
		/decl/language/tajaran/tailsign,
		/decl/language/sign,
		/decl/language/human/common
	)
	economic_power = 0.95

/decl/cultural_info/culture/tajaran/ethnicity_msai
	name = CULTURE_TAJARA_MSAI
	description = "The third most populous Tajaran ethnic group, the M'sai were at one point the hunters for ancient Tajara and evolved to have lithe, slender forms, and light fur that hid them in the blizzards on Adhomai. As Tajaran society advanced, M'sai could be found in many roles related to combat, including law enforcement and military service. They are very loyal to their friends and family but aren't as overt about it as the Zhan-Khazan. With wide eyes and acute senses, they make great soldiers, with a vision adapted to compensate for the heavy blizzards that plague their home planet. They are also great survivalists and are capable of scrounging food for themselves via hunting."
	language = /decl/language/tajaran
	secondary_langs = list(
		/decl/language/tajaran,
		/decl/language/tajaran/akhani,
		/decl/language/tajaran/tailsign,
		/decl/language/sign,
		/decl/language/human/common
	)

//needs to be changed
/decl/cultural_info/culture/tajaran/ethnicity_njarir
	name = CULTURE_TAJARA_NJARIR
	description = "The ethnic group that made up the majority of the plutocracy prior to human discovery. Their lineage can be traced from careful breeding between Hharar and M'sai, leading to where they currently are today. Following the series of events on Adhomai, Njarir make up less than ten percent of the population. Easily identifiable by their large ears, fluffy tails, luxurious fur, and slender, elegant features. Njarir suffer persecution and rejection from certain proponents of Tajaran society because of their bloodline. As the most learned of all Tajaran ethnic groups, they boast high intelligence and have a propensity towards the arts and sciences. When the Great Frost began they did not fare well at all, most of them however did either end up continuing their research, or rule in holds they made up an extreme minority of the population, which has led to inbreeding in order to keep the blood “pure”. They usually can speak the language known as Ahkani, the royal ancient tongue, typically not taught to non-royals as to retain a method for speaking above the commoners."
	language = list(
		/decl/language/tajaran,
		/decl/language/tajaran/akhani
	)
	secondary_langs = list(
		/decl/language/tajaran,
		/decl/language/tajaran/akhani,
		/decl/language/tajaran/tailsign,
		/decl/language/sign,
		/decl/language/human/common
	)
	economic_power = 0.9

/decl/cultural_info/culture/tajaran/ethnicity_mixedbreed
	name = CULTURE_TAJARA_MIXEDBREED
	description = "You are a mixed breed Tajara! Whether your a mix of Hharar, Zhan, M'sai, or Njarir you don't fit under any ethnicity. Tajara who are mixed breed are usually discriminated amongst their own kind."
	language = /decl/language/tajaran
	secondary_langs = list(
		/decl/language/tajaran,
		/decl/language/tajaran/akhani,
		/decl/language/tajaran/tailsign,
		/decl/language/sign,
		/decl/language/human/common
	)
	economic_power = 0.7