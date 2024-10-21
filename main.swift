//Exercício 1.1
print("                             Exercício 1.1")

var n1 = 10, n2 = 20, n3 = 30

print("Média: \((n1 + n2 + n3)/3)")
print("--------------------------------------------------------------------------")

//Exercício 1.2
print("                             Exercício 1.2")

let c = 25
var f = (9 * c + 160) / 5

print("Temperatura em Fahrenheit: \(f)")
print("--------------------------------------------------------------------------")

//Exercício 2.1
print("                             Exercício 2.1")

var idade = 18

switch idade{
  case 0..<13: print("Criança")
  case 13..<18: print("Adolescente")
  default: print("Adulto")
}
print("--------------------------------------------------------------------------")

//Exercício 2.2
print("                             Exercício 2.2")

var rg = true

idade >= 18 && rg ? print("Pode entrar") : print("Não pode entrar")
print("--------------------------------------------------------------------------")

//Exercício 3.1
print("                             Exercício 3.1")

var num = 2

repeat{
  print(num)
  num = num + 2
}while num < 10
print("--------------------------------------------------------------------------")

//Exercício 3.2
print("                             Exercício 3.2")

func adivinheNumero() {
  let numeroAleatorio = Int.random(in: 1...100)

  var tentativas = 0
  var acertou = false

  print("Tente adivinhar o número (entre 1 e 100)!")

  while !acertou {
      print("Digite seu chute: ", terminator: "")
      if let input = readLine(), let chute = Int(input) {
          tentativas += 1 
          if chute > numeroAleatorio {
              print("Você chutou alto!")
          } else if chute < numeroAleatorio {
              print("Você chutou baixo!")
          } else {
              print("Acertou! O número era \(numeroAleatorio).")
              print("Você precisou de \(tentativas) tentativas.")
              acertou = true
          }
      } else {
          print("Entrada inválida. Por favor, digite um número inteiro.")
      }
  }
}

adivinheNumero()
print("--------------------------------------------------------------------------")

//Exercício 4.1
print("                             Exercício 4.1")

func verificaNumeroPrimo(_ numero: Int) -> Bool {
    if numero < 2 {
        return false
    }
    for i in 2..<numero {
        if numero % i == 0 {
            return false
        }
    }
    return true
}

print(verificaNumeroPrimo(7)) 
print("--------------------------------------------------------------------------")

//Exercício 4.2
print("                             Exercício 4.2")

func dividirConta(valorTotal: Double, numeroDePessoas: Int){
  let valorComAcrescimo = valorTotal * 1.10
  let valorPorPessoa = valorComAcrescimo / Double(numeroDePessoas)
  print("Cada pessoa deve pagar: \(valorPorPessoa)")
}

dividirConta(valorTotal: 200, numeroDePessoas: 4)
print("--------------------------------------------------------------------------")

//Exercício 5.1
print("                             Exercício 5.1")

func verificaNome(nome: String?){
  print(nome ?? "Nome não informado")
}

verificaNome(nome:"João")
print("--------------------------------------------------------------------------")

//Exercício 6.1
print("                             Exercício 6.1")

func calcularMedia(notas: [Double]) -> Double {
  guard !notas.isEmpty else {
      return 0.0
  }
  let soma = notas.reduce(0, +)
  let media = soma / Double(notas.count)
  return media
}

let notasAluno: [Double] = [8.5, 9.0, 7.5, 10.0, 8.0]
let mediaAluno = calcularMedia(notas: notasAluno)

print("A média do aluno é: \(mediaAluno)")
print("--------------------------------------------------------------------------")

//Exercício 6.2
print("                             Exercício 6.2")

func gerarNumerosAleatorios() -> [Int] {
  var numeros: [Int] = []
  for _ in 1...10 {
      let numeroAleatorio = Int.random(in: 1...100)
      numeros.append(numeroAleatorio)
  }
  return numeros
}

func separarParesEImpares(numeros: [Int]) -> (pares: Set<Int>, impares: Set<Int>) {
  var pares: Set<Int> = []
  var impares: Set<Int> = []

  for numero in numeros {
      if numero % 2 == 0 {
          pares.insert(numero)
      } else {
          impares.insert(numero)
      }
  }
  return (pares, impares)
}

let numerosAleatorios = gerarNumerosAleatorios()
let (pares, impares) = separarParesEImpares(numeros: numerosAleatorios)

print("Números gerados: \(numerosAleatorios)")
print("Conjunto de pares: \(pares)")
print("Conjunto de ímpares: \(impares)")
print("--------------------------------------------------------------------------")

//Exercício 6.3
print("                             Exercício 6.3")

let estados: [String: String] = [
    "AC": "Acre",
    "AL": "Alagoas",
    "AP": "Amapá",
    "AM": "Amazonas",
    "BA": "Bahia",
    "CE": "Ceará",
    "DF": "Distrito Federal",
    "ES": "Espírito Santo",
    "GO": "Goiás",
    "MA": "Maranhão",
    "MT": "Mato Grosso",
    "MS": "Mato Grosso do Sul",
    "MG": "Minas Gerais",
    "PA": "Pará",
    "PB": "Paraíba",
    "PR": "Paraná",
    "PE": "Pernambuco",
    "PI": "Piauí",
    "RJ": "Rio de Janeiro",
    "RN": "Rio Grande do Norte",
    "RS": "Rio Grande do Sul",
    "RO": "Rondônia",
    "RR": "Roraima",
    "SC": "Santa Catarina",
    "SP": "São Paulo",
    "SE": "Sergipe",
    "TO": "Tocantins"
]

func exibirEstadosComNomeMaiorQueSeteCaracteres(estados: [String: String]) {
    for (sigla, nome) in estados {
        if nome.count > 7 {
            print("\(sigla): \(nome)")
        }
    }
}

exibirEstadosComNomeMaiorQueSeteCaracteres(estados: estados)
print("--------------------------------------------------------------------------")

//Exercício 8.1
print("                             Exercício 8.1")

class Calculadora {
  var numero1: Double
  var numero2: Double
  init(numero1: Double, numero2: Double) {
      self.numero1 = numero1
      self.numero2 = numero2
  }
  func soma() -> Double {
      return numero1 + numero2
  }
  func subtracao() -> Double {
      return numero1 - numero2
  }
  func multiplicacao() -> Double {
      return numero1 * numero2
  }
  func divisao() -> Double {
      return numero1 / numero2
  }
}

let calculadora = Calculadora(numero1: 10.5, numero2: 5.0)

print("Soma: \(calculadora.soma())")
print("Subtração: \(calculadora.subtracao())")
print("Multiplicação: \(calculadora.multiplicacao())")
print("Divisão: \(calculadora.divisao())")
print("--------------------------------------------------------------------------")

//Exercício 8.2
print("                             Exercício 8.2")

struct Restaurante {
  var nome: String
  var comida: String
  var pedidos: Int
  init(nome: String, comida: String) {
      self.nome = nome
      self.comida = comida
      self.pedidos = 0
  }
  
  mutating func recebePedido() {
      pedidos += 1
  }
  
  func calculaTotalPedidos() -> Double {
      return Double(pedidos) * 35.0
  }
}

var restaurante = Restaurante(nome: "Teste", comida: "Teste")

restaurante.recebePedido()
restaurante.recebePedido()
restaurante.recebePedido()

print("Total de pedidos: \(restaurante.pedidos)")
print("Total em reais: R$ \(restaurante.calculaTotalPedidos())")
print("--------------------------------------------------------------------------")

//Exercício 8.3
print("                             Exercício 8.3")

class Retangulo {
  var base: Double
  var altura: Double
  init(base: Double, altura: Double) {
      self.base = base
      self.altura = altura
  }
  
  func calcularArea() -> Double {
      return base * altura
  }
  
  func calcularPerimetro() -> Double {
      return 2 * (base + altura)
  }
}

let retangulo = Retangulo(base: 5.0, altura: 3.0)

print("Área: \(retangulo.calcularArea())")
print("Perímetro: \(retangulo.calcularPerimetro())")
print("--------------------------------------------------------------------------")

//Exercício 8.4
print("                             Exercício 8.4")

class Empregado {
    var nome: String
    var salario: Double

    init(nome: String, salario: Double) {
        self.nome = nome
        self.salario = salario
    }

    func exibeInformacoes() {
        print("Nome: \(nome), Salário: R$ \(salario)")
    }
}

class Gerente: Empregado {
    var departamento: String

    init(nome: String, salario: Double, departamento: String) {
        self.departamento = departamento
        super.init(nome: nome, salario: salario)
    }

    override func exibeInformacoes() {
        print("Nome: \(nome), Salário: R$ \(salario), Departamento: \(departamento)")
    }
}

let empregado = Empregado(nome: "Carlos", salario: 3000.0)
empregado.exibeInformacoes()
let gerente = Gerente(nome: "Ana", salario: 8000.0, departamento: "Financeiro")
gerente.exibeInformacoes()

print("--------------------------------------------------------------------------")

//Exercício 8.5
print("                             Exercício 8.5")

class Vendedor: Empregado {

    func percentualComissao(numeroDeVendas: Int) -> Double {
        let valorPorVenda: Double = 50.0
        let comissaoPorVenda: Double = 0.10 // 10%

        let comissaoTotal = Double(numeroDeVendas) * valorPorVenda * comissaoPorVenda

        let salarioFinal = salario + comissaoTotal

        return salarioFinal
    }
}

let vendedor = Vendedor(nome: "Pedro", salario: 2000.0)
vendedor.exibeInformacoes()

let vendasRealizadas = 15
let salarioFinalVendedor = vendedor.percentualComissao(numeroDeVendas: vendasRealizadas)
print("Salário final do Vendedor \(vendedor.nome): R$ \(salarioFinalVendedor)")

print("--------------------------------------------------------------------------")