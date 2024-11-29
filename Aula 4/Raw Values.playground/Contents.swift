protocol Conta {
    var saldo: Double { get set }
    
    mutating func sacar(_ valor: Double) -> ResultadoSaque
    
    mutating func depositar(_ valor: Double)
}

enum FormaDePagamento {
    case pix
    case boleto
    case saldoEmConta
}

enum Mes: Int {
    case janeiro, fevereiro, marco, abril, maio, junho, julho, agosto, setembro, outubro, novembro, dezembro
}

enum Moeda: Double {
    case umCentavo = 0.01
    case cincoCentavos = 0.05
    case dezCentavos = 0.1
    case vinteCincoCentavos = 0.25
    case cinquantaCentavos = 0.5
}

enum ResultadoSaque { // Associate Value
    case sucesso(novoValor: Double)
    case falha(erro: String)
}

struct ContaCorrente: Conta {
    var saldo: Double
    
    mutating func sacar(_ valor: Double) -> ResultadoSaque {
        if valor > saldo {
            return .falha(erro: "O valor é maior do que o seu saldo")
        } else {
            saldo -= valor
            
            return .sucesso(novoValor: saldo)
        }
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
contaGiovanna.depositar(100)
let resultado = contaGiovanna.sacar(20)

switch resultado {
case .sucesso(let novoValor):
    print("O saque foi um sucesso, e o saldo é de \(novoValor)")
case .falha(let erro):
    print(erro)
}

var janeiro = Mes.janeiro
print(janeiro.rawValue)
var fevereiro: Mes = .fevereiro
print(fevereiro.rawValue)

var moedaCincoCentavos = Moeda.cincoCentavos
print(moedaCincoCentavos.rawValue)
