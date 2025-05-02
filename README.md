# 🧠 FinMind — Telegram Mini App for Personal and Family Finance

**FinMind** is a lightweight Telegram Mini App that helps users manage personal and family budgets, track income and expenses, view analytics with visual charts, and synchronize everything with Google Sheets — while preserving the structure of existing spreadsheets.

---

## 🚀 Features

- 💼 **Multi-profile support** (e.g., personal, family, vacation)
- 💰 **Income and expense tracking** with categorized entries
- 📊 **Analytics and visual charts**: category distribution, trends, and monthly balance
- 🔁 **Google Sheets integration** with full support for existing spreadsheet structures
- 🔐 **Secure authentication** via Telegram and Google OAuth2
- 🤖 (Planned) **AI-based suggestions** and smart budget reminders

---

## 🛠 Tech Stack

### Frontend (Telegram Mini App)
- TypeScript, React
- Telegram WebApp SDK
- Recharts / Chart.js
- Tailwind CSS (optional)
- Hosted on Vercel / GitHub Pages

### Backend (Microservices)
- Java 17+, Spring Boot 3
- Spring Web (REST API)
- PostgreSQL
- Flyway (DB migrations)
- Google OAuth2 + Google Sheets API
- Docker

### Infrastructure
- Docker & Docker Compose
- GitHub Actions (CI/CD)
- Hosting: Render / Railway / Fly.io

---

## 📂 Project Structure
```finmind/
├── backend/
│   ├── auth-service/
│   ├── user-service/
│   ├── transaction-service/
│   ├── sheets-service/
│   └── gateway/
├── frontend/
│   └── mini-app/
├── infra/
│   ├── docker-compose.yml
│   ├── postgres/
│   └── nginx/
├── README.md
└── LICENSE
```

## 💻 Getting Started

```bash
git clone https://github.com/your-username/finmind.git
cd finmind
docker-compose up --build
```
- Access the Mini App inside Telegram via your configured bot URL.
- Set up Google OAuth credentials before syncing with Sheets.


## 📄 License

This project is licensed under the MIT License.


