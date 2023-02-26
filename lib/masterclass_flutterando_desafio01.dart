import 'dart:io';

void imc() {
  print('Digite seu nome.');
  final String? name = stdin.readLineSync();
  print(name.toString() + "\n");

  print('Digite seu peso.');
  final String? pesoString = stdin.readLineSync();
  print(pesoString.toString() + "\n");

  if (pesoString == null || pesoString == "") {
    print('Houve erro na digitação da peso. Digite seu peso novamente.');
    String? pesoString = stdin.readLineSync();
    print(pesoString.toString() + "\n");
  }

  print('Digite sua altura.');
  String? alturaString = stdin.readLineSync();
  print(alturaString.toString() + "\n");
  if (alturaString == null || alturaString == "") {
    print('Houve erro na digitação da altura. Digite sua altura novamente.');
    String? alturaString = stdin.readLineSync();
    print(alturaString.toString() + "\n");
  }

  double peso = double.parse(pesoString!.replaceAll(",", "."));
  double altura = double.parse(alturaString!.replaceAll(",", "."));

  double resultado = peso / (altura * altura);
  print(resultado.toString());

  print('\n\n');
  print('Nome: $name');

  if (resultado < 16.9) {
    print('Você está muito abaixo do peso');
  } else if (resultado < 18.4) {
    print('Você está abaixo do peso');
  } else if (resultado < 24.9) {
    print('Você está peso normal');
  } else if (resultado < 29.9) {
    print('Você está acima do peso');
  } else if (resultado < 34.9) {
    print('Você está com obesidade grau I');
  } else if (resultado < 40.0) {
    print('Você está com obesidade grau II');
  } else if (resultado < 80.0) {
    print('Você está com obesidade grau III');
  }
}

void fibonacci() {
  List<int> n = [0];

  for (int i = 0; i < 34; i++) {
    if (i < 1) {
      n.add(n[i] + 1);
    }
    if (i > 1) {
      n.add(n[i - 1] + n[i - 2]);
    }
    print('Sequencia Fibonacci $i: ${n[i]}');
  }
}
