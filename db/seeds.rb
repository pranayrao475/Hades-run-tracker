puts "🌱 Creating Gods..."
athena = OlympianGod.create(name: "Athena", title: "Goddess of Wisdom", image: "https://static.wikia.nocookie.net/hades_gamepedia_en/images/3/3c/Athena_reward.png/revision/latest/scale-to-width-down/235?cb=20190119213037")
zeus = OlympianGod.create(name: "Zeus", title: "King of the Olympians", image: "https://static.wikia.nocookie.net/hades_gamepedia_en/images/b/b2/Zeus_reward.png/revision/latest/scale-to-width-down/230?cb=20190119213134")
aphrodite = OlympianGod.create(name: "Aphrodite", title: "Goddess of Love And Beauty", image: "https://static.wikia.nocookie.net/hades_gamepedia_en/images/5/5a/Aphrodite_reward.png/revision/latest/scale-to-width-down/239?cb=20190119213003")
ares = OlympianGod.create(name: "Ares", title: "God of War", image: "https://static.wikia.nocookie.net/hades_gamepedia_en/images/0/06/Ares_reward.png/revision/latest/scale-to-width-down/167?cb=20181213092542")
artemis = OlympianGod.create(name: "Artemis", title: "Goddess of the Hunt", image: "https://static.wikia.nocookie.net/hades_gamepedia_en/images/2/2c/Artemis_Reward.png/revision/latest/scale-to-width-down/194?cb=20181214065026")
poseidon = OlympianGod.create(name: "Poseidon", title: "God of the Sea", image: "https://static.wikia.nocookie.net/hades_gamepedia_en/images/9/9d/Poseidon_reward.png/revision/latest/scale-to-width-down/247?cb=20190119213120")
demeter = OlympianGod.create(name: "Demeter", title: "Goddess of the Seasons", image: "https://static.wikia.nocookie.net/hades_gamepedia_en/images/4/46/Demeter_reward.png/revision/latest/scale-to-width-down/207?cb=20200127125835")
dionysus = OlympianGod.create(name: "Dionysus", title: "God of Wine", image: "https://static.wikia.nocookie.net/hades_gamepedia_en/images/4/41/Dionysus_reward.png/revision/latest/scale-to-width-down/183?cb=20190213184821")
hermes = OlympianGod.create(name: "Hermes", title: "God of Swiftness", image: "https://static.wikia.nocookie.net/hades_gamepedia_en/images/c/ce/Hermes_reward.png/revision/latest/scale-to-width-down/214?cb=20190612154840")


pat = User.create(username: "Patrick", password: "asdf", password_confirmation: "asdf")
pr = User.create(username: "Pranay", password: "asdf", password_confirmation: "asdf")

pat.runs << Run.create(cleared_levels: 4)
pr.runs << Run.create(cleared_levels: 4)

puts "🌱 Seeding boons..."
athena.boons << Boon.create([
    {boon_name: "Divine Strike", description: "Your Attack is stronger, and can Deflect."},
    {boon_name: "Divine Flourish", description: "Your Special is stronger, and can Deflect."},
    {boon_name: "Phalanx Shot", description: "Your Cast damages foes in a small area, and can Deflect"},
    {boon_name: "Phalanx Flare", description: "Your Cast damages foes around you, and can Deflect."},
    {boon_name: "Divine Dash", description: "Your Dash deals damage and can Deflect."},
    {boon_name: "Athena's Aid", description: "Your Call briefly makes you Invulnerable and Deflect all attacks."},
    {boon_name: "Holy Shield", description: "After you take damage, damage nearby foes and briefly Deflect."},
    {boon_name: "Bronze Skin", description: "Resist damage from foes' attacks."},
    {boon_name: "Sure Footing", description: "Resist damage from Traps."},
    {boon_name: "Proud Bearing", description: "You begin each Encounter with your God Gauge partly full."},
    {boon_name: "Blinding Flash", description: "Your abilities that can Deflect also make foes Exposed for 5 Sec."},
    {boon_name: "Brilliant Riposte", description: "When you Deflect attacks, they deal more damage."},
    {boon_name: "Deathless Stand", description: "Death Defiance makes you Impervious longer. Replenish 1 charge now."},
    {boon_name: "Last Stand", description: "Death Defiance restores more Health than usual. Replenish 1 charge now."},
])
zeus.boons << Boon.create([
    {boon_name: "Thunder Flourish", description: "Your Special causes a lightning bolt to strike nearby foes."},
    {boon_name: "Electric Shot", description: "Your Cast is a burst of chain-lightning that bounces between foes."},
    {boon_name: "Thunder Flare", description: "Your Cast causes a lightning bolt to strike nearby foes."},
    {boon_name: "Thunder Dash", description: "Your Dash causes a lightning bolt to strike nearby foes."},
    {boon_name: "Zeus' Aid", description: "Your Call makes lightning strike nearby foes repeatedly for a few seconds."},
    {boon_name: "Heaven's Vengeance", description: "After you take damage, your foe is struck by lightning."},
    {boon_name: "Lightning Reflexes", description: "After you Dash just before getting hit, a bolt strikes a nearby foes."},
    {boon_name: "Storm Lightning", description: "Your chain-lightning effects bounce more times before expiring."},
    {boon_name: "High Voltage", description: "Your lightning bolt effects deal damage in a larger area."},
    {boon_name: "Double Strike", description: "Your lightning bolt effects have a chance to strike twice."},
    {boon_name: "Static Discharge", description: "Your lightning effects also make foes Jolted."},
    {boon_name: "Clouded Judgement", description: "Your God Gauge charges faster when you deal or take damage."},
    {boon_name: "Billowing Strength", description: "After using Call, you deal more damage for a short time."},
    {boon_name: "Splitting Bolt", description: "All your lightning effects create an additional burst."}
 ])
aphrodite.boons << Boon.create([
    {boon_name: "Heartbreak Strike", description: "Your Attack deals more damage and inflicts Weak."},
    {boon_name: "Heartbreak Flourish", description: "Your Special deals more damage and inflicts Weak."},
    {boon_name: "Crush Shot", description: "Your Cast is a wide, short-range blast that inflicts Weak."},
    {boon_name: "Passion Flare", description: "Your Cast damages foes around you and inflicts Weak."},
    {boon_name: "Passion Dash", description: "Your Dash inflicts damage where you end up, inflicting Weak."},
    {boon_name: "Aphrodite's Aid", description: "Your Call fires a seeking projectile that inflicts Charm."},
    {boon_name: "Dying Lament", description: "When foes are slain, they damage nearby foes and inflict Weak."},
    {boon_name: "Wave of Despair", description: "After you take damage, damage nearby foes and inflict Weak."},
    {boon_name: "Different League", description: "Resist some damage from nearby foes' attacks."},
    {boon_name: "Life Affirmation", description: "Max life upgrade chamber rewards are worth more."},
    {boon_name: "Empty Inside", description: "Your Weak effects have a longer duration."},
    {boon_name: "Sweet Surrender", description: "Weak-afflicted foes are also more susceptible to damage."},
    {boon_name: "Broken Resolve", description: "Your Weak effects are more potent."},
    {boon_name: "Blown Kiss", description: "Your Cast shoots farther and is stronger against undamaged foes."},
    {boon_name: "Unhealthy Fixation", description: "Your Weak effects also have a chance to Charm foes."}
 ])
ares.boons << Boon.create([
    {boon_name: "Curse of Agony", description: "Your Attack inflicts Doom."},
    {boon_name: "Curse of Pain", description: "Your Special inflicts Doom."},
    {boon_name: "Slicing Shot", description: "Your Cast sends a Blade Rift hurling ahead."},
    {boon_name: "Slicing Flare", description: "Your Cast sends a large Blade Rift hurling ahead for a brief time."},
    {boon_name: "Blade Dash", description: "Your Dash creates a Blade Rift where you started."},
    {boon_name: "Ares' Aid", description: "Your Call turns you into an Impervious Blade Rift for a short time."},
    {boon_name: "Curse of Vengeance", description: "After you take damage, inflict Doom on surrounding foes."},
    {boon_name: "Urge to Kill", description: "Your Attack, Special, and Cast deal more damage."},
    {boon_name: "Urge to Kill", description: "Your Attack, Special, and Cast deal more damage."},
    {boon_name: "Battle Rage", description: "After slaying a foe, your next Attack or Special deals more damage."},
    {boon_name: "Blood Frenzy", description: "After using Death Defiance, deal more damage that encounter."},
    {boon_name: "Black Metal", description: "Your Blade Rift powers deal damage in a wider area."},
    {boon_name: "Engulfing Vortex", description: "Your Blade Rift effects last longer and pull foes in."},
    {boon_name: "Dire Misfortune", description: "Your Doom effects deal more damage when applied multiple times."},
    {boon_name: "Impending Doom", description: "Your Doom effects deal more damage, after a slightly longer time."},
    {boon_name: "Vicious Cycle", description: "Your Blade Rift effects deal more damage for each consecutive hit."}
 ])
artemis.boons << Boon.create([
    {boon_name: "Deadly Strike", description: "Your Attack is stronger, with +15% chance to deal Critical damage."},
    {boon_name: "Deadly Flourish", description:"Your Special is stronger, with +20% chance to deal Critical Damage."},
    {boon_name: "True Shot", description: "Your Cast seeks foes, with a 10% chance to deal Critical damage"},
    {boon_name: "Hunter's Flare", description: "Your Cast damages foes around you, with a 10% Critical chance."},
    {boon_name: "Hunter's Dash", description: "Your Dash-Strike deals more damage."},
    {boon_name: "Artemis' Aid", description: "Your Call fires a seeking arrow with +35% Critical chance."},
    {boon_name: "Pressure Points", description: "Any damage you deal has a chance to be Critical."},
    {boon_name: "Exit Wounds", description: "Your foes take damage when your Cast stuck in them is dislodged."},
    {boon_name: "Hide Breaker", description: "Your Critical effects deal even more damage to Armor."},
    {boon_name: "Clean Kill", description: "Your Critical effects deal even more damage."},
    {boon_name: "Hunter Instinct", description: "Your God Gauge charges faster when you deal Critical damage."},
    {boon_name: "Hunter's Mark", description: "After you deal Critical damage to a foe, a foe near it is Marked."},
    {boon_name: "Support Fire", description: "After you Cast, or hit with an Attack or Special, fire a seeking arrow."},
    {boon_name: "Fully Loaded", description: "Gain extra Cast Ammo"}
 ])
 demeter.boons << Boon.create([

 ])

puts "✅ Done seeding!"
