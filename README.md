# 🚗 تطبيق وسيط السيارات - Car Mediator Mobile App

تطبيق فلاتر (Flutter Mobile App) لمنصة وسيط السيارات، متاح لعملاء ومزودي الخدمة (التجار) للبحث، تقديم الطلبات، التواصل، وتحديد مناطق وقنوات التغطية في المملكة العربية السعودية.

---

## 🔗 روابط مهمة (Important Links)

- **رابط الريبو (GitHub Repository)**: [https://github.com/Ahmedsayed732004444/car-mobile.git](https://github.com/Ahmedsayed732004444/car-mobile.git)
- **السيرفر المباشر (Production Backend API)**: `https://car-production-93a1.up.railway.app/`

---

## 🛠️ المتطلبات الأساسية (Prerequisites)

قبل البدء، تأكد من تثبيت الأدوات التالية على جهازك:

1. **Flutter SDK** (إصدار 3.0.0 أو أحدث).
2. **Dart SDK** (يأتي مدمجاً مع Flutter).
3. **محرر أكواد**: [VS Code](https://code.visualstudio.com/) أو [Android Studio](https://developer.android.com/studio).
4. **محاكي أو جهاز حقيقي**: Android Emulator أو جهاز محمول متصل عبر الوصلة (USB Debugging).

---

## 🚀 طريقة التشغيل بالتفصيل (Step-by-Step Running Guide)

### 1️⃣ الخطوة الأولى: تحميل المشروع (Clone Repository)
افتح مجلد المشاريع في الـ Terminal أو PowerShell وقم باستنساخ المشروع:

```bash
git clone https://github.com/Ahmedsayed732004444/car-mobile.git
cd car-mobile
```

---

### 2️⃣ الخطوة الثانية: تثبيت الحزم والمكتبات (Install Dependencies)
قم بتنزيل كافة مكتبات فلاتر المعتمدة للمشروع:

```bash
flutter pub get
```

---

### 3️⃣ الخطوة الثالثة: التأكد من تشغيل المحاكي/الجهاز (Check Active Devices)
لتفقد الأجهزة المتاحة لتشغيل التطبيق عليها:

```bash
flutter devices
```

- **في حال استخدام Android Studio**: قم بفتح الـ Device Manager وتشغيل المحاكي (Virtual Device).
- **في حال استخدام جهاز حقيقي**: قم بتفعيل وضع التنسيق (USB Debugging).

---

### 4️⃣ الخطوة الرابعة: تشغيل التطبيق (Run Application)

#### 🔹 التشغيل العادي (Default Run):
```bash
flutter run
```

#### 🔹 التشغيل على محاكي محدد (Run on Specific Emulator):
إذا كان لديك أكثر من محاكي يعمل في نفس الوقت:
```bash
flutter run -d emulator-5554
```

#### 🔹 التشغيل بوضع الأداء المتقدم (Release Mode):
```bash
flutter run --release
```

---

## ⚡ اختصارات التحديث الفوري أثناء التشغيل (Hot Reload Shortcuts)

أثناء تشغيل التطبيق بالـ Terminal، يمكنك استخدام الاختصارات التالية لتسريع التطوير:

| الاختصار | الوظيفة |
| :--- | :--- |
| **`r`** | **Hot Reload**: تحديث وتطبيق الكود فورياً على الشاشات خلال 1 ثانية دون إغلاق التطبيق. |
| **`R`** | **Hot Restart**: إعادة تشغيل التطبيق وتنظيف الـ State خلال ثانيتين. |
| **`q`** | **Quit**: إغلاق التطبيق وإنهاء جلسة التشغيل. |

---

## 📦 استخراج ملف الـ APK النهائي (Build Release APK)

لإنشاء ملف APK جاهز للتثبيت والتجربة على أجهزة الأندرويد المحمولة:

```bash
flutter build apk --release
```

سيكون الملف الجاهز متوفراً في المسار التالي:
`build/app/outputs/flutter-apk/app-release.apk`

---

## 📁 هيكلية المشروع الأساسية (Project Architecture)

```text
lib/
├── core/                  # المكونات الأساسية (الخدمات، الشبكة API، المزودات Providers، الألوان والتصميم)
├── features/              # الميزات والواجهات المقسمة حسب النوع:
│   ├── shared/            # التسجيل، كود التحقق OTP، الإشعارات، والمحادثات
│   ├── user/              # واجهات العميل (إنشاء الطلب، تحديد المدن، طلباتي)
│   └── vendor/            # واجهات مزود الخدمة (التخصصات، الاستجابة للطلبات، العمولات)
├── models/                # نماذج البيانات (Models & Data Parsing)
└── widgets/               # المكونات والودجت Reusable Components
```

---

✨ **تم إعداد دليل التشغيل بنجاح!**
