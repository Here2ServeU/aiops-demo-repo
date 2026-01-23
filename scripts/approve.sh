#!/usr/bin/env bash
set -euo pipefail

STATE_FILE="state/pending_remediation.json"
APP_PORT=3000 # Define your app port here

if [[ ! -f "$STATE_FILE" ]]; then
  echo "[ERROR] No pending remediation found. Run: python3 scripts/aiops_recommend.py"
  exit 1
fi

echo "[Approval] Pending remediation found:"
cat "$STATE_FILE" | sed -e 's/^/  /'

# --- STEP 1: Global Denial ---
# Ensure external access is cut before applying the fix
echo "[Deny] Cutting internet access to port $APP_PORT for safe remediation..."
if command -v ufw > /dev/null; then
    sudo ufw deny "$APP_PORT"/tcp > /dev/null 2>&1 || echo "[Warn] UFW not configured, skipping firewall block."
fi

# --- STEP 2: Record Approval ---
echo ""
echo "[Approval] Recording approval in state..."
python3 - <<'PY'
import json, time
p="state/pending_remediation.json"
try:
    with open(p, "r") as f:
        data=json.load(f)
    data["approved"]=True
    data["approved_at"]=int(time.time())
    with open(p, "w") as f:
        json.dump(data, f, indent=2)
    print("[OK] Approval recorded.")
except Exception as e:
    print(f"[Error] Failed to update state: {e}")
    exit(1)
PY

# --- STEP 3: Execute Remediation ---
echo "[Remediate] Running remediation script..."
# Ensure remediate.sh has logic to 'allow' the port again once finished
bash scripts/remediate.sh

# --- STEP 4: Restore Access ---
echo "[Restore] Lifting internet denial and verifying..."
if command -v ufw > /dev/null; then
    sudo ufw allow "$APP_PORT"/tcp > /dev/null 2>&1
fi

echo "[Finished] Remediation complete and access restored."
