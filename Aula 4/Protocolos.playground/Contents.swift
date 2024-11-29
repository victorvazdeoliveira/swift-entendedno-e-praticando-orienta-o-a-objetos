protocol Conta {
    var saldo: Double { get set }
    
    mutating func sacar(_ valor: Double)
    
    mutating func depositar(_ valor: Double)
}

struct ContaCorrente: Conta {
    var saldo: Double
    
    mutating func sacar(_ valor: Double) {
        saldo -= valor
    }
    
    mutating func depositar(_ valor: Double) {
        saldo += valor
    }
    
    init() {
        saldo = 0.0
    }
}
