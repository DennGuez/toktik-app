# TokTik

Clon básico de **TikTok** desarrollado en **Flutter**. Reproduce un feed vertical de videos con reproducción automática, gestos de play/pausa y una interfaz inspirada en la app original. El nombre es "TikTok" al revés 😄.

## Funcionalidades

- Feed vertical de videos con scroll
- Reproducción automática y play/pausa al tocar
- Animaciones de interfaz (likes, transiciones)
- Videos locales cargados desde los assets

## Tecnologías

- **Flutter** (SDK Dart >= 2.19.6)
- **video_player** — reproducción de videos
- **provider** — gestión de estado
- **animate_do** — animaciones
- **intl** — formateo de números y fechas
- Arquitectura limpia (datasources + repositories)

## Requisitos

- Flutter SDK instalado

## Puesta en marcha

1. Clonar el proyecto

```bash
git clone https://github.com/DennGuez/toktik-app.git
cd toktik-app
```

2. Instalar dependencias

```bash
flutter pub get
```

3. Ejecutar la aplicación

```bash
flutter run
```

## Build de producción

```bash
# Android
flutter build apk

# iOS
flutter build ios
```

## Licencia

Proyecto de práctica / uso educativo.
