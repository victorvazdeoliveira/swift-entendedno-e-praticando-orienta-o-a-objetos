class Conta {
    var saldo = 0.0
    var nome: String
    
    static let taxaTransferencia = 0.1
    
    var negativado: Bool { // Propriedade computada
        return saldo < 0
    }
    
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

var contaGiovanna = Conta(nome: "Giovanna")
contaGiovanna.sacar(20)
print(contaGiovanna.negativado)
contaGiovanna.depositar(100)
print(contaGiovanna.negativado)
print(Conta.taxaTransferencia)

@MainActor
class Estudante {
    var nome: String
    var idade: Int
    static var contagemEstudantes = 0
    
    init(nome: String, idade: Int) {
        self.nome = nome
        self.idade = idade
        Estudante.contagemEstudantes += 1
    }
}

let estudante1 = Estudante(nome: "João", idade: 28)
let estudante2 = Estudante(nome: "Carlos", idade: 32)
let estudante3 = Estudante(nome: "Ana", idade: 29)
print(Estudante.contagemEstudantes) // O que será exibido?
