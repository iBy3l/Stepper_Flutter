import 'package:flutter/material.dart';

class StepperDemo extends StatefulWidget {
  StepperDemo({Key? key}) : super(key: key);

  @override
  State<StepperDemo> createState() => _StepperDemoState();
}

class _StepperDemoState extends State<StepperDemo> {
  // ignore: unused_field
  int _etapaAtual = 0;
  StepperType stepperType = StepperType.vertical;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        automaticallyImplyLeading: false,
        title: Text(
          'Stepper Demo',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Stepper(
                type: stepperType,
                physics: ScrollPhysics(),
                currentStep: _etapaAtual,
                onStepTapped: (step) => tapped(step),
                onStepContinue: continued,
                onStepCancel: cancel,
                steps: <Step>[
                  Step(
                    title: new Text('Sobre'),
                    content: Column(
                      children: [
                        TextFormField(
                          decoration:
                              InputDecoration(labelText: 'Nome Completo'),
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Idade'),
                        ),
                      ],
                    ),
                    isActive: _etapaAtual >= 0,
                    state: _etapaAtual >= 0
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                  Step(
                      title: new Text('Dados'),
                      content: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(labelText: 'Endereço'),
                          ),
                          TextFormField(
                            decoration: InputDecoration(labelText: 'Telefone'),
                          ),
                        ],
                      ),
                      isActive: _etapaAtual >= 0,
                      state: _etapaAtual >= 1
                          ? StepState.complete
                          : StepState.disabled),
                  Step(
                      title: new Text('Email / Senha'),
                      content: Column(
                        children: [
                          TextFormField(
                            decoration:
                                InputDecoration(labelText: 'Endereço de Email'),
                          ),
                          TextFormField(
                            decoration: InputDecoration(labelText: 'Senha'),
                          ),
                        ],
                      ),
                      isActive: _etapaAtual >= 0,
                      state: _etapaAtual >= 2
                          ? StepState.complete
                          : StepState.disabled),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black87,
        child: Icon(
          Icons.list,
          color: Colors.white,
        ),
        onPressed: alternarEtapasTipo,
      ),
    );
  }

  alternarEtapasTipo() {
    setState(() => stepperType == StepperType.vertical
        ? stepperType = StepperType.horizontal
        : stepperType = StepperType.vertical);
  }

  tapped(int step) {
    setState(() => _etapaAtual = step);
  }

  continued() {
    _etapaAtual < 2 ? setState(() => _etapaAtual += 1) : null;
  }

  cancel() {
    _etapaAtual > 0 ? setState(() => _etapaAtual -= 1) : null;
  }
}
