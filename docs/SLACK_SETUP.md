# Slack Setup (Incoming Webhook)

### In Slack, go to:
   - https://api.slack.com/apps
   - Create New App -> App Name -> Pick a workspace to develop your app in -> Create App
   - Go to Incoming Webhook (under Features) -> Turn 'On' Activate Incoming Webhooks -> Add New Webhook -> Select Channel for webhook -> Allow
   - Under Webhook URL -> Copy
   - Workspace Settings → Apps → (or browse Slack App Directory)
### Put it into `.env`:

```bash
cp .env.example .env
# edit .env and set:
SLACK_WEBHOOK_URL=...
```

Then restart the stack:
```bash
docker compose up -d --build
```
