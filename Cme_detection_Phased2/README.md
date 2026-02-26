# CME Detection - Phased Project (SIH Presentation)

## Overview
This is the phased version of the CME Detection project, organized for SIH (Smart India Hackathon) presentation in phases.

## Project Structure

```
Cme_detection_Phased/
├── backend/          (Copy from original - unchanged)
├── frontend/         (New phased UI structure)
└── docs/            (Phase documentation)
```

## Phases (Based on Flowchart):

### Phase 1: Live CME Detection
- **Route**: `/phase1` or `/cme/live`
- **Features**:
  - Real-time CME monitoring dashboard
  - Animation & Dashboard
  - Effect Halo/Not (Halo CME classification)

### Phase 2: CME Prediction
- **Route**: `/phase2` or `/cme/prediction`
- **Features**:
  - Arrival Time Prediction
  - Direction Prediction
  - Forecast visualization

### Phase 3: Live Geomagnetic Storm
- **Route**: `/phase3` or `/storm/live`
- **Features**:
  - Real-time geomagnetic monitoring
  - Animation Dashboard
  - Current storm effects

### Phase 4: Geomagnetic Storm Prediction
- **Route**: `/phase4` or `/storm/prediction`
- **Features**:
  - Time Regression model
  - Storm intensity prediction
  - Future timeline

### Phase 5: Video & Image Animation
- **Route**: `/phase5` or `/animations`
- **Features**:
  - Combined CME + Storm animations
  - Video generation
  - Image export

## Setup Instructions

### Local Development

1. **Backend Setup**
```bash
cd backend
python -m venv venv
source venv/bin/activate  # Windows: venv\Scripts\activate
pip install -r requirements.txt
python main.py
```

2. **Frontend Setup**
```bash
cd frontend
npm install
npm run dev
```

3. **Access Application**
- Frontend: http://localhost:8080
- Backend API: http://localhost:8002
- API Documentation: http://localhost:8002/docs

### Deploy to Render

This project is ready for one-click deployment to Render!

**Quick Deploy (5 minutes):**
1. Push code to GitHub
2. Connect repository to Render
3. Use Blueprint deployment (auto-detects `render.yaml`)
4. Update frontend `VITE_API_URL` with your backend URL

**Detailed Instructions:**
- 🚀 Quick Start: [QUICK_START.md](./QUICK_START.md)
- 📖 Full Guide: [DEPLOYMENT.md](./DEPLOYMENT.md)
- ✅ Checklist: [DEPLOYMENT_CHECKLIST.md](./DEPLOYMENT_CHECKLIST.md)

## Navigation
- Phase selector in header
- Next/Previous phase buttons
- Phase progress indicator



