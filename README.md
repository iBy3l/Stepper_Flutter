![APRESENTAÇÃO](https://github.com/iBy3l/Stepper_Flutter/blob/main/assets/ABERTURA.jpg)
##  Índice::
- [Stepper](#stapper)
- [Implementação](#implementação)
- [Explicação](#explicacao)
- [Codigo](#codigo)

## Stepper
Stepper é widget que mostra o processo de etapas, esse widget é muito valioso ser ultilizados em formularios onde 
pode mostrar etapas concluidas em livre acesso do usuario sem deixar o app puluido, mostrando o formulario completo 
dando a função dele abrir e fechar a etapa sem sair do pagina.

<p align="center"><img src="https://github.com/iBy3l/Stepper_Flutter/blob/main/assets/stepper.gif" width="200"></p>


No Video mostra como é ultilizado esse widget e com um botão flutuante que quando é tocado ele mostra as etapas.
No video é ultilizado as seguintes ferramentas do Stepper:

## Implementação
- type: stepperType,
- physics: ScrollPhysics(),
- currentStep: _etapaAtual,
- onStepTapper: (step) => tapper(step),
- onStepContinue: continued,
- onStepCancel: cancel,
- steps: <Step>[...]
  
 - [ ] type: tem dois tipos de opções para você determinar o tipo de layout `StepperType.horizontal` `StepperType.vertical`
 - [ ] physics: Como a visualização de rolagem do stepper deve responder à entrada do usuário. `ScrollPhysics`
 - [ ] currentStep: O index em etapas da etapa atual cujo conteúdo é exibido. `_etapaAtual`
 - [ ] onStepTapper: O retorno de chamada chamado quando uma etapa é tocada, com seu índice passado como argumento.
 - [ ] onStepContinue: O retorno de chamada chamado quando o botão 'continuar' é tocado.
 - [ ] onStepCancel: O retorno de chamada chamado quando o botão 'cancelar' é tocado.
 - [ ] steps: Os steps são passos do stepper cujos títulos, legendas, ícones sempre são mostrados.



