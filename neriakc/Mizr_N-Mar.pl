# Mizr_N'Mar
# Location: neriakc - Neriak Third Gate
# npcID: 42011
# spawngroupID: 42023
# Quests:
#    Part of quest for Incandescent Mask by Mystic414
#    Part of quest for Spell: Tashania   by darkonig

sub EVENT_SAY {
  if($text=~/Hail/i){
    quest::say("Have you come to buy a scroll from me?");
  }
  elsif ($text=~/coin/i){
    quest::say("So, you want a coin do you?")
  }
}

sub EVENT_ITEM {

  # Rune of Fortune (Middle)
  if($gold == 50) {
    quest::say("I see that Sultin has sent you to me.  Very well, here is your rune."); # Made this text up
    quest::summonitem(10531); # Item: Rune of Fortune
  }

  # Tashania Quest
  # items needed:
  #     10791 Glowing Coin of Tash
  # items received:
  #     10792 Gleaming Coin of Tash
  # plus faction received:
  #     442   Temple of Sol Ro
  # minus faction received:
  #     291   Shadowed Men
  # experience received:
  #     1000
  if(plugin::check_handin(\%itemcount, 10791 => 1)) {
    quest::say("Ah - the Coin of Tash - and already enchanted by.. ? Tarn? Very good! I have enchanted it further - you must now take the coin to Raine Beteria in the Library of Erudin to get the final enchantment.");
    quest::summonitem(10792); # Item: Gleaming Coin of Tash
    quest::faction(5029,  10); # Faction: Temple Of Sol Ro
    quest::faction(416, -10); # Faction: Shadowed Men
    quest::exp(1000);
  }
  plugin::return_items(\%itemcount);
} 
