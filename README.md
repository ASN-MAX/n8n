# n8n Render Deployment

This is a minimal self-hosted n8n setup for Render using the official Docker image.

## 🚀 How to Deploy

1. **Fork this repo to your GitHub**
2. **Connect it to [Render.com](https://render.com)**
   - New Web Service > Select your forked repo
   - It will detect the Dockerfile automatically
3. **Set these environment variables in Render:**

```
N8N_BASIC_AUTH_ACTIVE=true
N8N_BASIC_AUTH_USER=yourusername
N8N_BASIC_AUTH_PASSWORD=yourpassword
WEBHOOK_URL=https://your-n8n-app.onrender.com/
N8N_HOST=your-n8n-app.onrender.com
N8N_PORT=3000
NODE_ENV=production
```

4. **Deploy**
5. Open your app URL and log in
6. Import your n8n workflow file and connect your credentials

Enjoy your self-hosted automation! 🔁
