<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>بوابة نتائج جامعة الأزهر الإلكترونية</title>
    <style>
        body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; text-align: center; background-color: #f4f7f6; margin: 0; padding: 20px; color: #333; }
        .card { background: white; padding: 25px; border-radius: 12px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); max-width: 500px; margin: 20px auto; border-top: 8px solid #0f5132; }
        .logo { width: 120px; height: auto; margin-bottom: 15px; display: block; margin-left: auto; margin-right: auto; }
        .header { background-color: #0f5132; color: white; padding: 15px; border-radius: 8px; margin-bottom: 20px; }
        .header h2 { margin: 0; font-size: 20px; }
        .header p { margin: 5px 0 0 0; font-size: 14px; }
        input { width: 85%; padding: 12px; margin: 10px 0; border: 1px solid #ccc; border-radius: 6px; text-align: center; font-size: 16px; }
        button { background-color: #0f5132; color: white; border: none; padding: 12px 30px; font-size: 16px; border-radius: 6px; cursor: pointer; width: 90%; font-weight: bold; transition: 0.3s; }
        button:hover { background-color: #146c43; }
        .error { color: red; font-weight: bold; margin-top: 10px; display: none; }
        .result-box { display: none; text-align: right; }
        .student-info { background: #f8f9fa; padding: 15px; border-radius: 6px; margin-bottom: 15px; border-right: 4px solid #0f5132; }
        .student-info p { margin: 6px 0; font-size: 15px; }
        table { width: 100%; border-collapse: collapse; margin-top: 15px; background: white; }
        th, td { border: 1px solid #dee2e6; padding: 10px; text-align: center; font-size: 14px; }
        th { background-color: #f1f3f5; font-weight: bold; }
        .gpa { text-align: center; font-weight: bold; color: #0f5132; font-size: 18px; margin-top: 20px; padding: 10px; background: #e8f5e9; border-radius: 6px; }
    </style>
</head>
<body>

    <div class="card" id="searchBox">
        <img class="logo" src="https://upload.wikimedia.org/wikipedia/commons/e/e3/Al-Azhar_University_Logo.png" alt="لوجو جامعة الأزهر">
        
        <div class="header">
            <h2>بوابة نتائج الامتحانات الإلكترونية</h2>
            <p>جامعة الأزهر - كلية الشريعة والقانون بالقاهرة</p>
        </div>
        
        <p style="font-size: 14px; color: #666;">الرجاء إدخال البيانات التالية للاستعلام عن النتيجة</p>
        
        <input type="number" id="seatInput" placeholder="أدخل رقم الجلوس">
        <input type="number" id="idInput" placeholder="أدخل الرقم القومي (14 رقم)">
        
        <button onclick="checkResult()">عرض النتيجة</button>
        <p class="error" id="errorMsg">عذراً، البيانات المدخلة غير صحيحة أو لم تعتمد بعد!</p>
    </div>

    <div class="card" id="resultBox" style="display: none;">
        <img class="logo" src="https://upload.wikimedia.org/wikipedia/commons/e/e3/Al-Azhar_University_Logo.png" alt="لوجو جامعة الأزهر">
        
        <div class="header">
            <h2>بوابة نتائج الامتحانات الإلكترونية</h2>
            <p>جامعة الأزهر - كلية الشريعة والقانون بالقاهرة</p>
        </div>

        <div class="result-box" id="resultContent" style="display: block;">
            <div class="student-info">
                <p><strong>الاسم:</strong> عبد الرحمن مصطفى محمود حنفي السيوفي</p>
                <p><strong>الشعبة:</strong> الشريعة الإسلامية (الفرقة الأولى)</p>
                <p><strong>حالة الطالب:</strong> ناجــــــــح 🎉</p>
            </div>

            <table>
                <thead>
                    <tr>
                        <th>المادة</th>
                        <th>الدرجة</th>
                        <th>التقدير</th>
                    </tr>
                </thead>
                <tbody>
                    <tr><td>فقه</td><td>82</td><td>جيد جداً</td></tr>
                    <tr><td>أصول الفقه</td><td>78</td><td>جيد جداً</td></tr>
                    <tr><td>تاريخ التشريع</td><td>74</td><td>جيد</td></tr>
                    <tr><td>تفسير آيات الأحكام</td><td>81</td><td>جيد جداً</td></tr>
                    <tr><td>علوم الحديث</td><td>76</td><td>جيد جداً</td></tr>
                    <tr><td>توحيد</td><td>85</td><td>جيد جداً</td></tr>
                    <tr><td>قضايا فقهية معاصرة</td><td>79</td><td>جيد جداً</td></tr>
                    <tr><td>فقه مقارن</td><td>83</td><td>جيد جداً</td></tr>
                    <tr><td>اللغة العربية (نحو وصرف)</td><td>72</td><td>جيد</td></tr>
                    <tr><td>القرآن الكريم</td><td>38</td><td>جيد جداً</td></tr>
                    <tr><td>اللغة الإنجليزية</td><td>34</td><td>جيد</td></tr>
                    <tr><td>قاعة بحث فقه</td><td>ناجح</td><td>مستوفى</td></tr>
                    <tr><td>قاعة بحث أصول فقه</td><td>ناجح</td><td>مستوفى</td></tr>
                </tbody>
            </table>

            <div class="gpa">🌟 التقدير العام: جِيد جِداً مع مرتبة الشرف 🌟</div>
        </div>
    </div>

    <script>
        // --- تعديل البيانات السرية هنا ---
        var mySeatNumber = "52157"; 
        var myNationalID = "30512345678901"; // شيل الرقم ده وحط رقمك القومي الحقيقي هنا

        function checkResult() {
            var seatInput = document.getElementById("seatInput").value;
            var idInput = document.getElementById("idInput").value;
            var errorMsg = document.getElementById("errorMsg");
            var searchBox = document.getElementById("searchBox");
            var resultBox = document.getElementById("resultBox");

            // التحقق من تطابق رقم الجلوس والرقم القومي
            if (seatInput === mySeatNumber && idInput === myNationalID) {
                errorMsg.style.display = "none";
                searchBox.style.display = "none";
                resultBox.style.display = "block";
            } else {
                errorMsg.style.display = "block";
            }
        }
    </script>
</body>
</html>
