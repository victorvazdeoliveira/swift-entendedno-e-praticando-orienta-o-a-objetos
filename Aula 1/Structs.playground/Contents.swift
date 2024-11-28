struct ContaCorrente {
    var saldo = 0.0
    var nome: String
    
    mutating func sacar(_ valor: Double) {
        saldo -= valor
    }
    
    mutating func depositar(_ valor: Double) {
        saldo += valor
    }
}

var contaCorrenteVictor = ContaCorrente(nome: "Victor")
contaCorrenteVictor.saldo
contaCorrenteVictor.depositar(1500)
contaCorrenteVictor.saldo
print(contaCorrenteVictor.saldo)

var contaCorrenteGiovanna = ContaCorrente(nome: "Giovanna")
contaCorrenteGiovanna.depositar(200)
contaCorrenteGiovanna.saldo
contaCorrenteGiovanna.sacar(150)
contaCorrenteGiovanna.saldo
