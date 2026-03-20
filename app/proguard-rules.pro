# Add project specific ProGuard rules here.
# Keep WebView JavaScript interface
-keepclassmembers class com.zphs.studentbank.MainActivity$AndroidBridge {
    public *;
}

# Keep AppCompat
-keep class androidx.appcompat.** { *; }
-keep interface androidx.appcompat.** { *; }
