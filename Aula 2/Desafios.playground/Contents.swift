// MARK: Desafio 1 - Registrando o empregado e gerente
class Empregado {
    let nome: String
    var salario: Double
    
    init(nome: String, salario: Double) {
        self.nome = nome
        self.salario = salario
    }
}

class Gerente: Empregado {
    var departamento: String
    
    init(nome: String, salario: Double, departamento: String) {
        self.departamento = departamento
        
        super.init(nome: nome, salario: salario)
    }
}

let pessoaGerente = Gerente(nome: "Nome Exemplar", salario: 50000, departamento: "Departamento Exemplar")

// MARK: Desafio 2 - Calculando o salário do vendedor
class Vendedor: Empregado {
    func percentualComissao(qntVendas: Int) -> Double {
        super.salario += 50.0 * 0.1 * Double(qntVendas)
        
        print("O valor final que o \(super.nome) irá receber é de \(super.salario).")
        
        return super.salario
    }
}

let pessoaVendedora = Vendedor(nome: "Vendedor Exemplar", salario: 2500)
pessoaVendedora.percentualComissao(qntVendas: 100)

// MARK: Desafio 3 - Verificando tipos
func verificaTipo(empregado: Empregado) {
    if let gerente = empregado as? Gerente {
        print("O(a) empregado(a) \(gerente.nome) é gerente e está no departamento \(gerente.departamento).")
    } else if let vendedor = empregado as? Vendedor {
        print("O(a) empregado(a) \(vendedor.nome) é um vendedor.")
    } else {
        print("O(a) empregado(a) \(empregado.nome) não possui algum cargo.")
    }
}

let pessoa = Empregado(nome: "Pessoa Exemplar", salario: 1200)

verificaTipo(empregado: pessoaGerente)
verificaTipo(empregado: pessoaVendedora)
verificaTipo(empregado: pessoa)
