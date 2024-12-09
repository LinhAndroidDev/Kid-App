import 'package:flutter/material.dart';

import '../gen/assets.dart';
import '../gen/colors.dart';
import '../model/question.dart';
import '../model/quiz.dart';

final listQuestion2 = [
  Question(
      question: 'Chọn đáp án đúng:',
      image: 'https://i.ytimg.com/vi/mQxjJpr8Gvg/maxresdefault.jpg',
      options: ['Bắc Ninh', 'Hoà Bình', 'Sóc Trăng', 'An Giang'],
      answerIndex: 2),
  Question(
      question: 'Ao gì không có bờ, không có nước',
      image: '',
      options: ['Ao ước', 'Ao hồ', 'Ao làng'],
      answerIndex: 0),
  Question(
      question: 'Chọn đáp án đúng:',
      image: 'https://taimienphi.vn/tmp/cf/aut/nhung-cau-do-vui-meo-1.jpg',
      options: ['Lưng', 'Chân', 'Gậy'],
      answerIndex: 1),
  Question(
      question: 'Chọn đáp án đúng:',
      image: 'https://media-cdn-v2.laodong.vn/Storage/NewsPortal/2020/9/22/838251/Cau-Do-Vui-1.jpg',
      options: ['Điều ước', 'Đi học', 'Trưởng thành', 'Ngày Mai'],
      answerIndex: 3),
  Question(
      question: 'Đoạn thẳng AB là hình:',
      image: '',
      options: ['Không có trục đối xứng', 'Có một trục đối xứng', 'Có hai trục đối xứng', 'Có vô số trục đối xứng'],
      answerIndex: 2),
  Question(
      question: 'Chọn đáp án đúng:',
      image: 'https://i.ytimg.com/vi/DDU_gtuLhy4/maxresdefault.jpg',
      options: ['Rùa', 'Cá Voi', 'Cá Mập'],
      answerIndex: 1),
];

final listQuestion3 = [
  Question(
      question: 'Có bao nhiêu giá trị nguyên của 𝑚 để hàm số 𝑦=(𝑚2−1)𝑥3+(𝑚−1)𝑚𝑥2−𝑥+4 nghịch biến trên ℝ?',
      image: '',
      options: ['2', '1', '3', '4'],
      answerIndex: 1),
  Question(
      question: 'Trong những dãy oxit sau, dãy gồm những chất tác dụng được với nước để tạo ra dung dịch kiềm là:',
      image: '',
      options: ['CuO, CaO, Na2O, K2O', 'CaO, Na2O, K2O, BaO', 'CuO, Na2O, BaO, Fe2O3', 'PbO, ZnO, MgO, Fe2O3'],
      answerIndex: 1),
  Question(
      question: 'Oxit nào sau đây phản ứng với nước ở điều kiện thường?',
      image: '',
      options: ['Al2O3', 'CuO', 'Na2O', 'MgO'],
      answerIndex: 2),
  Question(
      question: 'Hỏi hàm số 𝑦=(3𝑥−1)/(𝑥+5) đồng biến trên các khoảng nào?',
      image: '',
      options: ['(−∞;+∞)', '(−∞;−5)  và (−5;∞)', '(−∞;−5)', '(−5;∞)'],
      answerIndex: 1),
  Question(
      question: 'Khí carbon monoxide (CO) có lẫn tạp chất là khí carbon dioxide (CO2) và sulfur dioxide (SO2). Dùng dung dịch nào sau đây để tách được những tạp chất ra khỏi CO?',
      image: '',
      options: ['Dung dịch HCl', 'Dung dịch Ca(OH)2', 'Dung dịch H2SO4', 'Dung dịch NaCl'],
      answerIndex: 1),
  Question(
      question: 'Cho 15,3 gam oxit của kim loại hóa trị II vào nước thu được 200 gam dung dịch bazơ với nồng độ 8,55%. Công thức của oxit trên là',
      image: '',
      options: ['Na2O', 'CaO', 'BaO', 'K2O'],
      answerIndex: 2),

  Question(
      question: 'Thanh quản là một bộ phận của',
      image: '',
      options: ['hệ hô hấp.', 'hệ tiêu hóa.', 'hệ bài tiết.', 'hệ sinh dục.'],
      answerIndex: 0),
  Question(
      question: 'Loại xương nào dưới đây không tham gia cấu tạo nên lồng ngực?',
      image: '',
      options: ['Xương cột sống', 'Xương đòn', 'Xương ức', 'Xương sườn'],
      answerIndex: 1),
  Question(
      question: 'Hoạt động đảo trộn thức ăn được thực hiện bởi các cơ quan',
      image: '',
      options: ['Răng, lưỡi, cơ má.', 'Răng và lưỡi', 'Răng, lưỡi, cơ môi, cơ má', 'Răng, lưỡi, cơ môi.'],
      answerIndex: 2),
  Question(
      question: 'Vận tốc của vật chuyển động thẳng có giá trị âm hay dương phụ thuộc vào:',
      image: '',
      options: ['A. Chiều chuyển động.', 'B. Chiều dương được chọn.', 'C. Chuyển động là nhanh hay chậm.', 'D. Câu A và B.'],
      answerIndex: 3),
];

final listSuggestQuiz = <Quiz>[
  Quiz(
    topic: 'Sport Quiz',
    suggestImage: Assets.images.sportQuiz
        .image(width: 220, height: 170, fit: BoxFit.cover),
    numberQuestion: 20,
    colorProgress: Colors.purpleAccent,
    percentComplete: 0.7,
  ),
  Quiz(
      topic: 'Science Quiz',
      suggestImage: Assets.images.scienceQuiz
          .image(width: 220, height: 170, fit: BoxFit.cover),
      numberQuestion: 20,
      colorProgress: Colors.orange,
      percentComplete: 0.5),
  Quiz(
      topic: 'Science Quiz',
      suggestImage: Assets.images.scienceQuiz
          .image(width: 220, height: 170, fit: BoxFit.cover),
      numberQuestion: 20,
      colorProgress: Colors.orange,
      percentComplete: 0.5),
  Quiz(
      topic: 'Science Quiz',
      suggestImage: Assets.images.scienceQuiz
          .image(width: 220, height: 170, fit: BoxFit.cover),
      numberQuestion: 20,
      colorProgress: Colors.orange,
      percentComplete: 0.5),
  Quiz(
      topic: 'Science Quiz',
      suggestImage: Assets.images.scienceQuiz
          .image(width: 220, height: 170, fit: BoxFit.cover),
      numberQuestion: 20,
      colorProgress: Colors.orange,
      percentComplete: 0.5),
  Quiz(
      topic: 'Science Quiz',
      suggestImage: Assets.images.scienceQuiz
          .image(width: 220, height: 170, fit: BoxFit.cover),
      numberQuestion: 20,
      colorProgress: Colors.orange,
      percentComplete: 0.5),
  Quiz(
      topic: 'Science Quiz',
      suggestImage: Assets.images.scienceQuiz
          .image(width: 220, height: 170, fit: BoxFit.cover),
      numberQuestion: 20,
      colorProgress: Colors.orange,
      percentComplete: 0.5),
];

final unFinishQuiz = <Quiz>[
  Quiz(
      topic: 'Mathematics Quiz',
      suggestImage: Assets.images.unFinish1.image(width: 70, height: 70),
      numberQuestion: 20,
      colorProgress: ColorName.purple,
      percentComplete: 0.6,
      time: 20,
      question: listQuestion2),
  Quiz(
      topic: 'Science Quiz',
      suggestImage: Assets.images.unFinish2.image(width: 70, height: 70),
      numberQuestion: 30,
      colorProgress: ColorName.blue,
      percentComplete: 0.4,
      time: 60,
      question: listQuestion2),
  Quiz(
      topic: 'Naming Animals Quiz',
      suggestImage: Assets.images.unFinish3.image(width: 70, height: 70),
      numberQuestion: 100,
      colorProgress: ColorName.green,
      percentComplete: 1,
      time: 300,
      question: listQuestion3),
  Quiz(
      topic: 'Other Quiz',
      suggestImage: Assets.images.unFinish4.image(width: 70, height: 70),
      numberQuestion: 50,
      colorProgress: ColorName.red,
      percentComplete: 0.4,
      time: 120,
      question: listQuestion3)
];