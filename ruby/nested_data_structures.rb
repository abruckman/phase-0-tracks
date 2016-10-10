highway = {
	Dodge: {
		riders: ["Tom", "Larry", "Jim"],
		model: "Caravan",
		working: {
			breaks: true,
			airbags: false
		}
	},
	Ford: {
		riders: ["Molly"],
		model: "Taurus",
		working: {
			breaks: false,
			airbags: true
		}
	},
	Honda: {
		riders: ["Ricky", "Gina"],
		model: "Civic",
		working:{ 
			breaks: true,
			airbags: true
		}
	},
	BMW:{
		riders: ["Leonius", "Thad"],
		model: "Z3",
		working: {
			breaks: false,
			airbags: true
			}
	}
}

p highway[:BMW][:riders][1]
p highway[:Honda][:working][:airbags]
p highway[:Dodge]
