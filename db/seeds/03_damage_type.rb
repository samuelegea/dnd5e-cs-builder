pp 'Seeds files -- DamageTypes -- [INFO] -- Starting DamageType seed'
pp 'Seeds files -- DamageTypes -- [INFO] -- Destroying all DamageTypes'
DamageType.destroy_all

pp 'Seeds files -- DamageTypes -- [INFO] -- Creating DamageTypes'
DamageType.insert_all!(
  [
    { name: 'acid', description: '' },
    { name: 'bludgeoning', description: '' },
    { name: 'cold', description: '' },
    { name: 'fire', description: '' },
    { name: 'force', description: '' },
    { name: 'lightning', description: '' },
    { name: 'necrotic', description: '' },
    { name: 'piercing', description: '' },
    { name: 'poison', description: '' },
    { name: 'psychic', description: '' },
    { name: 'radiant', description: '' },
    { name: 'slashing', description: '' },
    { name: 'thunder', description: '' }
  ]
)

pp 'Seeds files -- DamageTypes -- [INFO] -- Finished DamageType seed'