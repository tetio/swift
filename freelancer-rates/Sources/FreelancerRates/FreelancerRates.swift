let dailyPeriod = 8.0
let monthlyPeriod = 22.0

func dailyRateFrom(hourlyRate: Int) -> Double {
  return Double(hourlyRate) * dailyPeriod
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
  return (dailyRateFrom(hourlyRate: hourlyRate) * monthlyPeriod * (1 - discount * 0.01)).rounded()
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
  return (budget / (dailyRateFrom(hourlyRate: hourlyRate) * (1 - discount * 0.01))).rounded(.down)
}
