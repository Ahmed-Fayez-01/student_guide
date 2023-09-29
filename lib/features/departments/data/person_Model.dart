import 'package:student_guide/core/utils/assets/assets.dart';

class PersonModel{
  String? img;
  String department;
  String specialist;
  String name;

  PersonModel({required this.specialist,required this.department,required this.name, this.img});
  static List<PersonModel> csDoctors=[
    PersonModel(specialist: 'Machine Learning', department: 'علوم حاسب', name: 'ا.م.د احمد النجار',img: AssetData.csHead),
    PersonModel(specialist: 'Machine Learning', department: 'علوم حاسب', name: 'ا.د محمد سيد قايد', img: AssetData.dean),
    PersonModel(specialist: 'Machine Learning', department: 'علوم حاسب', name: 'ا.م.د حمدي عبد السميع', img: AssetData.drHamdy),
    PersonModel(specialist: 'Machine Learning', department: 'علوم حاسب', name: 'ا.م.د كريم احمد ابراهيم',img:AssetData.drKareem),
    PersonModel(specialist: 'Machine Learning', department: 'علوم حاسب', name: 'ا.م.د ابراهيم الدسوقي', img: AssetData.drIbrahem),
    PersonModel(specialist: 'Machine Learning', department: 'علوم حاسب', name: 'د دعاء عبد الله شبل',img: AssetData.drDoaa),
    PersonModel(specialist: 'Machine Learning', department: 'علوم حاسب', name: 'د عبد الرحيم محمد', ),
    PersonModel(specialist: 'Machine Learning', department: 'علوم حاسب', name: 'د حاتم محمد نعمان', img: AssetData.drHatem),
    PersonModel(specialist: 'Machine Learning', department: 'علوم حاسب', name: 'د محمد السيد العربي', ),
    PersonModel(specialist: 'Machine Learning', department: 'علوم حاسب', name: 'د نهي يحيي حسن', img: AssetData.drNoha),
    PersonModel(specialist: 'Machine Learning', department: 'علوم حاسب', name: 'د صافيناز عبد الفتاح', img: AssetData.drSafi),
  ];
  static List<PersonModel> itDoctors=[
    PersonModel(specialist: 'Machine Learning', department: 'تكنولوجيا المعلومات', name: 'ا.م.د فريد علي موسي', img:AssetData.itHead),
    PersonModel(specialist: 'Machine Learning', department: 'تكنولوجيا المعلومات', name: 'ا.م.د محمد مصطفى',img: AssetData.drMMostafa ),
    PersonModel(specialist: 'Machine Learning', department: 'تكنولوجيا المعلومات', name: 'د حسام زوبعه', ),
    PersonModel(specialist: 'Machine Learning', department: 'تكنولوجيا المعلومات', name: 'د.محمد عبد الله محمود', img: AssetData.drMAbdallah),
  ];
  static List<PersonModel> isDoctors=[
    PersonModel(specialist: 'Machine Learning', department: 'نظم المعلومات', name: 'ا.م.د احمد بهاء', img:AssetData.isHead),
    PersonModel(specialist: 'Machine Learning', department: 'نظم المعلومات', name: 'ا.م.د فهد كمال الشريف',img:AssetData.drFahad),
    PersonModel(specialist: 'Machine Learning', department: 'نظم المعلومات', name: 'ا.م.د عصام شعبان', ),
    PersonModel(specialist: 'Machine Learning', department: 'نظم المعلومات', name: 'ا.م.د وائل جمعة', ),
    PersonModel(specialist: 'Medical Artificial Intelligence', department: 'نظم المعلومات', name: 'د احمد مقلد',img: AssetData.drAMekled ),
    PersonModel(specialist: 'Machine Learning', department: 'نظم المعلومات', name: 'د هاجر محمد رضا',img: AssetData.drHager),
    PersonModel(specialist: 'Machine Learning', department: 'نظم المعلومات', name: 'د وليد عيد', ),
    PersonModel(specialist: 'Machine Learning', department: 'نظم المعلومات', name: 'د اميرة محي الدين محمد', img: AssetData.drAmira),
    PersonModel(specialist: 'Machine Learning', department: 'نظم المعلومات', name: 'د عمرو محمد عبد العزيز',img: AssetData.drAmr),
    PersonModel(specialist: 'Machine Learning', department: 'نظم المعلومات', name: 'د مصطفي سيد عبد الحميد',img:AssetData.drMostafaSayed),
  ];
  static List<PersonModel> mmDoctors=[
    PersonModel(specialist: 'Machine Learning', department: 'الوسائط المتعددة', name: 'ا.م.د حسام محمود مفتاح',img:AssetData.drHossam),
    PersonModel(specialist: 'Machine Learning', department: 'الوسائط المتعددة', name: 'ا.م.د عمار ياسر محمد العدل',),
    PersonModel(specialist: 'Machine Learning', department: 'الوسائط المتعددة', name: 'ا.م.د احمد عنتر',img:AssetData.drAnter),
    PersonModel(specialist: 'Machine Learning', department: 'الوسائط المتعددة', name: 'ا.م.د هانى سليمان النشار',img:AssetData.drHany),
    PersonModel(specialist: 'Machine Learning', department: 'الوسائط المتعددة', name: 'د هبه حمدي',img:AssetData.drHeba),
    PersonModel(specialist: 'Machine Learning', department: 'الوسائط المتعددة', name: 'د امل فؤاد عبد الهادي',),
  ];





  static List<PersonModel> csAssistant=[
    PersonModel(specialist: 'Machine Learning', department: 'علوم حاسب', name: 'م.م احمد فؤاد محمد',img: AssetData.foaud),
    PersonModel(specialist: 'Machine Learning', department: 'علوم حاسب', name: 'م.م محمد ايمان محمد',img: AssetData.eman ),
    PersonModel(specialist: 'Machine Learning', department: 'علوم حاسب', name: 'م.م محمد عرفه على', img: AssetData.arafa),
    PersonModel(specialist: 'Machine Learning', department: 'علوم حاسب', name: 'م.م اسامه محمد حفنى', img: AssetData.osama),
    PersonModel(specialist: 'Machine Learning', department: 'علوم حاسب', name: 'م.م بهاء الدين حلمى', img: AssetData.bahaa),
    PersonModel(specialist: 'Machine Learning', department: 'علوم حاسب', name: 'م.م مى علاء على',img: AssetData.mai ),
    PersonModel(specialist: 'Machine Learning', department: 'علوم حاسب', name: 'م.م احمد محمود سلطان', img: AssetData.sultan),
    PersonModel(specialist: 'Machine Learning', department: 'علوم حاسب', name: 'م ايهاب ابراهيم جمعه',img: AssetData.ehab ),
    PersonModel(specialist: 'Machine Learning', department: 'علوم حاسب', name: 'م محمد جمال الدين هاشم', img: AssetData.gamal),
    PersonModel(specialist: 'Machine Learning', department: 'علوم حاسب', name: 'م عبد الصادق خميس',img: AssetData.sadeq),
    PersonModel(specialist: 'Machine Learning', department: 'علوم حاسب', name: 'م هبه محمد فايز', img: AssetData.heba),
    PersonModel(specialist: 'Machine Learning', department: 'علوم حاسب', name: 'م سحر حسن نوح', img: AssetData.sahar),
    PersonModel(specialist: 'Machine Learning', department: 'علوم حاسب', name: 'م هشام فوزى كامل', img: AssetData.hesham),
    PersonModel(specialist: 'Machine Learning', department: 'علوم حاسب', name: 'م عبدالرحمن هاشم', img: AssetData.hashim),
  ];
  static List<PersonModel> itAssistant=[
  PersonModel(specialist: 'Machine Learning', department: 'تكنولوجيا المعلومات', name: 'م.م نهى محمود احمد', img:AssetData.noha),
    PersonModel(specialist: 'Machine Learning', department: 'تكنولوجيا المعلومات', name: 'م.م عيسى صبرى المتولى', img:AssetData.essa),
    PersonModel(specialist: 'Machine Learning', department: 'تكنولوجيا المعلومات', name: 'م.م ضحى مصطفى', img: AssetData.doha),
    PersonModel(specialist: 'Machine Learning', department: 'تكنولوجيا المعلومات', name: 'م.م رحاب حسنى محمد',img: AssetData.rehab),
    PersonModel(specialist: 'Machine Learning', department: 'تكنولوجيا المعلومات', name: 'م أحمد فايز عبدالفتاح',img: AssetData.fayez ),
    PersonModel(specialist: 'Machine Learning', department: 'تكنولوجيا المعلومات', name: 'م كريم ربيع مسعد', img: AssetData.kareem),
    PersonModel(specialist: 'Machine Learning', department: 'تكنولوجيا المعلومات', name: 'م آيه طه عبدالسلام',img: AssetData.aya),
    PersonModel(specialist: 'Machine Learning', department: 'تكنولوجيا المعلومات', name: 'م روان عبدالله دسوقى', ),
    PersonModel(specialist: 'Machine Learning', department: 'تكنولوجيا المعلومات', name: 'م محمود محمد دسوقى', img: AssetData.desouqy),
  ];
  static List<PersonModel> isAssistant=[
    PersonModel(specialist: 'Machine Learning', department: 'نظم المعلومات', name: 'م.م هيثم محمود محمد', img:AssetData.hitham),
    PersonModel(specialist: 'Machine Learning', department: 'نظم المعلومات', name: 'م.م شيماء سيد احمد',img:AssetData.shimaa ),
    PersonModel(specialist: 'Machine Learning', department: 'نظم المعلومات', name: 'م.م مروة أبو الخير',img: AssetData.marwa ),
    PersonModel(specialist: 'Machine Learning', department: 'نظم المعلومات', name: 'م.م ياسمين سمهان',img: AssetData.yasmen ),
    PersonModel(specialist: 'Machine Learning', department: 'نظم المعلومات', name: 'م.م ميرفت رجب بكرى',img: AssetData.mervet ),
    PersonModel(specialist: 'Machine Learning', department: 'نظم المعلومات', name: 'م عبدالرحمن ممدوح', img: AssetData.mamdouh),
    PersonModel(specialist: 'Machine Learning', department: 'نظم المعلومات', name: 'م ابانوب جرجس', img: AssetData.abanoub),
    PersonModel(specialist: 'Machine Learning', department: 'نظم المعلومات', name: 'م اسماء جابر خلف', img: AssetData.gaber),
    PersonModel(specialist: 'Machine Learning', department: 'نظم المعلومات', name: 'م حسام الدين احمد', img: AssetData.hossam),
    PersonModel(specialist: 'Machine Learning', department: 'نظم المعلومات', name: 'م مصطفى سعد جنيدى',img: AssetData.saad ),
    PersonModel(specialist: 'Machine Learning', department: 'نظم المعلومات', name: 'م ميرهان عاطف اسكندر', img: AssetData.merhan),
  ];
  static List<PersonModel> mmAssistant=[
    PersonModel(specialist: 'Machine Learning', department: 'وسائط متعددة', name: 'م اسماء جوده سيد',img: AssetData.goda),
    PersonModel(specialist: 'Machine Learning', department: 'وسائط متعددة', name: 'م تقى راضى معوض',img: AssetData.toqy),
  ];

}