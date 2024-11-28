class ContaCorrente {
    var saldo: Double
    var nome: String
    
    func sacar(_ valor: Double) {
        saldo -= valor
    }
    
    func depositar(_ valor: Double) {
        saldo += valor
    }
    
    init(nome: String) {
        self.saldo = 0
        self.nome = nome
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

var contaCorrenteTeste: ContaCorrente = .init(nome: "Teste")
contaCorrenteTeste.nome
