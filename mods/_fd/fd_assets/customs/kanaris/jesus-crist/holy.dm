/mob/living/carbon/human/proc/holyshit()
	src.overlays += image('mods/_fd/fd_assets/customs/kanaris/jesus-crist/effects.dmi', "blessed")
	src.psi.max_stamina = 150
	src.psi.stamina = src.psi.max_stamina
	src.psi.update(force = TRUE)

// Levitation
	src.pass_flags |= PASS_FLAG_TABLE
	src.pixel_y = 8
	src.overlays += image('icons/screen/psi.dmi', "levitation")
	src.make_floating(5)
	src.levitation = TRUE

/mob/living/carbon/human/proc/unholyshit()
	src.overlays -= image('mods/_fd/fd_assets/customs/kanaris/jesus-crist/effects.dmi', "blessed")
	src.psi.max_stamina = 50
	src.psi.stamina = src.psi.max_stamina
	src.psi.update(force = TRUE)

// Levitation
	src.levitation = FALSE
	src.pass_flags &= ~PASS_FLAG_TABLE
	src.pixel_y = 0
	src.overlays -= image('icons/screen/psi.dmi', "levitation")
	src.stop_floating()
