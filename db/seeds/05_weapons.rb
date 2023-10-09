pp 'Seeds files -- Weapons -- [INFO] -- Starting WeaponProperty seed'
pp 'Seeds files -- Weapons -- [INFO] -- Destroying all Weapons'
Weapon.destroy_all

pp 'Seeds files -- Weapons -- [INFO] -- Creating Weapons'

weapons = [
    {
      name: 'Club',
      cost:	'1 sp',
      damage_dice: '1d4',
      damage_type: DamageType.find_by_name('bludgeoning'),
      weight: 2,
      weapon_properties_weapons: [
        'Light',
      ],
      weapon_type: :simple_melee
    },
    {
      name: 'Dagger',
      cost:	'2 gp',
      damage_dice: '1d4',
      damage_type: DamageType.find_by_name('piercing'),
      weight: 1,
      weapon_properties_weapons: [
        'Finesse', 'light', 'thrown (20/60)'
      ],
      weapon_type: :simple_melee
      },
    {
    name: 'Greatclub',
    cost:	'2 sp',
    damage_dice: '1d8',
    damage_type: DamageType.find_by_name('bludgeoning'),
    weight: 1,
    weapon_properties_weapons: [
        'Two Handed'
    ],
    weapon_type: :simple_melee
    },
    {
    name: 'Handaxe',
    cost:	'5 gp',
    damage_dice: '1d6',
    damage_type: DamageType.find_by_name('slashing'),
    weight: 2,
    weapon_properties_weapons: [
      'Light', 'thrown (20/60)'
    ],
    weapon_type: :simple_melee
    },
    {
    name: 'Javelin',
    cost:	'5 sp',
    damage_dice: '1d6',
    damage_type: DamageType.find_by_name('piercing'),
    weight: 2,
    weapon_properties_weapons: [
      'Thrown (30/120)'
    ],
    weapon_type: :simple_melee
    },
    {
    name: 'Lighthammer',
    cost:	'2 gp',
    damage_dice: '1d4',
    damage_type: DamageType.find_by_name('bludgeoning'),
    weight: 2,
    weapon_properties_weapons: [
      'Light', 'Thrown (20/60)'
    ],
    weapon_type: :simple_melee
    },
    {
    name: 'Mace',
    cost:	'5 gp',
    damage_dice: '1d6',
    damage_type: DamageType.find_by_name('bludgeoning'),
    weight: 4,
    weapon_properties_weapons: [],
    weapon_type: :simple_melee
    },
    {
    name: 'Quarterstaff',
    cost:	'2 sp',
    damage_dice: '1d6',
    damage_type: DamageType.find_by_name('bludgeoning'),
    weight: 4,
    weapon_properties_weapons: [
      'Versatile (1d8)'
    ],
    weapon_type: :simple_melee
    },
    {
    name: 'Sickle',
    cost:	'1 gp',
    damage_dice: '1d4',
    damage_type: DamageType.find_by_name('slashing'),
    weight: 2,
    weapon_properties_weapons: [
      'Light'
    ],
    weapon_type: :simple_melee
    },
    {
    name: 'Spear',
    cost:	'1 gp',
    damage_dice: '1d6',
    damage_type: DamageType.find_by_name('piercing'),
    weight: 3,
    weapon_properties_weapons: [
      'Thrown (20/60)', 'Versatile (1d8)'
    ],
    weapon_type: :simple_melee
    },
    {
    weapon_type: :simple_ranged,
    name: 'Crossbow, light',
    cost: '25 gp',
    damage_dice: '1d8',
    damage_type: DamageType.find_by_name('piercing'),
    weight: 5,
    weapon_properties_weapons:
      ['Ammunition', 'range (80/320)', 'loading', 'Two Handed']
    },
    {
      weapon_type: :simple_ranged,
      name: 'Dart',
      cost: '5 cp',
      damage_dice: '1d4',
      damage_type: DamageType.find_by_name('piercing'),
      weight: 0.25,
      weapon_properties_weapons:
        ['Finesse', 'thrown (20/60)']
    },
    {
      weapon_type: :simple_ranged,
      name: 'Shortbow',
      cost: '25 gp',
      damage_dice: '1d6',
      damage_type: DamageType.find_by_name('piercing'),
      weight: 2,
      weapon_properties_weapons:
        ['Ammunition', 'range (80/320)', 'Two Handed']
    },
    {
      weapon_type: :simple_ranged,
      name: 'Sling',
      cost: '1 sp',
      damage_dice: '1d4',
      damage_type: DamageType.find_by_name('piercing'),
      weight: 0,
      weapon_properties_weapons:
        ['Ammunition', 'range (30/120)']
    },
    {
      name: 'Battleaxe',
      cost: '10 gp',
      damage_dice: '1d8',
      damage_type: DamageType.find_by_name('slashing'),
      weight: 4,
      weapon_type: :martial_melee,
      weapon_properties_weapons: ['Versatile (1d10)']
    },
    {
      name: 'Flail',
      cost: '10 gp',
      damage_dice: '1d8',
      damage_type: DamageType.find_by_name('bludgeoning'),
      weight: 2,
      weapon_type: :martial_melee,
      weapon_properties_weapons: []
    },
    {
      name: 'Glaive',
      cost: '20 gp',
      damage_dice: '1d10',
      damage_type: DamageType.find_by_name('slashing'),
      weight: 6,
      weapon_type: :martial_melee,
      weapon_properties_weapons: ['Heavy', 'reach', 'two-handed']
    },
    {
      name: 'Greataxe',
      cost: '30 gp',
      damage_dice: '1d12',
      damage_type: DamageType.find_by_name('slashing'),
      weight: 7,
      weapon_type: :martial_melee,
      weapon_properties_weapons: ['Heavy', 'two-handed']
    },
    {
      name: 'Greatsword',
      cost: '50 gp',
      damage_dice: '2d6',
      damage_type: DamageType.find_by_name('slashing'),
      weight: 6,
      weapon_type: :martial_melee,
      weapon_properties_weapons: ['Heavy', 'two-handed']
    },
    {
      name: 'Halberd',
      cost: '20 gp',
      damage_dice: '1d10',
      damage_type: DamageType.find_by_name('slashing'),
      weight: 6,
      weapon_type: :martial_melee,
      weapon_properties_weapons: ['Heavy', 'reach', 'two-handed']
    },
    {
      name: 'Lance',
      cost: '10 gp',
      description: 'You have disadvantage when you use a lance to attack a target within 5 feet of you. Also, a lance requires two hands to wield when you aren’t mounted.',
      damage_dice: '1d12',
      damage_type: DamageType.find_by_name('piercing'),
      weight: 6,
      weapon_type: :martial_melee,
      weapon_properties_weapons: ['Reach']
    },
    {
      name: 'Longsword',
      cost: '15 gp',
      damage_dice: '1d8',
      damage_type: DamageType.find_by_name('slashing'),
      weight: 3,
      weapon_type: :martial_melee,
      weapon_properties_weapons: ['Versatile (1d10)']
    },
    {
      name: 'Maul',
      cost: '10 gp',
      damage_dice: '2d6',
      damage_type: DamageType.find_by_name('bludgeoning'),
      weight: 10,
      weapon_type: :martial_melee,
      weapon_properties_weapons: ['Heavy', 'two-handed']
    },
    {
      name: 'Morningstar',
      cost: '15 gp',
      damage_dice: '1d8',
      damage_type: DamageType.find_by_name('piercing'),
      weight: 4,
      weapon_type: :martial_melee,
      weapon_properties_weapons: []
    },
    {
      name: 'Pike',
      cost: '5 gp',
      damage_dice: '1d10',
      damage_type: DamageType.find_by_name('piercing'),
      weight: 18,
      weapon_type: :martial_melee,
      weapon_properties_weapons: ['Heavy', 'reach', 'two-handed']
    },
    {
      name: 'Rapier',
      cost: '25 gp',
      damage_dice: '1d8',
      damage_type: DamageType.find_by_name('piercing'),
      weight: 2,
      weapon_type: :martial_melee,
      weapon_properties_weapons: ['Finesse']
    },
    {
      name: 'Scimitar',
      cost: '25 gp',
      damage_dice: '1d6',
      damage_type: DamageType.find_by_name('slashing'),
      weight: 3,
      weapon_type: :martial_melee,
      weapon_properties_weapons: ['Finesse', 'light']
    },
    {
      name: 'Shortsword',
      cost: '10 gp',
      damage_dice: '1d6',
      damage_type: DamageType.find_by_name('piercing'),
      weight: 2,
      weapon_type: :martial_melee,
      weapon_properties_weapons: ['Finesse', 'light']
    },
    {
      name: 'Trident',
      cost: '5 gp',
      damage_dice: '1d6',
      damage_type: DamageType.find_by_name('piercing'),
      weight: 4,
      weapon_type: :martial_melee,
      weapon_properties_weapons: ['Thrown (20/60)', 'versatile (1d8)']
    },
    {
      name: 'Warpick',
      cost: '5 gp',
      damage_dice: '1d8',
      damage_type: DamageType.find_by_name('piercing'),
      weight: 2,
      weapon_type: :martial_melee,
      weapon_properties_weapons: []
    },
    {
      name: 'Warhammer',
      cost: '15 gp',
      damage_dice: '1d8',
      damage_type: DamageType.find_by_name('bludgeoning'),
      weight: 2,
      weapon_type: :martial_melee,
      weapon_properties_weapons: ['Versatile (1d10)']
    },
    {
      name: 'Whip',
      cost: '2 gp',
      damage_dice: '1d4',
      damage_type: DamageType.find_by_name('slashing'),
      weight: 3,
      weapon_type: :martial_melee,
      weapon_properties_weapons: ['Finesse', 'reach']
    },
    {
      name: 'Blowgun',
      cost: '10 gp',
      damage_dice: '1',
      damage_type: DamageType.find_by_name('piercing'),
      weight: 1,
      weapon_properties_weapons: ['Ammunition', 'range (25/100)', 'loading'],
      weapon_type: :martial_ranged,
    },
    {
      name: 'Crossbow, hand',
      cost: '75 gp',
      damage_dice: '1d6',
      damage_type: DamageType.find_by_name('piercing'),
      weight: 3,
      weapon_properties_weapons: ['Ammunition', 'range (30/120)', 'light', 'loading'],
      weapon_type: :martial_ranged,
    },
    {
      name: 'Crossbow, heavy',
      cost: '50 gp',
      damage_dice: '1d10',
      damage_type: DamageType.find_by_name('piercing'),
      weight: 18,
      weapon_properties_weapons: ['Ammunition', 'range (100/400)', 'heavy', 'loading', 'two-handed'],
      weapon_type: :martial_ranged,
    },
    {
      name: 'Longbow',
      cost: '50 gp',
      damage_dice: '1d8',
      damage_type: DamageType.find_by_name('piercing'),
      weight: 2,
      weapon_properties_weapons: ['Ammunition', 'range (150/600)', 'heavy', 'two-Handed'],
      weapon_type: :martial_ranged,
    },
    {
      name: 'Net',
      cost: '1 gp',
      description: 'A Large or smaller creature hit by a net is restrained until it is freed. A net has no effect on creatures that are formless, or creatures that are Huge or larger. A creature can use its action to make a DC 10 Strength check, freeing itself or another creature within its reach on a success. Dealing 5 slashing damage to the net (AC 10) also frees the creature without harming it, ending the effect and destroying the net. When you use an action, bonus action, or reaction to attack with a net, you can make only one attack regardless of the number of attacks you can normally make.',
      weight: 3,
      weapon_properties_weapons: ['thrown (5/15)'],
      weapon_type: :martial_ranged,
    },
    {
      name: 'Arrows (20)',
      cost: '1 gp',
      weight: 1,
      weapon_type: :ammunition,
    },
    {
      name: 'Blowgun needles (50)',
      cost: '1 gp',
      weight: 1,
      weapon_type: :ammunition,
    },
    {
      name: 'Crossbow bolts (20)',
      cost: '1 gp',
      weight: 1.5,
      weapon_type: :ammunition,
    },
    {
      name: 'Sling bullets (20)',
      cost: '4 cp',
      weight: 1.5,
      weapon_type: :ammunition,
    },
]
ActiveRecord::Base.transaction do
  weapons.each do |weapon|
    w = Weapon.create!(weapon.except(:weapon_properties_weapons))
    weapon[:weapon_properties_weapons]&.each do |weapon_property_weapon|
      weapon_property_name = weapon_property_weapon.split('(').first.strip.titleize
      weapon_property = WeaponProperty.find_by_name(weapon_property_name)
      short_range = weapon_property_weapon.match(/\((\d+)\/\d+\)/)&.to_a&.last&.to_i
      long_range = weapon_property_weapon.match(/\(\d+\/(\d+)\)/)&.to_a&.last&.to_i
      alternative_damage_dice = weapon_property_weapon.match(/\((\d+d\d+)\)/)&.to_a&.last
      w.weapon_property_weapon.create!(
        weapon_property:,
        short_range:,
        long_range:,
        alternative_damage_dice:
      )
    end
  end
end

pp 'Seeds files -- Weapons -- [INFO] -- Finished Weapon seed'