# QR Studio 📱

A clean, minimal QR Code Scanner and Generator built with Flutter — featuring real-time scanning, instant generation, and a polished Material 3 dark theme.

---

## Features

- **Scan QR Codes** — Real-time camera scanning with instant result display
- **Copy to Clipboard** — One tap to copy any scanned result
- **Generate QR Codes** — Create QR codes from any text or URL instantly
- **Material 3 Dark Theme** — Clean, modern UI with consistent design system

---


## 📸 Screenshots

<p align="center">
  <img src="https://github.com/user-attachments/assets/3d5c074e-03f0-460b-9509-67007507c188" width="250">
  <img src="https://github.com/user-attachments/assets/0d162d59-c97b-432c-a27e-1ab152020c4d" width="250">
</p>
---

## Tech Stack

| | |
|---|---|
| Framework | Flutter |
| Language | Dart |
| Scanning | mobile_scanner |
| Generation | qr_flutter |
| Theme | Material 3 |

---

## Getting Started

```bash
# Clone the repo
git clone https://github.com/sachin-kumar-flutter/qr-studio-flutter.git

# Navigate into the project
cd qr-studio-flutter

# Install dependencies
flutter pub get

# Run the app
flutter run
```

---

## Packages Used

```yaml
mobile_scanner: # Real-time QR and barcode scanning
qr_flutter:     # QR code generation from string data
```

---

## What I Learned

- Integrating device camera using `mobile_scanner`
- Generating QR codes dynamically with `qr_flutter`
- Building consistent UI with Material 3 `ColorScheme.fromSeed`
- Managing state with `setState` for real-time updates
- Handling `TextEditingController` lifecycle with `dispose()`

---

## Author

**Sachin Kumar**  
Flutter Developer | B.Tech CSE  
[LinkedIn](https://linkedin.com/in/your-profile) • [GitHub](https://github.com/sachin-kumar-flutter)
