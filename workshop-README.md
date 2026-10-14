# تسجيل ورشة اللغة الإنجليزية — NextStep

- `register.html` — صفحة التسجيل (انشر رابطها الآن). يُغلق التسجيل تلقائياً الخميس 15/10/2026 الساعة 11:30 صباحاً بتوقيت غزة.
- `attendance.html` — لوحة الحضور (بكلمة مرور الأدمن): قائمة المسجّلين، تعليم الحاضرين، وتصدير Excel/CSV.
- `workshop.sql` — الجدول والصلاحيات.

## الإعداد (5 دقائق)
1. **Supabase ← SQL Editor:** الصق `workshop.sql` ← Run.
2. **المفتاح العام:** من Project Settings ← API Keys انسخ الـ Publishable/anon key والصقه مكان `PASTE_PUBLISHABLE_KEY_HERE` في أعلى سكربت `register.html` و`attendance.html`. (لا تضع المفتاح السري.)
3. **الأدمن:** إن كنت أنشأت مستخدم الأدمن (`nextstepai12@gmail.com`) لمشروع السفراء فهو يعمل هنا كما هو. وإلا: Authentication ← Users ← Add user بهذا البريد وكلمة مرور وAuto Confirm.
4. **النشر:** ارفع الملفين على Netlify/Vercel/GitHub Pages (أسرعها: Netlify Drop، اسحب المجلد). انشر رابط `register.html` فقط، واحتفظ برابط `attendance.html` لنفسك.

## ملاحظات
- رابط اللقاء: أرسله للمسجّلين من القائمة (أو عدّل نص صفحة النجاح في `register.html` ليعرض الرابط مباشرة).
- بعد الورشة: علّم الحاضرين ثم «تصدير الحاضرين (للشهادات)» وانقل الأسماء بالإنجليزية إلى مولّد الشهادات.
- الأرقام تعتمد على توقيت غزة (UTC+3). لتغيير وقت الإغلاق عدّل `CLOSE_AT` في `register.html` والتاريخ داخل سياسة `register for workshop` في `workshop.sql`.
