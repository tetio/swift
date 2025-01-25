func timeToPrepare(drink: String) -> Double {
  switch (drink) {
    case ["beer", "soda", "water"].contains(drink): return 0.5
    case "shot": return 1.0
    case "mixed drink": return 1.5
    case "fancy drink": return 2.5
    case "frozen drink": return 3.0
    default: return 0.0
  }
} 


func timeToPrepare(drinks: [String]) -> Double {
  return drinks.map {timeToPrepare(drink: $0)}.reduce(0, +)
}

func makeWedges(needed: Int, limes: [String]) -> Int {
  fatalError("Please implement the makeWedges(needed:limes:) function")
}

func finishShift(minutesLeft: Int, remainingOrders: [[String]]) -> [[String]] {
  fatalError("Please implement the finishShift(minutesLeft:remainingOrders:) function")
}

func orderTracker(orders: [(drink: String, time: String)]) -> (
  beer: (first: String, last: String, total: Int)?, soda: (first: String, last: String, total: Int)?
) {
  fatalError("Please implement the orderTracker(orders:) function")
}
