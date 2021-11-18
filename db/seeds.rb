puts "🌱 Creating Gods..."
athena = OlympianGod.create(name: "Athena", title: "Goddess of Wisdom", image: "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/69573ec3-ec52-4047-b072-a899b3406fa9/de6wdf1-a701ae93-e81a-4416-9776-df3af21ec067.png/v1/fill/w_785,h_1018,q_70,strp/hades__goddess_athena_by_erdjie_de6wdf1-pre.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MjA3NSIsInBhdGgiOiJcL2ZcLzY5NTczZWMzLWVjNTItNDA0Ny1iMDcyLWE4OTliMzQwNmZhOVwvZGU2d2RmMS1hNzAxYWU5My1lODFhLTQ0MTYtOTc3Ni1kZjNhZjIxZWMwNjcucG5nIiwid2lkdGgiOiI8PTE2MDAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.w_n1vNYKr7AkIf9DVG4xsDPUBQqe2OtCqOEaE1WZhCk")
zeus = OlympianGod.create(name: "Zeus", title: "King of the Olympians", image: "https://i.pinimg.com/originals/32/a6/89/32a689393acc1fefd27397ff599c1b36.jpg")
aphrodite = OlympianGod.create(name: "Aphrodite", title: "Goddess of Love And Beauty", image: "https://static.wikia.nocookie.net/hades_gamepedia_en/images/c/c6/Aphrodite.png")
ares = OlympianGod.create(name: "Ares", title: "God of War", image: "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/c11210b1-849c-40d8-82b1-9924e32b6dc9/de7cmaq-9b3dca5d-9f09-4a68-be11-c1776eb0c236.png/v1/fill/w_1600,h_1044,q_80,strp/_hades_fanart__lord_ares_by_signoreratto_de7cmaq-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTA0NCIsInBhdGgiOiJcL2ZcL2MxMTIxMGIxLTg0OWMtNDBkOC04MmIxLTk5MjRlMzJiNmRjOVwvZGU3Y21hcS05YjNkY2E1ZC05ZjA5LTRhNjgtYmUxMS1jMTc3NmViMGMyMzYucG5nIiwid2lkdGgiOiI8PTE2MDAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.6e3_V34wnOBETZFHnncxZWzbu5Et9uX97gSy53UbTug")
artemis = OlympianGod.create(name: "Artemis", title: "Goddess of the Hunt", image: "https://i.pinimg.com/originals/bb/f5/c2/bbf5c2c4ac913ac8baff84783f1fab26.jpg")
poseidon = OlympianGod.create(name: "Poseidon", title: "God of the Sea", image: "https://64.media.tumblr.com/9d8f40c98d70428974ed52fef3a7924a/9aa6e3d4b6014870-88/s1280x1920/fe7e583e0a9361c57b1120f69d8ffdb8223f19f2.jpg")
demeter = OlympianGod.create(name: "Demeter", title: "Goddess of the Seasons", image: "https://assets2.rockpapershotgun.com/demeter-hades-1.jpg/BROK/resize/1920x1920%3E/format/jpg/quality/80/demeter-hades-1.jpg")
dionysus = OlympianGod.create(name: "Dionysus", title: "God of Wine", image: "https://static0.gamerantimages.com/wordpress/wp-content/uploads/2021/03/dionysus-hades-promo.jpg")
hermes = OlympianGod.create(name: "Hermes", title: "God of Swiftness", image: "https://cdn.mos.cms.futurecdn.net/CkHVfAp23yZVQxR2pohKU9-1200-80.jpg")


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
 dionysus.boons << Boon.create([
     {boon_name:"Drunken Strike", description: "Your Attack inflicts Hangover."},
     {boon_name:"Drunken Flourish", description: "Your Special inflicts Hangover."},
     {boon_name:"Trippy Shot", description: "Your Cast lobs a projectile that bursts into Festive Fog."},
     {boon_name:"Trippy Flare", description: "Your Cast damages foes around you, leaving behind Festive Fog."},
     {boon_name:"Drunken Dash", description: "Your Dash inflicts foes near you with Hangover."},
     {boon_name:"Dionysus Aid", description: "Your Call inflicts Hangover to foes all around you for 1.5 Sec."},
     {boon_name:"After Party", description: "If your Health is low after Encounters, restore to the threshold."},
     {boon_name:"Positive Outlook", description: "Take less damage while at 40% Health or below."},
     {boon_name:"Premiun Vintage", description: "Gain Health when you pick up Nectar. Receive 1 Nectar now."},
     {boon_name:"Strong Drink", description: "Using a Fountain restores all Health and gives you bonus damage."},
     {boon_name:"Bad Influence", description: "Deal more damage while 3 foes are Hangover-afflicted."},
     {boon_name:"Numbing Sensation", description: "Your Hangover effects also make foes move slower."},
     {boon_name:"Peer Pressure", description: "Hangover-afflicted foes contaminate other nearby foes every 4 Sec."},
     {boon_name:"High Tolerance", description: "Take less damage while standing in Festive Fog."},
     {boon_name:"Black Out", description: "Hangover-afflicted foes take bonus damage in Festive Fog. Fog Combo Damage: +60%"}

 ])
 demeter.boons << Boon.create([
    {boon_name:"Frost Strike", description: "Your Attack is stronger and inflicts Chill."},
    {boon_name:"Frost Flourish", description: "Your Special is stronger and inflicts Chill."},
    {boon_name:"Crystal Beam", description: "Your Cast drops a crystal that fires a beam straight ahead for 5 sec."},
    {boon_name:"Icy Flare", description: "Your Cast damages foes around you and inflicts Chill."},
    {boon_name:"Mistral Dash", description: "Your Dash shoots a gust ahead that inflicts Chill."},
    {boon_name:"Demeter's Aid", description: "Your Call creates a winter vortex for 5 Sec., deals damage every 0.25 Sec inflicting Chill."},
    {boon_name:"Frozen Touch", description: "After you take damage, damage and completely Chill your foe."},
    {boon_name:"Rare Crop", description: "Your Boons become Common, then gain Rarity every 3 Encounter(s)."},
    {boon_name:"Ravenous Will", description: "While you have no Cast Ammo, take 10% less damage and deal more."},
    {boon_name:"Nourished Soul", description: "Any Health effects are more potent. Restore +30% now.	"},
    {boon_name:"Snow Burst", description: "Whenever you Cast, damage nearby foes and inflict Chill."},
    {boon_name:"Artic Blast", description: "Applying 10 stacks of Chill causes a blast, clearing the effect."},
    {boon_name:"Killing Freeze", description: "When all foes are Chill afflicted, they become Slow and Decay."},
    {boon_name:"Glacial Glare", description: "Your Cast fires longer and inflicts Chill."},
    {boon_name:"Winter Harvest", description: "Chill-affected foes shatter at 10% hp, inflicting Chill nearby. Shatter Area Damage: 50"}

 ])
 hermes.boons << Boon.create([
    {boon_name:"Swift Strike", description: "Your Attack is +X% faster."},
    {boon_name:"Swift Flourish", description: "Your Special is +X% faster."},
    {boon_name:"Flurry Cast", description: "Your Cast is +X% faster and fully automatic."},
    {boon_name:"Qucik Favor", description: "Your Call charges up automatically."},
    {boon_name:"Hyper Sprint", description: "For X seconds after you Dash, become Sturdy and run +100% faster."},
    {boon_name:"Greater Haste", description: "You move X% faster."},
    {boon_name:"Quick Recovery", description: "After you take damage, quickly Dash to recover up to X% Health lost."},
    {boon_name:"Greater Evasion", description: "You have +X% chance to Dodge."},
    {boon_name:"Greatest Reflex", description: "You can Dash +X more time(s) in a row.	"},
    {boon_name:"Second Wind", description: "After using Call, gain Dodge chance and move speed for 6 Sec."},
    {boon_name:"Quick Reload", description: "Foes drop Cast Ammo stuck in them faster."},
    {boon_name:"Side Hustle", description: "Each time you enter a Chamber, gain a bit wealth."},
    {boon_name:"Rush Delivery", description: "You deal bonus damage based on any bonus move speed."},
    {boon_name:"Auto Reload", description: "You regenerate Cast Ammo faster."},
    {boon_name:"Greater Recall", description: "Your Cast Ammo automatically return to you."}

 ])
 poseidon.boons << Boon.create([
    {boon_name:"Tempest Strike", description: "Your Attack deals more damage and knocks foes away."},
    {boon_name:"Tempest Flourish", description: "Your Special deals more damage and knocks foes away."},
    {boon_name:"Flood Shot", description: "Your Cast damages foes in an area and knocks them away."},
    {boon_name:"Flood Flare", description: "Your Cast damages foes around you and knocks them away."},
    {boon_name:"Tidal Dash", description: "Your Dash damages foes in an area and knocks them away."},
    {boon_name:"Poseidon's Aid", description: "Your Call makes you surge into foes while Impervious for 1.2 Sec."},
    {boon_name:"Typhoon's Fury", description: "You deal more damage when slamming foes into barriers."},
    {boon_name:"Hydrallic Might", description: "Your Attack and Special are stronger the first 10 Sec. in Encounter(s)."},
    {boon_name:"Ocean's Bounty", description: "Any Gemstone, Darkness or Obols chamber rewards are worth more."},
    {boon_name:"Sunken Treasure", description: "Gain an assortment of Gemstone, Darkness, Obols and Health."},
    {boon_name:"Razor Shoals", description: "Using knock-away effects also Rupture foes."},
    {boon_name:"Boiling Point", description: "Your God Gauge charges faster when you take damage."},
    {boon_name:"Breaking Wave", description: "Slamming foes into walls or corners creates a watery blast in the area."},
    {boon_name:"Wave Pounding", description: "Your boons with Knock-Away effects deal bonus damage to bosses."},
    {boon_name:"Rip Current", description: "Your Call pulls in foes and the effect lasts longer."}

 ])
 
 
 
puts "✅ Done seeding!"
