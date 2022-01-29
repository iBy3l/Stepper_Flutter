![APRESENTAÇÃO](https://github.com/iBy3l/Stepper_Flutter/blob/main/assets/ABERTURA.jpg)
##  Índice::
- [Stepper](#stapper)
- [Implementar](#Implementara)
- [Explicação](#explicacao)
- [Codigo](#codigo)

## Stepper
Stepper é widget que mostra o processo de etapas, esse widget é muito valioso ser ultilizados em formularios onde 
pode mostrar etapas concluidas em livre acesso do usuario sem deixar o app puluido, mostrando o formulario completo 
dando a função dele abrir e fechar a etapa sem sair do pagina.


!<img align="left" height="400 px" width="200px" alt="Warpnet" src="https://github.com/iBy3l/Stepper_Flutter/blob/main/assets/stepper.gif"/>

















No Video mostra como é ultilizado esse widget e com um botão flutuante que quando é tocado ele mostra as etapas.
No video é ultilizado as seguintes ferramentas do Stepper:












- type: stepperType,
- physics: ScrollPhysics(),
- currentStep: _etapaAtual,
- onStepTapper: (step) => tapper(step),
- onStepContinue: continued,
- onStepCancel: cancel,
- steps: <Step>[...]
  


