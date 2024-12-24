# FastAPI + React Sentiment Analysis App

This project includes a FastAPI backend for sentiment analysis and a React frontend to upload CSV files and display the results. The backend uses the VADER sentiment analysis library, processes the uploaded CSV files, and returns the sentiment counts along with visual charts. The frontend allows users to interact with the backend and visualize the sentiment analysis results.

## Features

- **FastAPI Backend**: Handles user authentication (sign up, login) and sentiment analysis.
- **React Frontend**: Allows users to upload CSV files for sentiment analysis and displays the results.
- **JWT Authentication**: Secured routes for uploading files and accessing sentiment analysis results.
- **Charts**: Generates bar and pie charts for visualizing sentiment analysis.

## Tech Stack

- **Backend**: FastAPI, JWT Authentication, Pandas, NLTK (VADER), Matplotlib, Seaborn
- **Frontend**: React.js, Axios
- **Deployment**: Vercel for both frontend and backend
- **Database**: In-memory storage (for simplicity)

## Installation

### Backend (FastAPI)

1. Clone the repository:
    ```bash
    git clone "https://github.com/your-username/fastapi-react-sentiment.git"
    cd fastapi-react-sentiment
    ```

2. Create and activate a virtual environment (optional but recommended):
    ```bash
    python3 -m venv venv
    source venv/bin/activate   # On Windows, use `venv\Scripts\activate`
    ```

3. Install dependencies:
    ```bash
    pip install -r requirements.txt
    ```

4. Run the FastAPI server:
    ```bash
    uvicorn app.main:app --reload
    ```

   Your FastAPI app will be available at `http://127.0.0.1:8000`.

### Frontend (React)

1. Navigate to the `frontend` directory:
    ```bash
    cd frontend
    ```

2. Install the dependencies:
    ```bash
    npm install
    ```

3. Run the React development server:
    ```bash
    npm start
    ```

   The React app will be available at `http://localhost:3000`.

### Deployment on Vercel

To deploy the frontend and backend on Vercel:

#### Frontend (React)

1. Push the `frontend` directory to a GitHub repository.
2. Go to [Vercel](https://vercel.com/) and create a new project.
3. Import your GitHub repository containing the React project.
4. Vercel will automatically build and deploy the app.

#### Backend (FastAPI)

1. Create a `Dockerfile` and `vercel.json` as described in the earlier sections.
2. Push the backend code to GitHub.
3. Go to [Vercel](https://vercel.com/) and create a new project.
4. Import your GitHub repository containing the FastAPI project.
5. Vercel will automatically deploy the backend using Docker.

Make sure your frontend is configured to communicate with the deployed backend.

## Project Structure

fastapi-react-sentiment/
├── app/                       # FastAPI backend files
│   ├── __init__.py
│   ├── deps.py
│   ├── main.py                # FastAPI main app file
│   ├── schemas.py
│   ├── sentiment.py
│   ├── utils.py
├── static/                    # Static files for charts
│   ├── bar_chart.png
│   ├── pie_chart.png
├── Dockerfile                 # Dockerfile for backend deployment
├── requirements.txt           # Backend dependencies
├── vercel.json                # Vercel configuration for deployment
├── frontend/                  # React frontend files
│   ├── public/
│   ├── src/
│   ├── package.json           # Frontend dependencies
└── README.md                  # Project documentation

## API Endpoints

- **POST /signup**: Registers a new user.
  - **Request body**:
    ```json
    {
      "email": "user@example.com",
      "password": "password123"
    }
    ```
  - **Response**: User object.

- **POST /login**: Authenticates a user and returns a JWT token.
  - **Request body**:
    ```json
    {
      "username": "user@example.com",
      "password": "password123"
    }
    ```
  - **Response**:
    ```json
    {
      "access_token": "jwt_token_here",
      "token_type": "bearer"
    }
    ```

- **POST /analyze_sentiment**: Upload a CSV file for sentiment analysis.
  - **Request**: Form-data with file upload (CSV).
  - **Response**: Sentiment analysis results, including counts and chart URLs.

## Contributing

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Make your changes.
4. Commit your changes (`git commit -am 'Add new feature'`).
5. Push to the branch (`git push origin feature-branch`).
6. Open a pull request.





