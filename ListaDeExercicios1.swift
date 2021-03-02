//import UIKit

// 1 - Insira o código abaixo que formate o valor para 2 casas após a vígulas
let value = 10.124
// let newValue = String(format : "%.2f", value)
// print(newValue)

// 2 - Como eu apresento para o Usuário a seguinte frase: O ano atual é 2021? Utilizando interpolação?
let str1 = "O ano atual é"
let year = 2021
let answer2 = "\(str1) \(year)"
print(answer2)

// 3 - Existe um problema para o código abaixo? Se sim qual seria ele?
let complementAddress : Int?
complementAddress = 54
print(complementAddress)
// answer3 = O retorno de um print dele será "Optional(valor de complement address)"


// 4 - Defina um valor para a váriavel complementAddress e imprima ela de forma segura, caso seu valor for nulo imprima: "Não existe endereço complementar"
if let complementAddress = complementAddress {
    print(complementAddress)
} else {
    print("Não existe endereço complementar")
}

// 5 - Faça uma ternária que verifique se a nota é maior que 7 caso afimativo imprima: "Aprovado" caso contrário "Em exame".

let nota = 6.98
nota > 7 ? print("Aprovado") : print("Em exame")

//6 - Verifique a validade de uma senha fornecida pelo usuário. A senha válida é o número 1234. Devem ser impressas as seguintes mensagens: ACESSO PERMITIDO caso a senha seja válida. ACESSO NEGADO caso a senha seja inválida.

let password = 2314
password == 1234 ? print("ACESSO PERMITIDO") : print("ACESSO NEGADO")


//7 - Dadas medidas dos lados de um triângulo e escreva se ele é Equilátero, Isósceles ou Escaleno. Sendo que:
//− Triângulo Equilátero: possui os 3 lados iguais.
//− Triângulo Isóscele: possui 2 lados iguais.
//− Triângulo Escaleno: possui 3 lados diferentes.
let l1 = 10
let l2 = 10
let l3 = 12

if(l1 == l2){
    l2 == l3 ? print("Equilatero") : print("Isóscele")
}
else if(l2 != l3){
    print("Escaleno")
}
else if(l1 == l3){
    print("Isóscele")
}
else{
    print("Escaleno")
}


if (l1 == l2) && (l1 == l3){
    print("Equilatero")
}
else if(l1 == l2) || (l1 == l3) || (l2 == l3){
    print("Isóscele")
}
else{
    print("Escaleno")
}

//8 - Percorra todo o array adicionando a string Nome: em cada elemento
let names = ["João","Maria","José","Matheus"]
let answer8 = names.map({(name) -> String in
    return "Nome: \(name)"
})
print(answer8)


//9 - Percorra o array e exiba o maior valor, verifique se o array é vazio caso afirmativo exiba na tela a mensagem: "Array vazio"

var array = [1,10,23,50,2]
if(array.isEmpty){
    print("Array vazio")
}
else {
    var maxValue: Int = 0
    array.map({(number) -> Int in
        if(number > maxValue){
            maxValue = number
        }
        return number
    })
    print(maxValue)
}



//10 - Imprima o primeiro elemento do array do exercicio anterior, verifique se o valor é nulo
if let firstNumber = array.first{
    print(firstNumber)
}else{
    print("Vazio")
}


//11 - Adicione um elemento no array e imprima o último valor inserido
array.append(2)
if let lastNumber = array.last {
    print(lastNumber)
}

//12 - Crie uma struct com o modelo do carro e seu ano, após isso crie um carro com o modelo Ferrari e ano 2020
struct Car {
    var modelo: String
    var ano: Int
}

let Ferrari = Car(modelo: "Ferrari", ano : 2020)
print(Ferrari)

//13 - Crie outra struct que receba um peso em Kg e tenha uma propriedade computada que retorne o peso em gramas. Crie um peso com 10Kg e imprima os 2 atributos em Kg e grama

struct Pessoa {
    var pesoKg: Float
    var pesoGramas: Float {
        return pesoKg * 1000
    }
}

let answer13 = Pessoa(pesoKg: 10)
print("\(answer13.pesoKg)Kg")
print("\(answer13.pesoGramas)g")

//14 - Crie uma função que imprima a seguinte frase: "Essa é minha primeira função"
func answer14(){
    print("Essa é minha primeira função")
}
answer14()


//15 - Crie uma função que receba 2 valores Inteiros como parâmetro e imprima a multiplicação entre eles
func answer15(firstValue: Int, secondValue: Int){
    print(firstValue * secondValue)
}
answer15(firstValue: 5, secondValue: 10)


//16 - Crie uma função que receba 2 valores Inteiros como parâmetro e retorne a multiplicação entre eles e imprima seu resultado
func answer16(_ firstValue: Int, _ secondValue: Int) -> Int{
    return firstValue * secondValue
}
print(answer16(2, 3))

//17 - Utilizando map concatene a string Nome: em cada elemento, e imprima o array

let names2 = ["João","Maria","José","Matheus"]
let answer17 = names2.map({(name) -> String in
    return "Nome: \(name)"
})
let otherAnswer17 = names2.map {"Nome : \($0)"}
print(answer17)
print(otherAnswer17)

//18 - Utilizando filter retorne todo os nomes que iniciem com a letra M
let answer18 = names2.filter { $0.contains("M")}

let otherAnswer18 = names2.filter({(name) -> Bool in
    return name.contains("M")
})
print(answer18)
print(otherAnswer18)
