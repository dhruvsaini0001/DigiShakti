# 🚀 Quick Start Guide - Render Deployment

## Quick Deploy to Render (5 Minutes)

### Step 1: Prepare Your Repository

```bash
# Initialize git if not already done
git init

# Add all files
git add .

# Commit
git commit -m "Ready for Render deployment"

# Push to GitHub (create a repo on GitHub first)
git remote add origin https://github.com/yourusername/digishakti-cme.git
git branch -M main
git push -u origin main
```

### Step 2: Deploy on Render

#### Using Blueprint (Automated - Recommended)

1. Go to [Render Dashboard](https://dashboard.render.com/)
2. Click **"New +"** → **"Blueprint"**
3. Connect your GitHub repository
4. Render will detect `render.yaml` and show:
   - ✅ Backend Web Service
   - ✅ Frontend Static Site
   - ✅ PostgreSQL Database
5. Review settings and click **"Apply"**
6. Wait 5-10 minutes for build and deployment

#### Manual Deployment (Alternative)

See detailed instructions in [DEPLOYMENT.md](./DEPLOYMENT.md)

### Step 3: Configure Environment Variables

After deployment, update the frontend:

1. Go to **Frontend Service** → **Environment**
2. Find `VITE_API_URL` variable
3. Update with your backend URL: `https://digishakti-backend.onrender.com`
4. Click **"Save Changes"** and trigger a redeploy

### Step 4: Test Your Deployment

Visit your frontend URL (e.g., `https://digishakti-frontend.onrender.com`)

The application should load and connect to the backend API.

## Service URLs

After deployment, you'll have:
- **Frontend**: `https://[your-service-name].onrender.com`
- **Backend**: `https://[your-backend-name].onrender.com`
- **API Docs**: `https://[your-backend-name].onrender.com/docs`

## Important Notes

### Free Tier Behavior
- Services **spin down after 15 minutes** of inactivity
- First request after spin-down takes **30-60 seconds** (cold start)
- Perfect for demos and testing

### Environment Variables Checklist
- [ ] Backend: `PYTHON_VERSION` (set in render.yaml)
- [ ] Backend: `DATABASE_URL` (auto-set from database)
- [ ] Frontend: `VITE_API_URL` (update after backend deployment)
- [ ] Frontend: `NODE_VERSION` (set in render.yaml)

## Troubleshooting

### Backend not starting?
```bash
# Check logs in Render Dashboard
# Common issues:
# 1. Missing dependencies → Add to requirements.txt
# 2. Port binding → Ensure using $PORT variable
# 3. Database connection → Check DATABASE_URL
```

### Frontend not connecting to backend?
```bash
# 1. Verify VITE_API_URL is correct
# 2. Check browser console for CORS errors
# 3. Test backend directly: https://your-backend.onrender.com/health
```

### Build failing?
```bash
# Backend:
# - Check Python version compatibility
# - Verify all imports are in requirements.txt

# Frontend:
# - Check Node version (18.x recommended)
# - Ensure all dependencies in package.json
```

## Local Development

### Backend
```bash
cd backend
python -m venv venv
source venv/bin/activate  # Windows: venv\Scripts\activate
pip install -r requirements.txt
uvicorn main:app --reload --port 8002
```

### Frontend
```bash
cd frontend
npm install
npm run dev
```

Access locally:
- Frontend: http://localhost:8080
- Backend: http://localhost:8002
- API Docs: http://localhost:8002/docs

## Monitoring

### Check Service Status
1. Render Dashboard → Your Service
2. View **Logs** tab for real-time logs
3. View **Metrics** for CPU/Memory usage

### Health Check
Visit: `https://your-backend.onrender.com/health`

Expected response:
```json
{
  "status": "healthy",
  "timestamp": "2026-02-26T12:00:00"
}
```

## Next Steps

- [ ] Test all features thoroughly
- [ ] Set up custom domain (requires paid plan)
- [ ] Configure monitoring alerts
- [ ] Plan database backups
- [ ] Consider upgrading from free tier for production use

## Support

- **Render Docs**: https://render.com/docs
- **Community**: https://community.render.com
- **Detailed Guide**: See [DEPLOYMENT.md](./DEPLOYMENT.md)

---

**Deployment Time**: ~10 minutes (first time)  
**Build Time**: Backend ~2-3 min, Frontend ~1-2 min  
**Cold Start**: ~30-60 seconds on free tier
