# units-swift

[![Build Status](https://travis-ci.com/cropio/units-swift.svg?branch=master)](https://travis-ci.com/cropio/units-swift) [![codecov](https://codecov.io/gh/cropio/units-swift/branch/master/graph/badge.svg)](https://codecov.io/gh/cropio/units-swift)

This library can convert units of measurement for agro systems

### Instalation
For installation you can use cocoapods

```ruby
pod 'units-swift'
```

For using pods you need to add custom source

```ruby
source 'https://github.com/cropio/cocoapods-specs.git'
```

### Use
For using this lib you need to get units table form **Cropwise Operations** api

```swift
let table = [
	"length": "mile",
	"area": "acre",
	"weight": "tonn",
	"machinery_weight": "pound",
	"volume": "pint",
	"tank_volume": "american_gallon",
	"productivity": "tonn_per_ha",
	"speed": "mile_per_hour",
	"temperature": "fahrenheit",
	"precipitation_level": "in",
	"water_rate": "american_quart",
    "wind_speed": "m_per_sec",   
	"fuel_consumption": "mile_per_uk_gallon",
	"short_length": "ft",
	"depth": "in",
	"row_spacing": "cm",
	"plant_spacing": "m"
]

do {
	// Units support this languages - "de", "en", "uk", "es", "et", "bg", "cs", "hu", "pl", "ru", "pt"
	let units = try Units(units: table, language: "es")

	print(units.area.from(242)) // 597.74
	print(units.area.to(597.74)) // 241.99999999999997
	print(units.area.localization.short) // "acre"
	print(units.area.localization.full) // "Acre"
} catch let error {
	print(error)
}
```

Also you can use default units
```swift
do {
	let units = try Units.default(language: "uk")

	print(units.area.from(242)) // 242
	print(units.area.to(597.74)) // 597.74
	print(units.area.localization.short) // "га"
	print(units.area.localization.full) // "Гектар"
} catch let error {
	print(error)
}
```
Units updating
```swift
let table = [
	"length": "mile",
	"area": "acre",
	"weight": "tonn",
	"machinery_weight": "pound",
	"volume": "pint",
	"tank_volume": "american_gallon",
	"productivity": "tonn_per_ha",
	"speed": "mile_per_hour",
	"temperature": "fahrenheit",
	"precipitation_level": "in",
	"water_rate": "american_quart",
    "wind_speed": "m_per_sec",
	"fuel_consumption": "mile_per_uk_gallon",
	"short_length": "ft",
	"depth": "in",
	"row_spacing": "cm",
	"plant_spacing": "m"
]

do {
	var units = try Units.default(language: "en")

	try units.update(units: table)

	print(units.area.from(242)) // 597.74
	print(units.area.to(597.74)) // 241.99999999999997
	print(units.area.localization.short) // "acre"

	try units.update(units: table, language: "uk")

	print(units.area.from(242)) // 597.74
	print(units.area.to(597.74)) // 241.99999999999997
	print(units.area.localization.short) // "акр"
} catch let error {
	print(error)
}
```
