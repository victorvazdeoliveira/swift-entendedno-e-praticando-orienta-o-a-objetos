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

extension Conta {
    func transferir(_ contaDestino: Conta, _ valor: Double) {
        sacar(valor)
        contaDestino.depositar(valor)
    }
}

var contaGiovanna = Conta(nome: "Giovanna")
contaGiovanna.depositar(200)

var contaAna = Conta(nome: "Ana")

contaGiovanna.transferir(contaAna, 50)
print(contaGiovanna.saldo)
print(contaAna.saldo)

func contaCaracteresString(_ texto: String) -> Int {
    texto.count
}

let texto = String("Giovanna")
contaCaracteresString(texto)

extension String {
    func contaCaracteresString() -> Int {
        self.count
    }
}

print(texto.contaCaracteresString())
// Extensões não podem contem propriedades armazenadas, só computadas e estáticas.
