final storyData = {
  "start": {
    "text":
        "You wake up in a dimly lit alleyway in downtown Los Angeles, your head pounding, the taste of blood in your mouth. The last thing you remember is a masked figure stalking you from the shadows as you left the movie set late at night. Your phone is gone, your wallet is missing, and the sound of distant sirens echoes through the night. As you struggle to your feet, you notice something: a strange key clenched tightly in your hand. It glows faintly. What will you do?",
    "choices": [
      {"text": "Investigate the key", "nextNode": "investigateKey"},
      {"text": "Run to find help", "nextNode": "runForHelp"},
      {"text": "Hide and wait", "nextNode": "hideAndWait"}
    ]
  },
  "investigateKey": {
    "text":
        "You hold up the key to the faint streetlight and notice that it has strange engravings, symbols you can’t recognize. Suddenly, a figure appears at the mouth of the alley. It’s the masked person from earlier, their eyes glowing faintly. 'Give me the key,' the figure says in a distorted voice. Your instincts scream danger, but something tells you the key holds immense power. What will you do?",
    "choices": [
      {"text": "Fight the masked figure", "nextNode": "fightMaskedFigure"},
      {"text": "Give them the key", "nextNode": "giveKey"},
      {"text": "Run away", "nextNode": "runAwayMaskedFigure"}
    ]
  },
  "runForHelp": {
    "text":
        "You take off running down the alley, your breath coming in ragged gasps. You turn the corner and nearly slam into a parked car. Across the street, you see a diner, the warm glow from its neon lights giving you a flicker of hope. You make a dash for it, but before you reach the door, the masked figure steps out from the shadows, blocking your path. 'Give me the key,' the figure says in that same distorted voice. What will you do?",
    "choices": [
      {"text": "Fight", "nextNode": "fightMaskedFigure"},
      {"text": "Try to escape", "nextNode": "tryEscape"}
    ]
  },
  "hideAndWait": {
    "text":
        "You duck behind a dumpster, your heart pounding in your chest. From your hiding spot, you can see the faint silhouette of the masked figure at the end of the alley, standing unnaturally still. After a moment, it disappears into the shadows. You exhale in relief, but then the key in your hand begins to vibrate, glowing brighter. You hear footsteps approaching again. What will you do?",
    "choices": [
      {"text": "Stay hidden", "nextNode": "stayHidden"},
      {"text": "Run", "nextNode": "runFromHiding"}
    ]
  },
  "fightMaskedFigure": {
    "text":
        "You brace yourself and charge at the masked figure. They’re fast, faster than you expected, and they dodge your first punch with ease. But you don’t give up. The fight becomes a whirlwind of blows, kicks, and dodges. The figure moves with unnatural speed, but you land a solid hit that knocks their mask askew, revealing a face that’s... not human. Pale, featureless, and with glowing eyes, the figure snarls. 'You’ve made a mistake,' they hiss. Will you continue fighting or attempt something else?",
    "choices": [
      {"text": "Continue fighting", "nextNode": "continueFight"},
      {"text": "Try to use the key", "nextNode": "useKey"}
    ]
  },
  "giveKey": {
    "text":
        "You reluctantly hand over the key. The figure takes it, their eyes glowing brighter for a moment. Then, they disappear in a wisp of shadow. The alley is suddenly quiet, and you’re left standing alone, feeling an overwhelming sense of loss. But as you turn to leave, a strange feeling creeps over you. Your surroundings start to blur, the world bending and twisting around you. Reality itself begins to unravel. The key, you realize, was the only thing keeping this world intact. Everything begins to fade into darkness...",
    "choices": [
      {"text": "Surrender to the void", "nextNode": "endVoid"},
      {"text": "Try to fight the unraveling", "nextNode": "fightUnraveling"}
    ]
  },
  "runAwayMaskedFigure": {
    "text":
        "You turn and sprint as fast as you can. The masked figure doesn’t follow at first, but you can feel their presence behind you, closing in. You dart into a nearby building, an abandoned warehouse filled with broken windows and rusting machinery. You can hide, or you can try to escape through the back. The masked figure’s footsteps echo through the building. What will you do?",
    "choices": [
      {"text": "Hide in the warehouse", "nextNode": "hideWarehouse"},
      {"text": "Escape through the back", "nextNode": "escapeWarehouse"}
    ]
  },
  "stayHidden": {
    "text":
        "You stay perfectly still, holding your breath as the footsteps come closer. The figure’s shadow passes by the dumpster, pausing for a moment. Then it moves on, fading into the distance. After several tense minutes, you finally exhale. The key is still glowing faintly in your hand, but now it feels warm, almost comforting. But you know this is far from over. What will you do?",
    "choices": [
      {"text": "Investigate the key further", "nextNode": "investigateFurther"},
      {"text": "Leave the alley", "nextNode": "leaveAlley"}
    ]
  },
  "runFromHiding": {
    "text":
        "You burst from your hiding spot and run, but the masked figure is fast—too fast. They appear in front of you in a blink, blocking your path. 'You can’t escape this,' they say, reaching for the key. What will you do?",
    "choices": [
      {"text": "Fight", "nextNode": "fightMaskedFigure"},
      {"text": "Give them the key", "nextNode": "giveKey"}
    ]
  },
  "tryEscape": {
    "text":
        "You attempt to run, darting down another alley, but the figure is relentless. They’re on your heels within moments. You can’t outrun them forever. But suddenly, the key in your hand flares with light, and a door appears on the side of the alley, glowing with the same strange energy as the key. Do you take a chance and enter?",
    "choices": [
      {"text": "Enter the glowing door", "nextNode": "enterGlowingDoor"},
      {"text": "Keep running", "nextNode": "keepRunning"}
    ]
  },
  "continueFight": {
    "text":
        "You press the attack, determined to win. But the figure is too strong, too fast. They disarm you, throwing you to the ground. As they stand over you, you realize you can’t win this fight by brute force alone. The key... it’s your only hope. What will you do?",
    "choices": [
      {"text": "Use the key", "nextNode": "useKey"},
      {"text": "Surrender", "nextNode": "surrender"}
    ]
  },
  "useKey": {
    "text":
        "You hold the key up, and it flares with a blinding light. The masked figure recoils, hissing in pain. The air around you warps, and suddenly you’re no longer in the alley. You find yourself in a vast, ancient chamber, the walls covered in more of the strange symbols from the key. The masked figure is gone, but the danger isn’t over. In the center of the chamber stands a massive stone door, locked with a similar keyhole to the one in your hand. What will you do?",
    "choices": [
      {"text": "Unlock the door", "nextNode": "unlockDoor"},
      {"text": "Look for another way out", "nextNode": "lookForExit"}
    ]
  },
  "surrender": {
    "text":
        "You drop your hands, accepting defeat. The figure takes the key, and everything around you begins to fade. The world crumbles into darkness, and you feel yourself falling into an endless void. There is no escape now. This is the end.",
    "choices": [
      {"text": "Restart", "nextNode": "start"}
    ]
  },
  "enterGlowingDoor": {
    "text":
        "You step through the glowing door and find yourself in a strange new world—an ancient city bathed in eternal twilight. The key pulses in your hand, reacting to the energy of this place. As you walk through the city streets, you realize this is where the key belongs. But there are others here, shadowy figures watching you from the rooftops. What will you do?",
    "choices": [
      {"text": "Explore the city", "nextNode": "exploreCity"},
      {"text": "Find a place to hide", "nextNode": "hideCity"}
    ]
  },
  "keepRunning": {
    "text":
        "You keep running, but the alley seems to stretch on forever. The masked figure is closing in, and there’s no way out. You realize you’ve made a fatal mistake. The figure grabs you, and everything goes black.",
    "choices": [
      {"text": "Restart", "nextNode": "start"}
    ]
  },
  "unlockDoor": {
    "text":
        "You insert the key into the stone door, and it slowly creaks open. Beyond the door is a blinding light, and you step through into a world beyond imagination—a world where you hold the power to shape reality itself. You’ve unlocked something ancient and powerful, and now, the choice is yours: What will you do with this newfound power?",
    "choices": [
      {"text": "Use the power for good", "nextNode": "goodEnding"},
      {"text": "Use the power for yourself", "nextNode": "selfishEnding"}
    ]
  },
  "lookForExit": {
    "text":
        "You decide not to unlock the door. Instead, you search the chamber for another way out. As you explore, you find a hidden passage behind a large stone pillar. You squeeze through the narrow opening and emerge into a strange underground labyrinth. The walls are lined with glowing runes, and a faint hum fills the air. This place feels alive. What will you do?",
    "choices": [
      {"text": "Explore the labyrinth", "nextNode": "exploreLabyrinth"},
      {"text": "Try to go back", "nextNode": "goBackToDoor"}
    ]
  },
  "exploreLabyrinth": {
    "text":
        "You venture deeper into the labyrinth, the key pulsing faintly in your hand. The air grows thicker, and the runes on the walls begin to change, showing strange images of battles, long-forgotten gods, and distant worlds. Suddenly, you hear a deep, rumbling sound ahead. Something is moving in the labyrinth. Do you investigate the noise or try to find another way?",
    "choices": [
      {"text": "Investigate the noise", "nextNode": "investigateNoise"},
      {"text": "Find another way", "nextNode": "findAnotherWayLabyrinth"}
    ]
  },
  "goBackToDoor": {
    "text":
        "You decide to return to the door and use the key. However, when you get back to the chamber, the door is now fully open, and the blinding light beckons you forward. You step through, realizing there's no turning back now. You find yourself in a strange dimension, where the boundaries of reality and time blur. The key pulses stronger than ever. What will you do?",
    "choices": [
      {"text": "Explore this new dimension", "nextNode": "exploreDimension"},
      {"text": "Search for a way back", "nextNode": "searchForWayBack"}
    ]
  },
  "investigateNoise": {
    "text":
        "You cautiously approach the source of the noise. As you round a corner, you come face to face with a massive creature made of stone and energy. Its glowing eyes lock onto you, and it lets out a deafening roar. It seems to be guarding something—a large, ornate chest with the same symbols as the key. Do you attempt to confront the creature or try to sneak past it?",
    "choices": [
      {"text": "Confront the creature", "nextNode": "confrontCreature"},
      {"text": "Sneak past the creature", "nextNode": "sneakPastCreature"}
    ]
  },
  "findAnotherWayLabyrinth": {
    "text":
        "You decide to avoid the noise and find another path. As you navigate the twisting corridors of the labyrinth, you come across an ancient portal embedded in the wall. The key in your hand glows brighter, resonating with the portal's energy. This could be a way out, but there’s no telling where it will lead. What will you do?",
    "choices": [
      {"text": "Enter the portal", "nextNode": "enterPortalLabyrinth"},
      {
        "text": "Keep exploring the labyrinth",
        "nextNode": "keepExploringLabyrinth"
      }
    ]
  },
  "confrontCreature": {
    "text":
        "You stand your ground, gripping the key tightly. The creature charges, its stone fists raised to strike. Just before it reaches you, the key glows blindingly bright, and the creature freezes in its tracks. It seems the key holds power over the ancient guardian. You command it to step aside, and it obeys, revealing the ornate chest behind it. Do you open the chest?",
    "choices": [
      {"text": "Open the chest", "nextNode": "openChest"},
      {"text": "Leave it and continue", "nextNode": "leaveChest"}
    ]
  },
  "sneakPastCreature": {
    "text":
        "You carefully move through the shadows, trying to avoid the creature's gaze. As it patrols the area, you slip past and reach the ornate chest it was guarding. The key in your hand vibrates with intensity, almost as if it’s urging you to open the chest. What will you do?",
    "choices": [
      {"text": "Open the chest", "nextNode": "openChest"},
      {"text": "Leave it and continue", "nextNode": "leaveChest"}
    ]
  },
  "openChest": {
    "text":
        "You open the chest, and inside, you find a second key—this one larger and glowing with an otherworldly light. The moment you touch it, you feel a surge of energy, and the labyrinth around you begins to shift. You realize this key unlocks something far greater. The walls around you crumble, revealing a massive portal ahead. This is your way out, but where it leads is unknown. What will you do?",
    "choices": [
      {"text": "Enter the portal", "nextNode": "enterFinalPortal"},
      {"text": "Stay and explore", "nextNode": "exploreLabyrinth"}
    ]
  },
  "leaveChest": {
    "text":
        "You decide to leave the chest unopened and continue deeper into the labyrinth. However, the further you go, the more the key in your hand grows dimmer, as if you’re moving away from its intended path. You begin to feel lost, and the labyrinth’s walls close in tighter. Suddenly, you hear the creature's roar behind you. What will you do?",
    "choices": [
      {"text": "Run", "nextNode": "runFromCreature"},
      {"text": "Hide", "nextNode": "hideFromCreature"}
    ]
  },
  "enterPortalLabyrinth": {
    "text":
        "You step through the ancient portal, and in an instant, the labyrinth fades away. You find yourself in an endless field of stars, floating in the cosmos. The key hums in your hand, but the familiar labyrinth is gone. In the distance, you see a massive cosmic gate. What will you do?",
    "choices": [
      {"text": "Approach the cosmic gate", "nextNode": "cosmicGate"},
      {"text": "Explore the star field", "nextNode": "exploreStarField"}
    ]
  },
  "keepExploringLabyrinth": {
    "text":
        "You continue exploring the labyrinth, feeling the pressure of its ancient magic. As you go deeper, you come across a mysterious, glowing fountain in the center of a large chamber. The key in your hand pulses, as if the fountain holds some significance. What will you do?",
    "choices": [
      {"text": "Drink from the fountain", "nextNode": "drinkFountain"},
      {"text": "Ignore it and move on", "nextNode": "ignoreFountain"}
    ]
  },
  "runFromCreature": {
    "text":
        "You turn and run, the creature’s heavy footsteps thundering behind you. As you sprint through the labyrinth, the walls begin to shift and close in. Just as the creature is about to catch you, the key in your hand glows and opens a door in the wall ahead. You dive through it, narrowly escaping. You find yourself in a quiet chamber, the creature left behind. What will you do next?",
    "choices": [
      {"text": "Rest in the chamber", "nextNode": "restInChamber"},
      {"text": "Continue exploring", "nextNode": "exploreLabyrinth"}
    ]
  },
  "hideFromCreature": {
    "text":
        "You quickly duck behind a pillar, holding your breath as the creature stomps past. Its heavy footsteps fade, and you remain hidden until the danger seems to pass. The key’s glow is faint, but you’re still alive. What will you do?",
    "choices": [
      {
        "text": "Continue exploring the labyrinth",
        "nextNode": "exploreLabyrinth"
      },
      {"text": "Return to the stone door", "nextNode": "goBackToDoor"}
    ]
  },
  "exploreDimension": {
    "text":
        "You wander through the strange dimension, where time and space seem fluid, bending to your will. The key glows steadily, guiding you toward a massive, ethereal tower in the distance. As you approach, the ground beneath your feet shifts, revealing pathways that lead upward. The tower seems to be calling to you. Do you ascend the tower or search for another way out of this reality?",
    "choices": [
      {"text": "Ascend the tower", "nextNode": "ascendTower"},
      {"text": "Search for a way out", "nextNode": "searchForExitDimension"}
    ]
  },
  "searchForWayBack": {
    "text":
        "Determined to return to your world, you search the strange, ever-shifting dimension for a way back. The landscape twists and changes around you, but the key in your hand flickers with light, giving you hope. Eventually, you find a rift in the fabric of reality, pulsing with the same energy as the key. This could be your way back. What will you do?",
    "choices": [
      {"text": "Enter the rift", "nextNode": "enterRift"},
      {"text": "Search for another way", "nextNode": "continueSearchingExit"}
    ]
  },
  "ascendTower": {
    "text":
        "You begin your ascent up the tower, each step feeling heavier than the last as the reality around you warps and shifts. Strange visions flicker in the corners of your eyes—glimpses of possible futures, alternate lives. At the top of the tower, you find a throne made of light, and in the center, an empty slot that matches the shape of the key in your hand. Do you place the key in the slot?",
    "choices": [
      {"text": "Place the key in the slot", "nextNode": "placeKeyInSlot"},
      {"text": "Turn away from the throne", "nextNode": "turnAwayFromThrone"}
    ]
  },
  "searchForExitDimension": {
    "text":
        "You decide not to ascend the tower and instead search the dimension for another way out. As you wander, you come across an ancient gate, similar to the one you saw before. It pulses with a familiar energy, and you realize that this gate might lead you to freedom. The key in your hand glows brighter, resonating with the gate. What will you do?",
    "choices": [
      {"text": "Enter the gate", "nextNode": "enterGate"},
      {
        "text": "Keep exploring the dimension",
        "nextNode": "exploreMoreDimension"
      }
    ]
  },
  "enterRift": {
    "text":
        "You step through the rift, and in an instant, you’re pulled back to the familiar streets of your city. The world seems unchanged, but the key in your hand still hums with energy. You’ve returned, but you sense that the dangers are far from over. What will you do next?",
    "choices": [
      {
        "text": "Keep the key and prepare for what's next",
        "nextNode": "prepareForNext"
      },
      {"text": "Try to destroy the key", "nextNode": "destroyKey"}
    ]
  },
  "continueSearchingExit": {
    "text":
        "You continue searching for another way out, but the dimension becomes more chaotic, more dangerous with each step. Eventually, the key’s light begins to flicker, and you realize you may be trapped here forever. But just as all hope seems lost, you stumble upon a second rift. It glows faintly, offering you a slim chance of escape. What will you do?",
    "choices": [
      {"text": "Enter the second rift", "nextNode": "enterSecondRift"},
      {"text": "Turn back and return to the tower", "nextNode": "returnToTower"}
    ]
  },
  "placeKeyInSlot": {
    "text":
        "You place the key into the slot on the throne, and the entire tower begins to hum with energy. The walls shimmer, and you feel a surge of power coursing through you. The throne is a gateway to unimaginable power, and you now control it. You can reshape reality itself. But with this power comes a choice: will you use it for good or for your own desires?",
    "choices": [
      {"text": "Use the power for good", "nextNode": "goodEnding"},
      {"text": "Use the power for yourself", "nextNode": "selfishEnding"}
    ]
  },
  "turnAwayFromThrone": {
    "text":
        "You turn away from the throne, deciding not to take the power it offers. As you descend the tower, the key glows softly in your hand, and the reality around you begins to stabilize. You leave the dimension behind, returning to the familiar world, but you know that you’ve made the right choice. The key’s power remains dormant... for now.",
    "choices": [
      {"text": "Restart", "nextNode": "start"}
    ]
  },
  "exploreMoreDimension": {
    "text":
        "You continue exploring the strange dimension, but the more you wander, the more you realize that this place is boundless. There are no exits, no way out. The key in your hand grows dimmer, and you begin to feel the weight of eternity settling in. You may be trapped here forever.",
    "choices": [
      {"text": "Restart", "nextNode": "start"}
    ]
  },
  "enterGate": {
    "text":
        "You step through the ancient gate, and the dimension shifts around you. You find yourself standing in a peaceful garden, far from the chaos of the other worlds. The key in your hand pulses with a gentle light, and you realize that you’ve found sanctuary. This is a place where you can rest, far from the dangers you’ve faced. The journey is over—for now.",
    "choices": [
      {"text": "Restart", "nextNode": "start"}
    ]
  },
  "prepareForNext": {
    "text":
        "You decide to keep the key, knowing that its power could be needed again. As the days pass, you begin to notice strange occurrences—whispers in the wind, shadows moving in the corner of your vision. The masked figure may be gone, but the forces at play are far from defeated. A new journey awaits you.",
    "choices": [
      {"text": "Restart", "nextNode": "start"}
    ]
  },
  "destroyKey": {
    "text":
        "You decide that the key’s power is too dangerous to keep. You search for a way to destroy it, but as you do, you feel the world around you begin to fracture. The key’s energy is tied to reality itself, and by destroying it, you risk unraveling everything. In the end, you realize that the key cannot be destroyed—not without grave consequences. You’re left with no choice but to keep it safe, for now.",
    "choices": [
      {"text": "Restart", "nextNode": "start"}
    ]
  },
  "enterSecondRift": {
    "text":
        "You step through the second rift and find yourself back in the labyrinth, but something is different. The walls pulse with energy, and the path ahead of you is clear. The key in your hand glows brighter than ever, guiding you forward. You sense that your journey isn’t over, but you’ve been given a second chance to face the trials ahead.",
    "choices": [
      {
        "text": "Continue exploring the labyrinth",
        "nextNode": "exploreLabyrinth"
      },
      {"text": "Search for another way out", "nextNode": "lookForExit"}
    ]
  },
  "returnToTower": {
    "text":
        "You turn back and return to the tower. As you climb it once again, you feel the weight of your choices pressing down on you. At the top, the throne awaits, and the key pulses in your hand. You know that this is your final chance to decide. Will you take the power or leave it behind?",
    "choices": [
      {"text": "Take the power", "nextNode": "placeKeyInSlot"},
      {"text": "Leave the tower", "nextNode": "turnAwayFromThrone"}
    ]
  },
  "drinkFountain": {
    "text":
        "You drink from the glowing fountain, and immediately, you feel a surge of energy course through your body. The key in your hand flares with light, and suddenly, the labyrinth shifts and changes. You find yourself in a new part of the labyrinth, where the air is thick with magic. This fountain has given you strength, but also changed the rules of the labyrinth. What will you do?",
    "choices": [
      {"text": "Explore the new area", "nextNode": "exploreNewLabyrinth"},
      {"text": "Find a way out", "nextNode": "lookForExit"}
    ]
  },
  "ignoreFountain": {
    "text":
        "You decide to ignore the fountain and press on. The labyrinth becomes darker, more oppressive the further you go, and the key's glow begins to fade. Soon, you find yourself lost, unable to find a way forward or back. The weight of the labyrinth closes in on you, and you realize that you've made a grave mistake by ignoring the fountain s power. The walls of the labyrinth seem to shift and trap you, and the key no longer responds. You are now lost in the labyrinth forever, with no way out.",
    "choices": [
      {"text": "Restart", "nextNode": "start"}
    ]
  },
  "exploreNewLabyrinth": {
    "text":
        "With renewed energy, you explore the new area of the labyrinth. The walls here glow faintly with magic, and the key’s light leads you to a massive, ornate door unlike any you’ve seen before. It radiates power, and you feel a connection between it and the key. Will you use the key to unlock the door, or search for more answers in the labyrinth?",
    "choices": [
      {"text": "Unlock the door", "nextNode": "unlockFinalDoor"},
      {"text": "Search for more answers", "nextNode": "searchMoreLabyrinth"}
    ]
  },
  "unlockFinalDoor": {
    "text":
        "You place the key into the door’s lock, and with a soft click, it opens. Behind the door lies a breathtaking realm—one of boundless possibility and infinite power. You feel the pull of destiny as you step into this new world. This is the place the key has been leading you to all along. You have unlocked your true potential, and the fate of all worlds now rests in your hands. The journey is over, but your story is just beginning.",
    "choices": [
      {"text": "Restart", "nextNode": "start"}
    ]
  },
  "searchMoreLabyrinth": {
    "text":
        "You decide to keep searching the labyrinth, seeking more clues about its origins and the key’s purpose. As you delve deeper, the labyrinth grows more twisted, more complex, and the secrets you uncover hint at forces far greater than you can comprehend. But the further you go, the more dangerous it becomes. In the end, you realize that the labyrinth has no end—it is a trap designed to keep those who seek too much knowledge. You have become part of the labyrinth’s eternal loop.",
    "choices": [
      {"text": "Restart", "nextNode": "start"}
    ]
  },
  "cosmicGate": {
    "text":
        "You approach the massive cosmic gate, its swirling energy both beautiful and terrifying. The key in your hand pulses with a rhythm that matches the gate’s energy. As you step closer, the gate begins to open, revealing a realm where time and space no longer hold meaning. You are offered a choice: step through the gate and embrace a new reality, or turn back and return to the life you once knew.",
    "choices": [
      {"text": "Step through the gate", "nextNode": "stepThroughGate"},
      {"text": "Turn back", "nextNode": "turnBackFromGate"}
    ]
  },
  "stepThroughGate": {
    "text":
        "You step through the cosmic gate, leaving behind all that you once knew. The key’s power fuses with your own, and you become one with the fabric of the universe. You are now a part of something far greater than yourself, an eternal force guiding the cosmos. This is your final transformation, and you will never return to your previous life. The end.",
    "choices": [
      {"text": "Restart", "nextNode": "start"}
    ]
  },
  "turnBackFromGate": {
    "text":
        "At the last moment, you decide to turn back. You walk away from the cosmic gate and the unimaginable power it offers, choosing instead to return to the familiar. As you step away, the key dims in your hand, and the gate closes behind you. You may not have chosen the path of ultimate power, but you have reclaimed your life—and the key remains a part of you, a reminder of the journey you’ve taken. The end.",
    "choices": [
      {"text": "Restart", "nextNode": "start"}
    ]
  },
  "exploreStarField": {
    "text":
        "You float through the star field, surrounded by the wonders of the universe. The key in your hand hums softly, a connection to all that is and all that will be. As you drift, you feel the presence of other beings—entities that have transcended time and space. They offer you a place among them, to join them in eternal exploration of the cosmos. What will you do?",
    "choices": [
      {"text": "Join the cosmic entities", "nextNode": "joinEntities"},
      {"text": "Return to your world", "nextNode": "returnToWorld"}
    ]
  },
  "joinEntities": {
    "text":
        "You choose to join the cosmic entities, and as you do, your consciousness expands beyond anything you could have imagined. You become part of the infinite, exploring the universe alongside beings of pure energy. The key in your hand dissolves, no longer needed, as you are now one with the stars. This is your final destiny.",
    "choices": [
      {"text": "Restart", "nextNode": "start"}
    ]
  },
  "returnToWorld": {
    "text":
        "You decide to return to your world, leaving behind the mysteries of the cosmos. As you make your way back through the star field, the key guides you to a portal. You step through it and find yourself back on the familiar streets of your city. The key in your hand still hums with power, and though you’ve returned, you know that your journey has left you forever changed.",
    "choices": [
      {"text": "Restart", "nextNode": "start"}
    ]
  },
  "restInChamber": {
    "text":
        "You decide to rest in the quiet chamber, gathering your strength. As you sit, the key glows softly, and for the first time, you feel a sense of calm. The danger has passed, and you are safe—for now. When you are ready, you rise and continue your journey, knowing that the key’s power is still with you.",
    "choices": [
      {"text": "Restart", "nextNode": "start"}
    ]
  }
};
