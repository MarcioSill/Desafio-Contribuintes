funcao impostoSobreSalario(quantia: real) : real
var
   salario : real
inicio

   salario <- quantia / 12
   se(salario < 3000.00)entao
      retorne 0
   senao
      se (salario < 5000.00) entao
         retorne quantia * 0.1
      senao
         retorne quantia * 0.2
      fimse
   fimse
fimfuncao


funcao impostoSobreServicos(quantia: real) : real
inicio
   retorne quantia * 0.15
fimfuncao


funcao impostoSobreGC(quantia: real) : real
inicio
   retorne quantia * 0.20
fimfuncao


funcao impostoBrutoTotal(salario: real; servicos: real; gc: real) : real
inicio
   retorne  impostoSobreSalario(salario)+impostoSobreServicos(servicos)+impostoSobreGC(gc)
fimfuncao


funcao abatimento(salario: real; servicos: real; gc: real; gastosMedicos: real; gastosEducacionais: real) : real
var
   medicEscola:real
inicio
   medicEscola <- gastosMedicos + gastosEducacionais
   se(medicEscola >= impostoBrutoTotal(salario; servicos; gc)*0.3)entao
      retorne  impostoBrutoTotal(salario; servicos; gc)*0.3
   senao
      retorne medicEscola
   fimse
fimfuncao


Algoritmo "contribuintes"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Nélio Alves
// Descrição   : calcular o imposto de renda que uma pessoa deve pagar (função)
// Autor(a)    : Marcio da Silva Lima
// Data atual  : 31/10/2022
Var
   salario, servicos, gc, medico, educacao:real


Inicio

   escreva("Renda anual com salário: ")
   leia(salario)
   escreva("Renda anual com prestação de serviço: ")
   leia(servicos)
   escreva("Renda anual com ganho de capital: ")
   leia(gc)
   escreva("Gastos médicos: ")
   leia(medico)
   escreva("Gastos educacionais: ")
   leia(educacao)

   escreval()
   escreval("RELATÓRIO:")
   escreval("Imposto sobre salário: ", impostoSobreSalario(salario):5:2 )
   escreval("Imposto sobre serviços: ", impostoSobreServicos(servicos):5:2)
   escreval("Imposto sobre ganho de capital: ", impostoSobreGC(gc):5:2)
   escreval("Imposto bruto total:: ", impostoBrutoTotal(salario; servicos; gc):8:2)
   escreval("Abatimento: ", abatimento(salario; servicos; gc; medico; educacao):7:2)
   escreval("Imposto devido: ",(impostoBrutoTotal(salario; servicos; gc)- abatimento(salario; servicos; gc; medico; educacao)):8:2)


Fimalgoritmo