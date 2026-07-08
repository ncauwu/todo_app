# 📝 To-Do List App

[personal project]

Aplikasi daftar tugas (to-do list) sederhana berbasis **Flutter** yang
dijalankan di browser (localhost / Flutter Web). 

---

## ✨ Fitur
- Menambah tugas baru lewat kolom input
- Menandai tugas selesai (checkbox + teks dicoret)
- Menghapus tugas (ikon tempat sampah)
- Tampilan pastel dengan font kustom **Fredoka** dan ikon SVG
---
## 🛠️ Teknologi
- Flutter (Dart)
- Package: `flutter_svg`, `cupertino_icons`
- Target: Web (localhost)
---
## 📁 Struktur Proyek
- `lib/main.dart` — entry point aplikasi
- `lib/pages/home_page.dart` — halaman utama & logika tambah/hapus/checklist
- `lib/utils/todo_list.dart` — widget item tugas (reusable)
- `assets/icon/` — ikon SVG (cat, trashcat)
- `fonts/` — font Fredoka
---
## 🚀 Cara Menjalankan
Pastikan Flutter sudah terpasang, lalu:

    git clone https://github.com/ncauwu/todo_app.git
    cd todo_app
    flutter pub get
    flutter run -d chrome

Aplikasi akan terbuka di browser (localhost).

---


## 🚀 Demo Langsung
Coba aplikasinya tanpa install, langsung di browser:

👉 **[https://ncauwu.github.io/todo_app/](https://ncauwu.github.io/todo_app/)**

## 📸 Tampilan Aplikasi

| Halaman Utama | Tambah / Centang Tugas |
|:---:|:---:|
| ![Halaman utama](screenshots/home.png) | ![Tambah tugas](screenshots/add.gif) |

---

## 📌 Catatan
- Data tugas saat ini disimpan di memori, jadi akan ter-reset saat halaman
  di-refresh.

---

## 👤 Penulis
Dibuat oleh [ncauwu](https://github.com/ncauwu)
