func getCard(at index: Int, from stack: [Int]) -> Int {
  return stack[index]
}

func setCard(at index: Int, in stack: [Int], to newCard: Int) -> [Int] {
  guard index < stack.count && index >= 0 else {
    return stack
  }
  var newStack = stack
  newStack[index] = newCard
  return newStack
}

func insert(_ newCard: Int, atTopOf stack: [Int]) -> [Int] {
  var newStack = stack
  newStack.insert(newCard, at: stack.endIndex)
  return newStack
}

func removeCard(at index: Int, from stack: [Int]) -> [Int] {
  guard index < stack.count && index >= 0 else {
    return stack
  }
  var newStack = stack
  newStack.remove(at: index)
  return newStack
}

func removeTopCard(_ stack: [Int]) -> [Int] {
  guard !stack.isEmpty else {
    return stack
  }
  var newStack = stack
  newStack.removeLast()
  return newStack
}

func insert(_ newCard: Int, atBottomOf stack: [Int]) -> [Int] {
  var newStack = stack
  newStack.insert(newCard, at: 0)
  return newStack
}

func removeBottomCard(_ stack: [Int]) -> [Int] {
  guard !stack.isEmpty else {
    return stack
  }
  var newStack = stack
  newStack.removeFirst()
  return newStack
}

func checkSizeOfStack(_ stack: [Int], _ size: Int) -> Bool {
  return size == stack.count
}

func evenCardCount(_ stack: [Int]) -> Int {
  return stack.filter({ x in x % 2 == 0 }).count
}
