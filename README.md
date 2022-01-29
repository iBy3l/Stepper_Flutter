![APRESENTAÇÃO](https://github.com/iBy3l/Stepper_Flutter/blob/main/assets/ABERTURA.jpg)
##  Índice::
- [Stepper](#stapper)
- [Implementação](#implementação)


## Stepper
Stepper é widget que mostra o processo de etapas, esse widget é muito valioso ser utilizados em formulários onde pode mostrar 
etapas concluídas em livre acesso do usuário sem deixar o app  poluído, mostrando o formulário completo dando a função dele abrir e fechar a etapa sem sair do página.

<p align="center"><img src="https://github.com/iBy3l/Stepper_Flutter/blob/main/assets/stepper.gif" width="200"></p>


No Video mostra como é utilizado esse widget e com um botão flutuante que quando é tocado ele mostra as etapas. No video é utilizado 
as seguintes ferramentas do Stepper:

## Implementação
- type: stepperType,
- physics: ScrollPhysics(),
- currentStep: _etapaAtual,
- onStepTapper: (step) => tapper(step),
- onStepContinue: continued,
- onStepCancel: cancel,
- steps: <Step>[...]
  
 - [ ] type:Tem duas opções para você determinar o layout `StepperType.horizontal` `StepperType.vertical`
 - [ ] physics: Como a visualização de rolagem do stepper deve responder à entrada do usuário. `ScrollPhysics`
 - [ ] currentStep: O index em etapas da etapa atual cujo conteúdo é exibido. `_etapaAtual`
 - [ ] onStepTapper: O retorno de chamada chamado quando uma etapa é tocada, com seu índice passado como argumento.
 - [ ] onStepContinue: O retorno de chamada chamado quando o botão 'continuar' é tocado.
 - [ ] onStepCancel: O retorno de chamada chamado quando o botão 'cancelar' é tocado.
 - [ ] steps: Os steps são passos do stepper cujos títulos, legendas, ícones sempre são mostrados.
  
  



<p align="center"><img src="https://github.com/iBy3l/Stepper_Flutter/blob/main/assets/iby3l.png" width=100"></p>
