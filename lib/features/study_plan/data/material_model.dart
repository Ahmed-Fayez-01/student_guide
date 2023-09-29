import 'package:student_guide/core/utils/assets/assets.dart';

class MaterialModel{
  String? code;
  String materialName;
  String credit;

  MaterialModel({required this.code,required this.materialName,required this.credit});
  static List<MaterialModel> firstYearFirstSemester=[
    MaterialModel(code: 'HU111', materialName: 'General English Language', credit: '2'),
    MaterialModel(code: 'HU141', materialName: 'Computer Law', credit: '2'),
    MaterialModel(code: 'MA101', materialName: 'Mathematics I', credit: '3'),
    MaterialModel(code: 'PH101', materialName: 'Physics I', credit: '3'),
    MaterialModel(code: 'EE101', materialName: 'Electronics', credit: '3'),
    MaterialModel(code: 'CS101', materialName: 'Introduction to Computer Science', credit: '3'),
    MaterialModel(code: 'HU142', materialName: 'Human rights and anti-corruption', credit: '2'),
  ];
  static List<MaterialModel> firstYearSecondSemester=[
    MaterialModel(code: 'HU134', materialName: 'Technical Writing', credit: '2'),
    MaterialModel(code: 'IS101', materialName: 'Foundations of Information Systems', credit: '3'),
    MaterialModel(code: 'HU131', materialName: 'Business Administration', credit: '2'),
    MaterialModel(code: 'HU132', materialName: 'Interpersonal Communication', credit: '2'),
    MaterialModel(code: 'MA102', materialName: 'Mathematics II', credit: '3'),
    MaterialModel(code: 'EE102', materialName: 'Digital logic and design', credit: '2'),
    MaterialModel(code: 'CS141', materialName: 'Programming Fundamentals', credit: '3'),
  ];

  static List<MaterialModel> secondYearFirstSemester=[
    MaterialModel(code: 'MA201', materialName: 'Mathematics III', credit: '3'),
    MaterialModel(code: 'CS201', materialName: 'Discrete Structures', credit: '3'),
    MaterialModel(code: 'CS241', materialName: 'Object-Oriented Programming', credit: '3'),
    MaterialModel(code: 'IS212', materialName: 'Databases', credit: '3'),
    MaterialModel(code: 'IT251', materialName: 'Data Communications', credit: '3'),
  ];
  static List<MaterialModel> secondYearSecondSemester=[
    MaterialModel(code: 'CS251', materialName: 'Computer Graphics Fundamental', credit: '3'),
    MaterialModel(code: 'MA203', materialName: 'Numerical Analysis', credit: '2'),
    MaterialModel(code: 'MA202', materialName: 'Probability and Statistics', credit: '2'),
    MaterialModel(code: 'CS211', materialName: 'Data Structures and Algorithms', credit: '3'),
    MaterialModel(code: 'CS221', materialName: 'Computer Architecture', credit: '3'),
    MaterialModel(code: 'CS261', materialName: 'Artificial Intelligence', credit: '3'),
  ];

  static List<MaterialModel> thirdYearFirstSemester=[
    MaterialModel(code: 'CS311', materialName: 'Algorithm Design and Analysis', credit: '3'),
    MaterialModel(code: 'CS322', materialName: 'Operating Systems', credit: '3'),
    MaterialModel(code: 'CS331', materialName: 'Neural Networks', credit: '3'),
    MaterialModel(code: 'CS342', materialName: 'Automata and Language Theory', credit: '3'),
    MaterialModel(code: 'MM301', materialName: 'Introduction to Multimedia Technology', credit: '3'),
    MaterialModel(code: 'CS391', materialName: 'Software Engineering', credit: '3'),
  ];
  static List<MaterialModel> thirdYearSecondSemester=[
    MaterialModel(code: 'CS352', materialName: 'Image Processing', credit: '3'),
    MaterialModel(code: 'CS323', materialName: 'Embedded & Mobility Systems Programming', credit: '3'),
    MaterialModel(code: 'CS332', materialName: 'Parallel Computation', credit: '3'),
    MaterialModel(code: 'IT351', materialName: 'Computer Networks', credit: '3'),
    MaterialModel(code: 'IT312', materialName: 'Digital Signal Processing', credit: '3'),
    MaterialModel(code: 'TR301', materialName: 'Training', credit: '3'),
  ];

  static List<MaterialModel> forthYearFirstSemester=[
    MaterialModel(code: 'CS472', materialName: 'Cryptography', credit: '3'),
    MaterialModel(code: 'IS414', materialName: 'Data Mining', credit: '3'),
    MaterialModel(code: 'CS433', materialName: 'Genetic Algorithms', credit: '3'),
    MaterialModel(code: 'CS452', materialName: 'Computer Vision', credit: '3'),
    MaterialModel(code: 'CS462', materialName: 'Machine Learning', credit: '3'),
    MaterialModel(code: 'PRO401', materialName: 'Capstone Project 1', credit: '3'),
  ];
  static List<MaterialModel> forthYearSecondSemester=[
    MaterialModel(code: 'CS432', materialName: 'Cloud Computing', credit: '3'),
    MaterialModel(code: 'CS441', materialName: 'Compiler Construction', credit: '3'),
    MaterialModel(code: 'CS461', materialName: 'Intelligent Systems', credit: '3'),
    MaterialModel(code: 'CS463', materialName: 'Pattern Recognition', credit: '3'),
    MaterialModel(code: 'CS434', materialName: 'Soft-Computing', credit: '3'),
    MaterialModel(code: 'PRO402', materialName: 'Capstone Project 2', credit: '3'),
  ];


}