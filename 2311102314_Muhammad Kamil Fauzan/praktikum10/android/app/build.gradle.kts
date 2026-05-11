plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

android {
<<<<<<<< HEAD:2311102130_iqbal bawani/source code/weeksebelas/android/app/build.gradle.kts
    namespace = "com.example.weeksebelas"
========
    namespace = "com.example.praktikum10"
>>>>>>>> 1e4e1b0f3b92d13cd8af30b18894d73f41d25533:2311102314_Muhammad Kamil Fauzan/praktikum10/android/app/build.gradle.kts
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_17.toString()
    }

    defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
<<<<<<<< HEAD:2311102130_iqbal bawani/source code/weeksebelas/android/app/build.gradle.kts
        applicationId = "com.example.weeksebelas"
========
        applicationId = "com.example.praktikum10"
>>>>>>>> 1e4e1b0f3b92d13cd8af30b18894d73f41d25533:2311102314_Muhammad Kamil Fauzan/praktikum10/android/app/build.gradle.kts
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    buildTypes {
        release {
            // TODO: Add your own signing config for the release build.
            // Signing with the debug keys for now, so `flutter run --release` works.
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}
