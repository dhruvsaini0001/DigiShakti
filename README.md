# DigiShakti - CME Detection & Space Weather Forecasting System

DigiShakti is an advanced space weather monitoring and forecasting platform that provides real-time analysis of Coronal Mass Ejections (CMEs) and space weather parameters. The system integrates data from multiple sources including NASA, NOAA, and ISRO's Aditya-L1 mission to deliver comprehensive space weather insights.

## 🌟 Features

- **Real-time CME Detection**: Monitor and analyze Coronal Mass Ejections with advanced detection algorithms
- **Space Weather Forecasting**: 7-day forecasts for key parameters including:
  - Dst Index (Disturbance Storm Time)
  - Kp Index (Planetary K-index)
  - Sunspot Numbers
  - ap Index (Planetary Amplitude)
- **Multi-Source Data Integration**: 
  - NOAA Space Weather data
  - ISRO Aditya-L1 mission data
- **Interactive Visualizations**: Real-time charts and graphs for space weather parameters
- **ML-Based Predictions**: Machine learning models for accurate forecasting
- **Composite Index**: Proprietary algorithm combining multiple parameters for comprehensive space weather assessment

## 🏗️ Project Structure

```
DigiShakti/
├── Cme_detection_Phased2/
│   ├── backend/                 # Python FastAPI backend
│   │   ├── main.py             # Main API server
│   │   ├── database.py         # Database operations
│   │   ├── api/                # API endpoints
│   │   ├── scripts/            # Data processing & ML scripts
│   │   ├── data/               # Data storage
│   │   └── downloads/          # Downloaded data files
│   │
│   └── frontend/               # React TypeScript frontend
│       ├── src/                # Source code
│       ├── public/             # Static assets
│       └── components.json     # UI component configuration
│
├── README.md                   # This file
└── .gitignore                  # Git ignore rules
```

## 🚀 Getting Started

### Prerequisites

- **Backend**:
  - Python 3.8 or higher
  - pip package manager
  
- **Frontend**:
  - Node.js 16 or higher
  - npm or yarn package manager

### Installation

#### 1. Clone the Repository

```bash
git clone https://github.com/dhruvsaini0001/DigiShakti.git
cd DigiShakti/Cme_detection_Phased2
```

#### 2. Backend Setup

```bash
cd backend

# Install dependencies
pip install -r requirements.txt

# Set up the database
python setup_database.py

# Run the backend server
python main.py
```

The backend will start at `http://localhost:8000`

#### 3. Frontend Setup

```bash
cd frontend

# Install dependencies
npm install
# or
yarn install

# Start the development server
npm run dev
# or
yarn dev
```

The frontend will start at `http://localhost:5173`

### Quick Start with Scripts

For Windows users, you can use the provided batch/PowerShell scripts:

```bash
# Using batch file
start.bat

# Using PowerShell
.\start.ps1
```

## 📊 Data Sources

- **NASA DONKI**: CME events and space weather notifications
- **NOAA Space Weather Prediction Center**: Real-time space weather data
- **ISRO Aditya-L1**: Indian solar mission data
- **OMNI Web**: High-resolution solar wind data

## 🔬 Machine Learning Models

The system employs advanced machine learning models for forecasting:
- Time series prediction for space weather parameters
- Trained on historical data from 1963-2024
- 7-day forecast capability
- Regular model updates with new data

## 📖 Documentation

Additional documentation available in the project:
- [Phase 1 Context](Cme_detection_Phased2/PHASE1_CONTEXT.md)
- [Phase 1 UI Guide](Cme_detection_Phased2/PHASE1_UI_GUIDE.md)
- [Composite Index Explanation](Cme_detection_Phased2/COMPOSITE_INDEX_BACKEND_EXPLANATION.md)
- [Scientific Approach](Cme_detection_Phased2/COMPOSITE_INDEX_SCIENTIFIC_APPROACH.md)
- [Quick Demo Reference](Cme_detection_Phased2/QUICK_DEMO_REFERENCE.md)
- [Run Commands](Cme_detection_Phased2/RUN_COMMANDS.md)

## 🔧 Configuration

Configure the backend by editing `backend/config.yaml`:
- API endpoints
- Database settings
- Data refresh intervals
- ML model parameters

## 🌐 API Endpoints

Key API endpoints:
- `GET /api/cme-events` - Retrieve CME events
- `GET /api/forecast` - Get 7-day forecasts
- `GET /api/realtime-data` - Real-time space weather data
- `GET /api/composite-index` - Composite space weather index
- `GET /api/aditya-l1` - Aditya-L1 mission data
- `GET /api/model-accuracy` - ML model performance metrics

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## 📝 License

This project is part of a research initiative for space weather monitoring and forecasting.

## 👥 Team

DigiShakti - Space Weather Research Team

**Team Members:**
- Dhruv Saini
- Lily Singhal
- Garima Avasthi



## 📧 Contact

**Dhruv Saini**
- 📧 Email: [sainidhruv3675@gmail.com](mailto:sainidhruv3675@gmail.com)
- 🔗 GitHub: [https://github.com/dhruvsaini0001/DigiShakti.git](https://github.com/dhruvsaini0001/DigiShakti.git)

For questions or support, please open an issue on GitHub.

## ⚠️ Note

Large data files (.npy, .csv, .cdf) and node_modules are excluded from the repository. These will be generated/downloaded when you run the setup scripts.

## 🔄 Updates

The system automatically fetches latest data from:

- NOAA real-time feeds (every 5 minutes)
- Aditya-L1 data (as available)

---

**Made with ❤️ for Space Weather Research**
