protocol Conta {
    var saldo: Double { get set }
    
    mutating func sacar(_ valor: Double)
    
    mutating func depositar(_ valor: Double)
}

enum FormaDePagamento {
    case pix
    case boleto
    case saldoEmConta
}

enum Mes {
    case janeiro, fevereiro, marco, abril, maio, junho, julho, agosto, setembro, outubro, novembro, dezembro
}

struct ContaCorrente: Conta {
    var saldo: Double
    
    mutating func sacar(_ valor: Double) {
        saldo -= valor
    }
    
    mutating func depositar(_ valor: Double) {
        saldo += valor
    }
    
    func pagamentoCartao(_ tipoPagamento: FormaDePagamento) {
        switch tipoPagamento {
        case .pix:
            print("O pagamento será efetuado por PIX.")
        case .boleto:
            print("O pagamento será efetuado por boleto.")
        case .saldoEmConta:
            print("O pagamento será efetuado por saldo em conta.")
        }
    }
    
    init() {
        saldo = 0.0
    }
}

var contaGiovanna: ContaCorrente = .init()
contaGiovanna.pagamentoCartao(.pix)

var janeiro = Mes.janeiro
var fevereiro: Mes = .fevereiro
