food_names = [
	"greek yogurt",
	"muffin",
	"scone",
	"mozarella cheese",
	"sausage",
	"cheddar cheese"
]

food_names.each { |food| Food.create(name: food) }
