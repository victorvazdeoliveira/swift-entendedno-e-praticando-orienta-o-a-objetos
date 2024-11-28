// Structs possuem um tipo de valor
struct ContaCorrenteStruct {
    var saldo = 0.0
    var nome: String
    
    mutating func sacar(_ valor: Double) {
        saldo -= valor
    }
    
    mutating func depositar(_ valor: Double) {
        saldo += valor
    }
}

var contaCorrenteStructVictor = ContaCorrenteStruct(nome: "Victor")
var contaCorrenteStruct01 = contaCorrenteStructVictor
contaCorrenteStructVictor.depositar(100)
contaCorrenteStruct01.depositar(50)
print("Saldo da conta corrente struct Victor = \(contaCorrenteStructVictor.saldo)")
print("Saldo da conta corrente struct 01 = \(contaCorrenteStruct01.saldo)")

// Classes possui um tipo de referência
class ContaCorrenteClass {
    var saldo = 0.0
    var nome: String
    
    func sacar(_ valor: Double) {
        saldo -= valor
    }
    
    func depositar(_ valor: Double) {
        saldo += valor
    }
    
    init(nome: String) {
        self.nome = nome
    }
}

let contaCorrenteClassVictor = ContaCorrenteClass(nome: "Victor")
let contaCorrenteClass01 = contaCorrenteClassVictor
contaCorrenteClassVictor.depositar(60)
contaCorrenteClass01.depositar(100)
print("Saldo da conta corrente class Victor = \(contaCorrenteClassVictor.saldo)")
print("Saldo da conta corrente class 01 = \(contaCorrenteClass01.saldo)")
