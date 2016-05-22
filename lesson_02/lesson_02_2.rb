car = {
	brand: "Volvo",
	model: "XC90",
	year: 2010,
	run: 150000
}

puts car[:brand]

car.merge!({owner: "Someone"})

puts car.to_s

