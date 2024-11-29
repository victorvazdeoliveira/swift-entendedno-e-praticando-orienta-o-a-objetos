// MARK: Desafio 01 - Área
protocol Area {
    var area: Double { get }
}

struct Quadrado: Area {
    var lado: Double
    var area: Double {
        lado * lado
    }
}

struct Triangulo: Area {
    var base: Double, altura: Double
    var area: Double {
        base * altura / 2
    }
}

var quadrado: Quadrado = .init(lado: 10)
quadrado.area
var triangulo = Triangulo(base: 10, altura: 10)
triangulo.area

// MARK: Desafio 02 - Moedas
enum Moeda: Int {
    case UmCentavo = 1
    case CincoCentavos = 5
    case DezCentavos = 10
    case VinteCincoCentavos = 25
    case CinquentaCentavos = 50
    
    static func somaTotal(_ moedas: [Self]) -> Int {
        var soma = 0
        
        for moeda in moedas {
            soma += moeda.rawValue
        }
        
        return soma
    }
}

let moedas: [Moeda] = [.CincoCentavos, .UmCentavo, .CincoCentavos, .VinteCincoCentavos, .CincoCentavos, .DezCentavos]

Moeda.somaTotal(moedas)
