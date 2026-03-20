# 📱 ZPHS Student Bank – Android App Setup Guide
## विद्यार्थी बचत बँक 2024-25

---

## 📦 प्रकल्पात काय आहे

```
ZPHSStudentBank/
├── app/
│   ├── src/main/
│   │   ├── assets/
│   │   │   └── index.html          ← संपूर्ण अॅप (110 विद्यार्थी + 919 व्यवहार)
│   │   ├── java/com/zphs/studentbank/
│   │   │   └── MainActivity.java   ← Android WebView wrapper
│   │   ├── res/
│   │   │   ├── layout/activity_main.xml
│   │   │   ├── values/strings.xml, styles.xml, colors.xml
│   │   │   ├── xml/file_paths.xml
│   │   │   └── mipmap-*/ic_launcher*.png  ← App icons
│   │   └── AndroidManifest.xml
│   └── build.gradle
├── build.gradle
├── settings.gradle
└── gradle.properties
```

---

## 🛠️ Android Studio मध्ये उघडण्याचे Steps

### Step 1 – Android Studio Download करा
👉 https://developer.android.com/studio  
(जर आधीच install असेल तर Step 2 वर जा)

---

### Step 2 – Project Import करा

1. Android Studio उघडा
2. **"Open an Existing Project"** वर click करा
3. **`ZPHSStudentBank`** folder निवडा
4. **"Trust Project"** वर click करा
5. Gradle sync होण्याची वाट पहा (1-2 मिनिटे)

---

### Step 3 – APK Build करा

#### Option A – Debug APK (Testing साठी)
```
Build → Build Bundle(s)/APK(s) → Build APK(s)
```
APK मिळेल: `app/build/outputs/apk/debug/app-debug.apk`

#### Option B – Release APK (Final version)
```
Build → Generate Signed Bundle / APK
→ APK
→ Create new keystore (किंवा existing वापरा)
→ Release निवडा
→ Finish
```

---

### Step 4 – Phone वर Install करा

**USB द्वारे:**
1. Phone मध्ये **Developer Options** → **USB Debugging** ON करा
2. USB ने connect करा
3. Android Studio मध्ये **Run ▶** button दाबा

**APK file transfer:**
1. APK file phone मध्ये copy करा
2. File manager मधून open करा
3. "Allow from this source" enable करा
4. Install करा

---

## 📱 App Features

| Feature | Description |
|---------|-------------|
| 🏠 Dashboard | एकूण शिल्लक, stats, अलीकडील व्यवहार |
| 👥 विद्यार्थी | 110 विद्यार्थी, वर्ग filter, search |
| 💳 व्यवहार | जमा/खर्च नोंदवा, QR code |
| 📅 दैनंदिन | दिवसाचे सर्व व्यवहार |
| 📊 अहवाल | Top 10, वर्गनिहाय, शून्य शिल्लक |
| 📤 निर्यात | Excel, CSV (Downloads folder मध्ये जतन) |
| 📥 आयात | Excel/CSV import |

---

## 💾 Data Storage

- सर्व data phone च्या **localStorage** मध्ये साठवले जाते
- App uninstall केल्यावर data जाईल, त्यापूर्वी **Export** करा
- Excel export → Downloads folder मध्ये जतन होते

---

## 🔧 Customization

### App नाव बदलण्यासाठी:
`app/src/main/res/values/strings.xml` मध्ये:
```xml
<string name="app_name">तुमचे नाव</string>
```

### Package name बदलण्यासाठी:
`app/build.gradle` मध्ये:
```gradle
applicationId "com.yourschool.studentbank"
```
आणि folder rename: `java/com/zphs/studentbank/` → `java/com/yourschool/studentbank/`

---

## ❓ सामान्य समस्या

**Q: Gradle sync failed?**
A: File → Invalidate Caches and Restart

**Q: minSdk error?**  
A: `build.gradle` मध्ये `minSdk 21` आहे का ते तपासा

**Q: App install होत नाही?**  
A: Settings → Security → "Unknown Sources" ON करा

**Q: Data दिसत नाही?**  
A: App एकदा पूर्ण बंद करून पुन्हा उघडा

---

## 📞 Technical Details

- **Min SDK:** 21 (Android 5.0 Lollipop)
- **Target SDK:** 34 (Android 14)
- **Architecture:** WebView + HTML/CSS/JS
- **Storage:** localStorage (WebView DOM Storage)
- **Size:** ~500KB (APK)

---

*ZPHS विद्यार्थी बचत बँक | 2024-25*
