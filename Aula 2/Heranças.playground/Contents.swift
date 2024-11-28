class Conta {
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

class ContaCorrente: Conta {
    func solicitarEmprestimo(_ valor: Double) {
        print("O cliente está solicitando um empréstido de R$ \(valor).")
    }
}

class ContaPoupanca: Conta {
    var possuiCartaoDebito = false
    
    func solicitarDebito() {
        print("O cliente está solicitando cartão de débito.")
        possuiCartaoDebito = true
    }
}

var contaPoupanca = ContaPoupanca(nome: "Victor")
contaPoupanca.depositar(50)
print(contaPoupanca.saldo)
contaPoupanca.solicitarDebito()

var contaCorrente = ContaCorrente(nome: "Victor")
contaCorrente.depositar(100)
print(contaCorrente.saldo)
contaCorrente.solicitarEmprestimo(20000)
