def newRegion(region, prof, locations, pokemon, items)
	region = OpenStruct(region)
	prof = OpenStruct(prof)
	locations = OpenStruct(locations)
	pokemon = OpenStruct(pokemon)
	items = OpenStruct(items)

	region.proffesor = prof
	region.locations = locations
	region.pokemon = pokemon
	region.items = items

	region
end