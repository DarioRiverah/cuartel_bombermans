# cuartel_bombermans

Aplicación móvil gamificada para operarios de Grúas y Equipos  
[Disponible en Google Play](https://play.google.com/store/apps/details?id=com.darsstudio.cuartelbombermans)

---

## 1. URLS PRINCIPALES

- **Repositorio:** https://github.com/DarioRiverah/cuartel_bombermans  
- **Google Play Store (App Móvil):** https://play.google.com/store/apps/details?id=com.darsstudio.cuartelbombermans  

---

## 2. DESCRIPCIÓN DEL PROYECTO

**Cuartel de Bombermans** es una solución móvil gamificada que transforma las actividades operativas y de mantenimiento realizadas por los operarios de Grúas y Equipos en una experiencia motivadora basada en puntos, retos, reportes y comunicación centralizada.

La aplicación busca:
- Incrementar la motivación y productividad de los 120 operarios.
- Mejorar el control documental de mantenimiento, seguridad e inventarios.
- Optimizar la comunicación entre operarios, coordinadores y administradores.
- Digitalizar procesos manuales como checklists, inspecciones, reportes e inventarios.

### Tecnologías principales

**Frontend (App móvil)**
- Flutter (Dart)
- Firebase Authentication
- Firebase Storage
- Firebase Firestore
- Firebase Cloud Messaging

**Backend**
- Node.js
- NestJS
- API REST
- Integración con Firebase
- Control de autenticación y reportes

**Herramientas adicionales**
- GitHub Actions (compilación automática de APK/AAB)
- Google Play Console
- Arquitectura MVC Ligero

---

## 3. ESTRUCTURA DEL PROYECTO

Árbol general de directorios:
cuartel_bombermans/
├─ android/
├─ ios/
├─ lib/
│ ├─ controllers/
│ ├─ services/
│ ├─ models/
│ ├─ views/
│ ├─ widgets/
│ └─ main.dart
│
├─ backend/
│ ├─ src/
│ │ ├─ modules/
│ │ ├─ controllers/
│ │ ├─ services/
│ │ ├─ entities/
│ │ ├─ dtos/
│ │ └─ app.module.ts
│ ├─ test/
│ └─ main.ts
│
├─ assets/
├─ pubspec.yaml
└─ README.md


---

## 4. EXPLICACIÓN DE LAS CARPETAS

### **Frontend – Flutter**
- **lib/controllers/**  
  Manejo de lógica, cambios de estado y control del flujo entre vistas.

- **lib/services/**  
  Conexión con Firebase (autenticación, base de datos, notificaciones, storage).

- **lib/models/**  
  Modelos de datos (retos, usuarios, reportes, puntos, inventarios).

- **lib/views/**  
  Pantallas principales: login, retos, checklist, ranking, reportes, inventarios.

- **lib/widgets/**  
  Componentes reutilizables de UI.

- **android/**  
  Configuración nativa de Android, firma, build, keystore.

- **assets/**  
  Imágenes, íconos, animaciones y archivos estáticos.

---

### **Backend – Node.js / NestJS**
- **backend/src/controllers/**  
  Endpoints que consumen los operarios, líderes y administradores.

- **backend/src/services/**  
  Lógica del negocio: validación de retos, registro de puntos, generación de reportes.

- **backend/src/modules/**  
  Organización modular del API.

- **backend/src/entities/**  
  Estructura de datos usada para persistencia e intercambio.

- **backend/src/dtos/**  
  Validación de entrada y salida de datos.

---

## 5. CONFIGURACIÓN Y ENTORNO

### Variables comunes

**Frontend**
- Archivo `lib/config.dart` o `.env` con:
  - API URL
  - Firebase keys
  - Storage paths

**Backend**
- Archivo `.env`:


### Firebase configurado para:
✔ Autenticación  
✔ Firestore  
✔ Reglas de seguridad  
✔ Storage  
✔ Push Notifications (FCM)  

---

## 6. CÓMO EJECUTAR EL PROYECTO

### **Frontend (Flutter)**

1. Clonar el repositorio  

2. Instalar dependencias  

3. Ejecutar en modo debug  

4. Generar APK local  

---

## 7. ENDPOINTS DISPONIBLES (Backend)

| Módulo | Método | Ruta | Descripción |
|-------|--------|------|-------------|
| Auth | POST | `/auth/login` | Inicio de sesión |
| Usuarios | GET | `/users/profile` | Obtiene datos del usuario |
| Retos | GET | `/challenges` | Lista de retos |
| Retos | POST | `/challenges/complete` | Completa un reto y asigna puntos |
| Reportes | POST | `/reports` | Registro de novedades o incidentes |
| Inventarios | GET | `/inventory` | Consulta de equipos y accesorios |
| Seguridad | POST | `/safety/checklist` | Envío de checklist preventivo |

*(Estas rutas pueden ajustarse si me das tu archivo real de rutas del backend.)*

---

## 8. ARQUITECTURA DEL PROYECTO

### **Arquitectura General**
- **App móvil (Flutter)**  
UI, gamificación, reportes, checklist, ranking.

- **Backend (NestJS)**  
Procesa retos, reportes, usuarios, ranking y validaciones.

- **Base de datos (Firebase)**  
CRUD de usuarios, puntos, evidencias y reportes.

- **Notificaciones push (FCM)**  
Avisos a operarios y coordinadores.

### Diagrama general (simplificado)
[Flutter App]
↓ ↑
[REST API - NestJS]
↓ ↑
[Firebase: Firestore - Auth - Storage]
↓
[FCM Push Notifications]


---

## 🤖 9. FLUJO DE CI/CD (GitHub Actions)

Este repositorio usa un pipeline automático que:

1. Compila el proyecto Flutter.  
2. Firma APK y AAB usando secretos privados.  
3. Genera los artefactos (APK + AAB).  
4. Crea un Release en GitHub con número de versión dinámico.  
5. Facilita la publicación continua en Google Play.

(El workflow completo está disponible en `.github/workflows/build_android.yml`.)

---

## 10. RESULTADOS ESPERADOS DEL MVP

- Gamificación activa (oro, plata, cobre).  
- Panel de puntos y ranking por operario.  
- Checklists operativos y de seguridad digitalizados.  
- Reportes con evidencia fotográfica.  
- Inventarios actualizados en tiempo real.  
- Comunicación más fluida entre operarios y coordinadores.

---

## 11. AUTORES

Equipo **Code Masters** – Universidad Santo Tomás (Tunja)  
- César Iván Moreno Acero  
- Darío Sebastián Rivera Sáenz  
- Nicolás Monroy Chaparro  
- Camilo Hernández Rincón  
- Oscar Esteban Arias López  

---

## 12. LICENCIA

Proyecto académico – Uso interno para Hackathon FIS 2025.


