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

1. Copy backend from original project
2. Install dependencies
3. Run backend: `cd backend && python main.py`
4. Run frontend: `cd frontend && npm run dev`

## Navigation
- Phase selector in header
- Next/Previous phase buttons
- Phase progress indicator



