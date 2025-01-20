func protectSecret(_ secret: String, withPassword password: String) -> (String) -> String {
    func protect(_ aPassword: String) -> String {
      if aPassword == password {
        return secret
      } else {
        return "Sorry. No hidden secrets here."
      }
    }
    return protect
}

func generateCombination(forRoom room: Int, usingFunction f: (Int) -> Int) -> (Int, Int, Int) {
    let first = f(room)
    let second =  f(first)
    let third = f(second)
    return (first, second, third)
}
