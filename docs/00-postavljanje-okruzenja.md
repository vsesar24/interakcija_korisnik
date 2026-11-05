# 00 – Postavljanje okruženja

Radio sam na Windowsu u VS Codeu.

1. Skinuti Flutter SDK (stable zip) s [docs.flutter.dev](https://docs.flutter.dev/get-started/install/windows/mobile) i raspakirati u `C:\dev\flutter`.
2. Dodati `C:\dev\flutter\bin` u PATH (Environment Variables → Path).
3. U VS Codeu instalirati ekstenziju **Flutter**.
4. U Android Studiju u SDK Manageru instalirati Command-line Tools, Build-Tools, Platform-Tools i Emulator, pa pokrenuti `flutter doctor --android-licenses`.
5. Napraviti emulator (Device Manager → Pixel 8, API 35). Za dozvolu za notifikacije treba barem API 33.
6. Provjeriti s `flutter doctor`.

Projekt: `Ctrl+Shift+P` → Flutter: New Project → Empty Application → samo android.

Commit: [51a1434](https://github.com/vsesar24/interakcija_korisnik/commit/51a1434)

**Problemi:**
- Gumb ▶ gore desno (Code Runner) ne pokreće Flutter aplikaciju. Treba koristiti `F5` ili `flutter run`.
- Ekstenzija Gradle for Java javlja grešku. Nije potrebna, može se ugasiti.

