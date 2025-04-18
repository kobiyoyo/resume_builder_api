# Resume Builder App

This project is a full-stack Resume Builder application using:

- **Frontend**: Next.js (React + TailwindCSS)
- **Backend**: Ruby on Rails API

---

## 🚀 Getting Started

### Prerequisites
Make sure you have the following installed:

- Node.js (v18 or higher)
- npm or yarn
- Ruby (>= 2.7)
- Rails (>= 5.0)
- PostgreSQL

---

## 🖥 Running the Frontend (Next.js)

### 1. Install dependencies
```bash
cd frontend
npm install
# or
yarn install
```

### 2. Create environment file
Create a `.env.local` file in the root of the frontend folder:
```env
NEXT_PUBLIC_BACKEND=http://localhost:3000
```

### 3. Run the development server
```bash
npm run dev
# or
yarn dev
```

App will be available at `http://localhost:3001` (if you set PORT=3001)

---

## 🧠 Running the Backend (Rails API)

### 1. Install gems
```bash
cd backend
bundle install
```

### 2. Setup database
```bash
rails db:create
rails db:migrate
```

### 3. Run the Rails server
```bash
rails s
```

The API will run at `http://localhost:3000`

---

## 🧪 Test the API with Postman
Example POST request to create a resume:
```
POST http://localhost:3000/api/v1/resumes
Authorization:  <auth_token>
Content-Type: application/json

{
  "resume": {
    "personal_info": { ... },
    "education": [ ... ],
    "experience": [ ... ],
    "skills": [ ... ],
    "projects": [ ... ],
    "certifications": [ ... ]
  }
}
```

---

## ✍️ Author
- Resume Builder by [Your Name]

---

## 📂 Folder Structure
```
/resume-builder
├── frontend (Next.js app)
└── backend  (Rails API)
```

Let me know if you need deploy instructions or Docker support!
