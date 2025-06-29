# 📝 Notes App

A simple and fast mobile notes application built with **Flutter**.  
It allows users to add, edit, and delete notes, with local storage using **Hive**, and state management via **Cubit (Bloc)**.

---

## 📸 Screenshots

| Home Screen | Add Note | Edit Note |
|-------------|----------|------------|
| ![Home](assets/screenshots/home.png) | ![Add](assets/screenshots/add.png) | ![Edit](assets/screenshots/edit.png) |

---

## 🚀 Features

- 📝 Add a title and content to each note
- 🎨 Choose a custom color for each note
- ✏️ Edit existing notes (title, content, color)
- 🗑️ Delete notes with a single tap
- 📦 Local data storage using Hive
- ⚙️ Lightweight state management with Cubit (Bloc)

---

## 🛠️ Built With

- [Flutter](https://flutter.dev )
- [Dart](https://dart.dev )
- [Hive](https://docs.hivedb.dev ) (for local storage)
- [Bloc/Cubit](https://bloclibrary.dev )

---

## 📂 Note Data Model

```dart
class NoteModel {
  final String title;
  final String content;
  final int color;
  final DateTime date;
}
🚀 Getting Started
Clone the repository and run the app:
bash
git clone https://github.com/a7med287/notes.git
cd notes
flutter pub get
flutter run
🤝 Contributing
Contributions are welcome!
Fork the repo
Create a new branch: feature/your-feature-name
Make your changes
Push and create a Pull Request
Contact
Email: rezk7672@gmail.com
LinkedIn: Ahmed Rezk
GitHub: @a7med287
