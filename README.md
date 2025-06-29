# 📝 Notes App

A simple and fast mobile notes application built with **Flutter**.  
It allows users to add, edit, and delete notes, with local storage using **Hive**, and state management via **Cubit (Bloc)**.

---

## 📸 Screenshots

| Home Screen | Add Note | Edit Note |
|-------------|----------|------------|
| ![Home](assets/screenshots/home.png) | ![Add](assets/screenshots/add.png) | ![Edit](assets/screenshots/edit.png) |

> Make sure to place your screenshots inside the folder: `assets/screenshots/`

---

## 🚀 Features

- 📝 Add title and content to each note  
- 🎨 Choose custom color for each note  
- ✏️ Edit notes (title, content, color)  
- 🗑️ Delete notes instantly  
- 💾 Local storage with Hive  
- ⚙️ Simple Cubit-based state management  

---

## 🛠️ Technologies Used

- Flutter  
- Dart  
- Hive (local database)  
- Bloc/Cubit (for state management)  

---

## 📂 Note Data Model

```dart
class NoteModel {
  final String title;
  final String content;
  final int color;
  final DateTime date;
}
```

---

## 🚀 Getting Started

To run this project on your local machine:

```bash
git clone https://github.com/a7med287/notes.git
cd notes
flutter pub get
flutter run
```

> Make sure you have Flutter installed and configured on your system.

---

## 🤝 Contributing

Contributions are welcome!

1. Fork the repo  
2. Create a new branch: `feature/your-feature-name`  
3. Make your changes  
4. Push and create a Pull Request  

---

## 📬 Contact

- 📧 Email: rezk7672@gmail.com  
- 💼 LinkedIn: [Ahmed Rezk](https://www.linkedin.com/in/ahmed-rezk-966985322/)  
- 💻 GitHub: [@a7med287](https://github.com/a7med287)
