# Measures Converter

A Flutter web application for converting between different units of measurement. This app allows users to easily convert values between metric and imperial systems.

## Features

- **Unit Conversion**: Convert between different measurement units
- **Simple Interface**: Clean, user-friendly design with dropdown selectors
- **Real-time Conversion**: Instant results as you type
- **Multiple Units**: Support for various measurement types including:
  - Distance (miles ↔ kilometers)
  - Weight (kilograms ↔ pounds)
- **Web App**: Runs in any modern web browser
- **Progressive Web App**: Can be installed on devices for app-like experience

## How to Use

1. **Enter Value**: Type the number you want to convert
2. **Select Unit**: Choose the source unit from the dropdown
3. **Convert**: Click the convert button to see the result
4. **View Result**: The converted value appears below

## Supported Conversions

- **Miles** ↔ **Kilometers** (conversion factor: 1 mile = 1.60934 km)
- **Kilograms** ↔ **Pounds** (conversion factor: 1 kg = 2.20462 lbs)

## Getting Started

### Prerequisites

- Flutter SDK (>=3.0.0)
- Dart SDK
- Modern web browser

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/safarorg/measures_converter.git
   cd measures_converter
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Run the app:
   ```bash
   flutter run -d chrome
   ```

## Project Structure

```
measures_converter/
├── lib/
│   └── main.dart          # Main application code
├── web/
│   ├── index.html         # Web app entry point
│   └── manifest.json      # PWA configuration
├── pubspec.yaml           # Dependencies and metadata
└── README.md             # This file
```

## Technologies Used

- **Flutter**: Cross-platform UI framework
- **Dart**: Programming language
- **Material Design**: UI components and theming
- **Progressive Web App**: Web app with native-like features

## Contributing

Feel free to contribute to this project by:
- Adding new unit conversions
- Improving the UI/UX
- Adding more measurement types
- Fixing bugs or improving performance

## License

This project is open source and available under the MIT License.
