import 'dart:convert';
import 'dart:io';
import 'dart:math';

void main() {
  print('가위, 바위, 보 중 하나를 입력하세요');
  final String user = stdin.readLineSync(encoding: utf8) ?? 'error';


  const selectList = ['가위', '바위', '보'];
  final cpu = selectList[Random().nextInt(3)];


  final result = getResult(user, cpu);
  if(selectList.contains(user)){
    print('👶당신은 $user를 내셨습니다.');
    print('🖥️컴퓨터는 $cpu를 내었습니다.');
    print(result);
  } else {
    print('⚠️error⚠️');
    print('가위, 바위, 보 중 하나를 내셔야 합니다. 다시 시도해 주세요.');
  }

}

String getResult(String user, String cpu) {
  const cpuWin = '결과!!!! --> 🖥 🏆컴퓨터가 승리';
  const userWin = '결과!!!! --> 👶 🏆당신이 승리';
  const draw = '비김';
  String result = draw;

  switch (user) {
    case '가위':
      if (cpu == '바위') {
        result = cpuWin;
      }
      if (cpu == '보') {
        result = userWin;
      }
    case '바위':
      if (cpu == '보') {
        result = cpuWin;
      }
      if (cpu == '가위') {
        result = userWin;
      }
    case '보':
      if (cpu == '가위') {
        result = cpuWin;
      }
      if (cpu == '바위') {
        result = userWin;
      }
    default:
      result = '올바른 값을 입력 해 주세요';
  }
  return result;
}
