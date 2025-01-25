func sliceSize(diameter: Double?, slices: Int?) -> Double? {
  guard let diameter = diameter,  let slices = slices, diameter >= 0 && slices >= 1 else {
    return nil
  }
  let radius = diameter / 2
  return radius * radius * Double.pi / Double(slices)
}

func biggestSlice(
  diameterA: String, slicesA: String,
  diameterB: String, slicesB: String
) -> String {
  let pizzaA = sliceSize(diameter: Double(diameterA), slices: Int(slicesA))
  let pizzaB = sliceSize(diameter: Double(diameterB), slices: Int(slicesB))
  guard pizzaA != pizzaB else {return "Neither slice is bigger"}
  guard let pizzaA = pizzaA else {return "Slice B is bigger"}
  guard let pizzaB = pizzaB else {return "Slice A is bigger"}
  return pizzaA < pizzaB ? "Slice B is bigger" : "Slice A is bigger"
}
