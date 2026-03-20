# 🚀 APK बनवण्याचे 3 तरीके

---

## ✅ तरीका 1: GitHub Actions (सर्वात सोपा - FREE)
> कोणतीही tool install करण्याची गरज नाही!

### Step 1: GitHub Account बनवा
👉 https://github.com/signup (FREE)

### Step 2: New Repository बनवा
1. https://github.com/new वर जा
2. Repository name: `zphs-student-bank`
3. **Public** निवडा
4. **Create repository** click करा

### Step 3: Files Upload करा
1. Repository मध्ये **"uploading an existing file"** click करा
2. `ZPHSStudentBank` folder मधील **सर्व files** drag करा
3. **Commit changes** click करा

### Step 4: APK Download करा
1. Repository मध्ये **Actions** tab वर जा
2. **"Build APK"** workflow दिसेल - ते automatically run होईल
3. Green ✅ झाल्यावर click करा
4. **Artifacts** section मध्ये **"ZPHS-StudentBank-APK"** download करा
5. ZIP extract करा → `app-debug.apk` मिळेल!

### Step 5: Phone वर Install करा
1. APK file phone मध्ये transfer करा
2. Settings → Security → **"Unknown Sources" ON** करा
3. File open करा → Install

---

## ✅ तरीका 2: Android Studio (Local Build)

### Step 1: Download करा
- Android Studio: https://developer.android.com/studio
- Install करा (1-2 GB)

### Step 2: Project Import करा
1. **Open** → `ZPHSStudentBank` folder निवडा
2. Gradle sync होण्याची वाट पहा

### Step 3: Gradle Wrapper Setup
Terminal मध्ये:
```bash
cd ZPHSStudentBank
gradle wrapper --gradle-version 8.4
```

### Step 4: APK Build करा
```
Build → Build Bundle(s)/APK(s) → Build APK(s)
```
APK: `app/build/outputs/apk/debug/app-debug.apk`

---

## ✅ तरीका 3: Online APK Builder (AppsGeyser)

1. 👉 https://appsgeyser.com/create/website/ वर जा
2. **Website URL** ऐवजी **HTML Upload** निवडा
3. `index.html` (assets मधील) upload करा
4. App नाव: **ZPHS Student Bank**
5. Icon upload करा
6. **Create** → APK download

---

## 📱 Phone वर Direct Install (Settings)

```
Settings → Apps → Special App Access → 
Install Unknown Apps → 
Chrome/Files → Allow
```

---

## ❓ FAQ

**APK install होत नाही?**
→ Settings → Security → Unknown Sources → ON

**"Parse Error" येतो?**
→ APK file corrupt आहे, पुन्हा download करा

**App crash होते?**
→ Android 5.0+ (API 21+) असणे आवश्यक आहे

---

*सर्वात सोपा: GitHub Actions वापरा - 10 मिनिटात APK मिळेल!*
