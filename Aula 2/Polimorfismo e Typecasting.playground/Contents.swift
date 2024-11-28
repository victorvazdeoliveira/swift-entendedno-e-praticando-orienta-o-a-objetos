class Conta {
    var saldo = 0.0
    var nome: String
    
    init(nome: String) {
        self.nome = nome
    }
    
    func sacar(_ valor: Double) {
        saldo -= valor
    }
    
    func depositar(_ valor: Double) {
        saldo += valor
    }
}

class ContaCorrente: Conta {
    func solicitarEmprestimo(_ valor: Double) {
        print("O cliente está solicitando um empréstido de R$ \(valor).")
        super.depositar(valor)
    }
    
    override func sacar(_ valor: Double) {
        saldo -= valor + 5
    }
}

class ContaPoupanca: Conta {
    var possuiCartaoDebito: Bool
    
    init(nome: String, possuiCartaoDebito: Bool) {
        self.possuiCartaoDebito = possuiCartaoDebito
        
        super.init(nome: nome)
    }
    
    func solicitarDebito() {
        print("O cliente está solicitando cartão de débito.")
        possuiCartaoDebito = true
    }
    
    override func sacar(_ valor: Double) {
        saldo -= valor + 10
    }
}

// Isso é chamado de Polimorfismo. Conta Poupança e Conta Corrente são objetos de tipo conta também, ou seja, também funcionam para funcões do tipo
func exibeSaldoDaConta(_ conta: Conta) {
    if conta is ContaCorrente {
        print("Conta é do tipo Conta Corrente.")
    }
    
    if let contaCorrente = conta as? ContaCorrente { // Isso é Typecasting
        contaCorrente.solicitarEmprestimo(200)
    }
    
    guard let contaPoupanca = conta as? ContaPoupanca else {
        return
    }
    
    print(contaPoupanca.possuiCartaoDebito)
}

var contaPoupanca = ContaPoupanca(nome: "Victor", possuiCartaoDebito: false)
contaPoupanca.depositar(50)
print(contaPoupanca.saldo)
contaPoupanca.solicitarDebito()
contaPoupanca.sacar(20)
contaPoupanca.saldo

var contaCorrente = ContaCorrente(nome: "Victor")
contaCorrente.depositar(100)
print(contaCorrente.saldo)
contaCorrente.solicitarEmprestimo(20000)
print(contaCorrente.saldo)
contaCorrente.sacar(20)
contaCorrente.saldo

exibeSaldoDaConta(contaCorrente)
exibeSaldoDaConta(contaPoupanca)
