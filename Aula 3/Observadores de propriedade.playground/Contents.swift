class Conta {
    var saldo = 0.0 {
        willSet(novoValor) {
            print("O saldo está sendo alterado! O seu novo valor será de \(novoValor)")
        }
        
        didSet(antigoValor) {
            print("O saldo está sendo alterado! O seu valor antigo era de \(antigoValor)")
        }
    }
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
contaGiovanna.depositar(20)
