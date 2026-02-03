# Escape Rooms App - Build Instructions

## 📱 Convert to Native Mobile App

This guide will help you create Android (APK) and iOS (IPA) apps that can be published to Google Play Store and Apple App Store.

---

## 🔧 Prerequisites

### For Android:
1. **Node.js** (v16 or higher) - [Download](https://nodejs.org/)
2. **Android Studio** - [Download](https://developer.android.com/studio)
3. **Java JDK 17** - [Download](https://www.oracle.com/java/technologies/downloads/)

### For iOS (Mac only):
1. **Node.js** (v16 or higher)
2. **Xcode** (from Mac App Store)
3. **CocoaPods** - Run: `sudo gem install cocoapods`

---

## 🚀 Step 1: Install Dependencies

Open PowerShell in the project folder and run:

```powershell
npm install
```

---

## 🤖 Step 2: Build for Android

### A. Initialize Capacitor (first time only)
```powershell
npx cap init "Escape Rooms" com.escaperooms.app
```

### B. Add Android platform
```powershell
npx cap add android
```

### C. Copy web files to Android
```powershell
npx cap sync
```

### D. Open in Android Studio
```powershell
npx cap open android
```

### E. Build APK in Android Studio
1. In Android Studio: **Build → Build Bundle(s) / APK(s) → Build APK(s)**
2. APK will be in: `android/app/build/outputs/apk/debug/app-debug.apk`

### F. For Release Version (Play Store):
1. Create keystore:
   ```powershell
   keytool -genkey -v -keystore escape-rooms.keystore -alias escape-rooms -keyalg RSA -keysize 2048 -validity 10000
   ```

2. In Android Studio: **Build → Generate Signed Bundle / APK**
3. Choose APK, select keystore, build release

---

## 🍎 Step 3: Build for iOS (Mac only)

### A. Add iOS platform
```bash
npx cap add ios
```

### B. Install dependencies
```bash
cd ios/App
pod install
cd ../..
```

### C. Open in Xcode
```bash
npx cap open ios
```

### D. Build in Xcode
1. Select target device or simulator
2. **Product → Archive**
3. Upload to App Store Connect

---

## 📦 Quick Build Commands

### Android Debug APK (for testing):
```powershell
npx cap sync
cd android
.\gradlew assembleDebug
```
APK location: `android/app/build/outputs/apk/debug/app-debug.apk`

### Android Release APK (for Play Store):
```powershell
npx cap sync
cd android
.\gradlew assembleRelease
```

---

## 🎨 App Icons

The app icons (192x192 and 512x512) need to be generated:
1. Open `generate-icons.html` in a browser
2. Download the icons
3. Place in the project folder

For Android Studio:
- Right-click `res` folder → **New → Image Asset**
- Import your icons

For Xcode:
- Open `ios/App/App/Assets.xcassets/AppIcon.appasset`
- Drag icons into appropriate sizes

---

## 📱 Publishing

### Google Play Store:
1. Create Developer Account ($25 one-time fee)
2. Create new app in Play Console
3. Upload signed APK/AAB
4. Complete store listing
5. Submit for review

### Apple App Store:
1. Join Apple Developer Program ($99/year)
2. Create app in App Store Connect
3. Upload IPA via Xcode
4. Complete app information
5. Submit for review

---

## 🔄 Update App

When you change `Escape rooms.html`:

```powershell
npx cap sync
```

Then rebuild in Android Studio or Xcode.

---

## 🆘 Troubleshooting

### Error: "capacitor not found"
```powershell
npm install -g @capacitor/cli
```

### Android SDK not found
Set environment variable:
```powershell
$env:ANDROID_HOME = "C:\Users\YourName\AppData\Local\Android\Sdk"
```

### Gradle error
In Android Studio: **File → Invalidate Caches → Restart**

---

## 📞 Need Help?

Common issues:
- Ensure Node.js is installed: `node --version`
- Ensure Java is installed: `java --version`
- Android Studio SDK is properly configured
- Xcode command line tools: `xcode-select --install`

---

## ✅ Success!

Once built, you'll have:
- **Android**: APK file installable on any Android device
- **iOS**: IPA file installable via Xcode or TestFlight
- **Stores**: Ready to publish to Google Play and App Store

Your web app is now a real native mobile app! 🎉
