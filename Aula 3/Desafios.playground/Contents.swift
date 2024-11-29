// MARK: Desafio 1 - Propriedades computadas
struct Pessoa {
    let nome: String
    var idade: Int
    var altura: Double
    var peso: Double
    
    var imc: Double {
        return peso / (altura * altura)
    }
    
    var adulto: Bool {
        return idade >= 18
    }
}

let victor = Pessoa(nome: "Victor", idade: 24, altura: 1.68, peso: 67)
victor.imc

// MARK: Desafio 2 - Observadores de propriedades
struct Empregado {
    var salario = 1400 {
        willSet(novoSalario) {
            if novoSalario > salario {
                print("Parabéns, você recebeu uma promoção")
            } else if novoSalario == salario {
                print("Parece que não houve uma promoção dessa vez.")
            }
        }
        
        didSet(antigoSalario) {
            if salario < antigoSalario {
                print("O novo salário não pode ser menor do que era anteriormente.")
                salario = antigoSalario
            }
        }
    }
}

var empregado = Empregado()
empregado.salario = 100
print(empregado.salario)
empregado.salario = 1400
empregado.salario = 150000
