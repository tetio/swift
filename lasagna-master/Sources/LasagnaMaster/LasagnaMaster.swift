func remainingMinutesInOven(elapsedMinutes: Int, expectedMinutesInOven: Int = 40) -> Int {
    return expectedMinutesInOven - elapsedMinutes
}

func preparationTimeInMinutes(layers: String...) -> Int {
    layers.count * 2
}

func quantities(layers: String...) -> (noodles: Int, sauce: Double) {
    let numNoodles = layers.filter({ x in x == "noodles" }).count
    let numSauce = layers.filter({ x in x == "sauce" }).count
    return (noodles: numNoodles * 3, sauce: Double(numSauce) * 0.2)
}

func toOz(_ quantities: inout (noodles: Int, sauce: Double)) {
    quantities.sauce = quantities.sauce * 33.814
}

func redWine(layers: String...) -> Bool {
    func mozzarella() -> Int {
        return layers.filter({ x in x == "mozzarella" }).count
    }
    func béchamel() -> Int {
        return layers.filter({ x in x == "béchamel" }).count
    }
    func meat() -> Int {
        return layers.filter({ x in x == "meat" }).count
    }
    func sauce() -> Int {
        return layers.filter({ x in x == "sauce" }).count
    }
    func ricotta() -> Int {
        return layers.filter({ x in x == "ricotta" }).count
    }

    return ricotta() + béchamel() + mozzarella() <= meat() + sauce()
}
