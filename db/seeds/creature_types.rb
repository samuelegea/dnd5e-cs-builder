pp 'Seeds files -- CreatureTypes -- [INFO] -- Starting CreatureType seed'
pp 'Seeds files -- CreatureTypes -- [INFO] -- Destroying all CreatureTypes'
CreatureType.destroy_all

pp 'Seeds files -- CreatureTypes -- [INFO] -- Creating CreatureTypes'
CreatureType.insert_all!(
  [
    {
      name: 'Aberration',
      description: 'Aberrations are alien entities, often with powers drawn from their minds.'
    },
    {
      name: 'Beast',
      description: 'Beasts are nonhumanoid creatures that are part of the natural world. Some beasts have magical powers, but are generally low in intelligence.'
    },
    {
      name: 'Celestial',
      description: 'Celestials are creatures native to the Upper Planes, and good by nature.'
    },
    {
      name: 'Construct',
      description: 'Constructs are creatures that are created artificially.'
    },
    {
      name: 'Dragon',
      description: 'Dragons are large, powerful reptilian creatures.'
    },
    {
      name: 'Elemental',
      description: 'Elementals are creatures from the Elemental Planes.'
    },
    {
      name: 'Fey',
      description: 'Fey are creatures of magic with a connection to nature.'
    },
    {
      name: 'Fiend',
      description: 'Fiends are creatures native to the Lower Planes, and evil by nature.'
    },
    {
      name: 'Giant',
      description: 'Giants are human-like but larger than humans.'
    },
    {
      name: 'Humanoid',
      description: 'Humanoids are the main people of most worlds, bipeds with culture but few natural magical abilities.'
    },
    {
      name: 'Monstrosity',
      description: 'Monstrosities are unnatural creatures from a variety of origins, including curses and magical experimentation.'
    },
    {
      name: 'Ooze',
      description: 'Oozes are gelatinous creatures with no fixed form.'
    },
    {
      name: 'Plant',
      description: 'Plants include both vegetable and fungal creatures.'
    },
    {
      name: 'Undead',
      description: 'Undead creatures were once alive, but reanimated by unnatural forces.'
    }
  ]
)

pp 'Seeds files -- CreatureTypes -- [INFO] -- Finished ArmorShield seed'