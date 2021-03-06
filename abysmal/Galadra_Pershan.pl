sub EVENT_WAYPOINT_ARRIVE {
	if(($wp == 1) || ($wp == 9) || ($wp == 27) || ($wp == 42) || ($wp == 51)) {
		quest::say("Is there anything I can get for you gentlemen tonight? Perhaps a light ale, or maybe some malt beer?");
	}
	if(($wp == 2) || ($wp == 10) || ($wp == 28) || ($wp == 43) || ($wp == 52)) {
		quest::say("Alright, I've got your order, I'll be right back with your drinks.");
	}
	if(($wp == 5) || ($wp == 19) || ($wp == 37) || ($wp == 46) || ($wp == 61)) {
		quest::say("Here are the drinks you ordered, I'll put them on your tab, just pay at the counter on your way out.");
	}
	if($wp == 1) {
		quest::signal(279034,5000); # NPC: #Aprilia_Marrow
		quest::signal(279040,10000); # NPC: Soulbinder_Jerlin Soulbinder
		quest::signal(279155,15000); # NPC: Hamisi_Lerato
		quest::signal(279208,20000); # NPC: #Lovine_Lemise
		quest::signal(279000,25000); # NPC: #Reiya_the_Pained
	}
	if($wp == 9) {
		quest::signalwith(279043,2,5000); # NPC: Stu_Girbnol
		quest::signalwith(279044,3,10000); # NPC: Haon_McClure
		quest::signalwith(279045,4,15000); # NPC: Devolnu_Solahpeka
		quest::signalwith(279046,4,20000); # NPC: Barny_Magmilg
		quest::signalwith(279047,2,25000); # NPC: Iawgom_Umzzig
	}
	if($wp == 27) {
		quest::signal(279036,5000); # NPC: #Verna_Abella
		quest::signal(279037,10000); # NPC: #Sophia_Florence
	}
	if($wp == 42) {
		quest::signal(279002,5000); # NPC: Galdorin_Visigothe
	}
	if($wp == 51) {
		quest::signal(279036,5000); # NPC: #Verna_Abella
		quest::signal(279037,10000); # NPC: #Sophia_Florence
	}
}
		