import 'package:clan_app/models/question_model.dart';
import 'package:clan_app/modules/terms_and_privacy_screen/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TermsAndPrivacyCubit extends Cubit<TermsAndPrivacyStates> {
  TermsAndPrivacyCubit() : super(TermsAndPrivacyInitialState());
  static TermsAndPrivacyCubit get(context) => BlocProvider.of(context);

  List<QuestionModel> questions = [
    QuestionModel(
      title: "المقدمة:",
      body:
          "باستخدام تطبيق كلان، فإنك توافق على الالتزام بشروط وأحكام الاستخدام التالية والالتزام بها، والتي تحكم علاقة تطبيقات معك فيما يتعلق بهذا التطبيق واستخدامك له.\nالغرض من هذه الشروط والأحكام هو تحديد الملكية والمسؤوليات بين المستهلك (العميل) وشركة تكنولوجيا المعلومات المتقدمة ذ.م.م (مزود الخدمة/تطبيق نينجا) فيما يتعلق باستخدام التطبيق وسياسته، وذلك وفقًا لما يلي:",
    ),
    QuestionModel(
      title: "1. تعاريف:",
      body:
          "يكون للمصطلحات والعبارات التالية المعاني المخصصة لها في هذه المقالة:\n\nمقدم الخدمة:\nشركة التقنية المتقدمة لتقنية المعلومات هي شركة ذات مسؤولية محدودة، وهي شركة مسجلة في المملكة العربية السعودية تحت سجل تجاري رقم: (2052101911) ويشار إليها في هذه الشروط والأحكام بمقدم الخدمة (تطبيق نينجا).\n\nالعملاء:\nكل من يرغب في الاستفادة من المنتجات والخدمات التي يقدمها مزود الخدمة.\n\nخدمة:\nالخدمة تعني تقديم خدمات تطبيق كلان من خلال التطبيق وتسليمها للعميل.\n\nتوصيل:\nهو تسليم بضائع العميل التي يطلبها مزود الخدمة.\n\nالتاجر/التجار:\nهو مزود السلعة للعميل عبر تطبيق كلان.\n\nطلب:\nتطبيق كلان.\n\nالمنتجات / البضائع:\nالمنتجات أو البضائع المعروضة من خلال التطبيق والمقدمة من خلاله.",
    ),
    QuestionModel(
      title: "2. نظرة عامة:",
      body:
          "تطبيق كلان هو نظام سحابي يعمل بشكل رئيسي على عرض المنتجات أو البضائع المتنوعة التي يقدمها التجار من خلال التطبيق، بحيث يقوم العميل بطلب هذه المنتجات أو البضائع من خلال التطبيق ويتم تسليمها له عن طريق فريق التطبيق الذي يملكه و تتم إدارتها من قبل مزود الخدمة وفقًا لسياسة إدارة مزود الخدمة. وتخضع لهذه الشروط والأحكام، والتي يجب تفسيرها وفقًا لقوانين المملكة العربية السعودية.",
    ),
    QuestionModel(
      title: "3. بيانات التسجيل وأمن الحساب:",
      body:
          "بالتسجيل في خدمات التطبيق، يوافق العميل على:\n\n- صحة ودقة وشمولية البيانات المقدمة والاحتفاظ بها بالشكل المطلوب وبالصيغة المتعارف عليها للقيام بذلك.\n\n- المحافظة على سرية واستخدام اسم المستخدم وكلمة المرور الخاصة به.\n\n- قبول جميع المخاطر الناجمة عن الوصول غير المصرح به إلى بيانات التسجيل وأي معلومات أو بيانات أخرى يقدمها العميل لتطبيق نينجا، بما في ذلك على سبيل المثال لا الحصر: الوصول إلى التطبيق من خلال طرف ثالث، الوصول إلى أجهزة الكمبيوتر أو الحسابات أو الشبكات بطريقة غير قانونية أو بدون تصريح، القرصنة أو محاولة انتهاك الإجراءات الأمنية، وعمليات فحص المنافذ، وعمليات فحص التسلل، والأنشطة الأخرى المصممة للمساعدة في القرصنة أو الأنشطة غير القانونية المماثلة.\n\n- يقر العميل بأنه المسؤول الوحيد عن الحفاظ على سرية كلمة المرور وأي بيانات حساب أخرى يقوم بإنشائها من أجل استخدام أو الوصول إلى خدمات تطبيق نينجا، ويعتبر نينجا معفى من المسؤولية عن أي خسارة قد تلحق بالعميل كما نتيجة استخدام أي طرف ثالث لكلمة المرور الخاصة به، سواء بعلمه أو بدون علمه، يعتبر العميل مسؤولاً أمام النينجا عن أي خسائر يتكبدها النينجا أو أي من ممثلي النينجا نتيجة سوء استخدام العميل لحسابه الشخصي أو كلمة المرور الخاصة به، ويتحمل العميل يلتزم بإبلاغ نينجا فوراً عن أي استخدام غير مصرح به لحسابه أو اسم المستخدم أو كلمة المرور الخاصة به، مع مراعاة أن عملية الدخول إلى الحساب يجب أن تتم من قبل شخص واحد فقط (العميل)، ولا يتحمل نينجا أي مسؤولية عن ذلك تسجيل الدخول من قبل عدة أشخاص.",
    ),
    QuestionModel(
      title: "4. كيف يستخدم التطبيق بياناتك الشخصية:",
      body:
          "لا يقوم التطبيق بجمع أي بيانات شخصية عن العميل إلا عندما يستخدم العميل خدمة التطبيق والخدمات التي يقدمها، وتشمل هذه البيانات الشخصية: اسم العميل، البريد الإلكتروني، رقم الهاتف المحمول، والعنوان الذي يحدده من خلال التطبيق الغرض من التسليم.\n\nالغرض من جمع البيانات الشخصية للعميل هو للأسباب التالية:\n\n- لغايات التواصل مع العميل بخصوص تجربته مع التطبيق.\n\n- لغرض تسجيل العميل في التطبيق والتحقق من حسابه وربطه برقم الهاتف والبريد الإلكتروني.\n\n- لغايات إرسال وإبلاغ العميل بالعروض الترويجية التي يقدمها التطبيق من وقت لآخر.\n\n- لأغراض قياس الوقت المستغرق في عملية التسليم.\n\n- لغرض تطوير التطبيق بما يتناسب مع تجربة العميل واستخدامه للتطبيق.\n\nيلتزم تطبيق كلان بالحفاظ على خصوصية البيانات الشخصية للعميل، ويحتاج التطبيق إلى جمع هذه البيانات لأغراض إحصائية داخل التطبيق من أجل تحسين الخدمة، مثل عدد المستخدمين النشطين وعناوينهم المختارة. يلتزم تطبيق نينجا بعدم مشاركة هذه البيانات أو الكشف عنها أو مشاركتها مع أي طرف ثالث إلا للأغراض المحددة في البند السادس من هذه الشروط والأحكام.",
    ),
  ];

  List<String> catigoriesColumn1 = [
    "العروض الأسبوعية",
    "العودة للمدارس",
    "برد صيفك",
    "قهوة",
    "الخضار والفواكة",
    "الخبز والمخبوزات"
  ];
  List<String> catigoriesColumn2 = [
    "الأطعمة المجمدة",
    "الرز والمكرونة والحبوب",
    "مستلزمات المطبخ",
    "المعلبات",
    "البهارات والتوابل",
    "صلصات الطبخ"
  ];
  List<String> catigoriesColumn3 = [
    "الرئيسية",
    "حول",
    "الأسئلة الشائعة",
    "سياية الخصوصية",
    "حذف الحساب",
    "وظائف"
  ];
}
