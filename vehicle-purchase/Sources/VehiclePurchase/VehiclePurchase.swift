let monthsInFiveYears = 5.0 * 12.0

func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
  let payment = price / monthsInFiveYears
  if payment <= monthlyBudget {
    return "Yes! I'm getting a " + vehicle
  } else if payment <= monthlyBudget * 1.1 {
    return "I'll have to be frugal if I want a " + vehicle
  } else {
    return "Darn! No \(vehicle) for me"
  }
}

func licenseType(numberOfWheels wheels: Int) -> String {
  if [2, 3].contains(wheels) {
    return "You will need a motorcycle license for your vehicle"
  }
  if [4, 6].contains(wheels) {
    return "You will need an automobile license for your vehicle"
  }
  if wheels == 18 {
    return "You will need a commercial trucking license for your vehicle"
  }
  return "We do not issue licenses for those types of vehicles"
}

func calculateResellPrice(originalPrice: Int, yearsOld: Int) -> Int {
  if yearsOld < 3 {
    return originalPrice * 80 / 100
  }
  if yearsOld < 10 {
    return originalPrice * 70 / 100
  }
  return originalPrice / 2
}
