// MARK: Desafio 1 - Calculadora
struct Calculadora {
    let primeiroValor: Double
    let segundoValor: Double
    
    func soma() -> Double {
        return primeiroValor + segundoValor
    }
    
    func subtracao() -> Double {
        return primeiroValor - segundoValor
    }
    
    func multiplicacao() -> Double {
        return primeiroValor * segundoValor
    }
    
    func divisao() -> Double {
        return primeiroValor / segundoValor
    }
}

let calc = Calculadora(primeiroValor: 6, segundoValor: 4)

print("Soma = \(calc.soma())")
print("Subtração = \(calc.subtracao())")
print("Multiplicação = \(calc.multiplicacao())")
print("Divisão = \(calc.divisao())")

// MARK: Desafio 2 - Restaurante
class Restaurante {
    var nome: String
    var tipoDeComida: String
    var numeroDePedidos: Int
    
    init(nome: String, tipoDeComida: String) {
        self.nome = nome
        self.tipoDeComida = tipoDeComida
        self.numeroDePedidos = 0
    }
    
    func recebePedido() {
        self.numeroDePedidos += 1
    }
    
    func calculaTotalPedidos() -> Double {
        return 35.0 * Double(self.numeroDePedidos)
    }
}

let restauranteX = Restaurante(nome: "Restaurande X", tipoDeComida: "Comida Y")
restauranteX.recebePedido()
restauranteX.recebePedido()
restauranteX.calculaTotalPedidos()

// MARK: Desafio 3 - Retângulo
struct Retangulo {
    var base: Double
    var altura: Double
    var area = 0.0
    var perimetro = 0.0
    
    mutating func calcularArea() -> Double {
        area = base * altura
        
        return area
    }
    
    mutating func calcularPerimetro() -> Double {
        perimetro = 2 * calcularArea()
        
        return perimetro
    }
}

var rect = Retangulo(base: 5, altura: 3)
rect.calcularArea()
rect.calcularPerimetro()
