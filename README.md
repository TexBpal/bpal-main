cat <<EOF > README.md
# BPAL-MAIN

## 📦 GitHub Actions Workflows

### `.github/workflows/`

- `api.yml` → Triggar på ändringar i `api/**`
- `test-cryptomate.yml` → Testar `CRYPTOMATE_SECRET` från GitHub Secrets

---

## ✅ Setup Checklist

- [x] `.github/workflows/` är korrekt uppsatt
- [x] Workflows: `api.yml`, `test-cryptomate.yml`
- [x] GitHub Secret `CRYPTOMATE_SECRET` är aktiv
- [x] Push-triggers fungerar

---

## 🧪 Testkörning – 2025-07-06

| Workflow              | Resultat | Kommentar                                |
|-----------------------|----------|-------------------------------------------|
| `api.yml`             | ✅ OK    | Hittade `cryptomate_config.json` korrekt |
| `test-cryptomate.yml` | ✅ OK    | Läste `CRYPTOMATE_SECRET` utan problem    |

---

## 🗂️ Struktur

```bash
BPAL-MAIN/
├── .github/
│ └── workflows/
│ ├── api.yml
│ └── test-cryptomate.yml
├── archive/
├── docs/
├── lib/
│ ├── crypto_api_config.dart
│ ├── home.dart
│ ├── log.dart
│ ├── main.dart
│ ├── navigate.dart
│ └── set.dart
├── index.html
├── style.css
├── script.js
├── statuslog.txt
├── mockup/
│ └── QPay_Full_Template/
│ ├── qrpay-user-app/
│ ├── qrpay-web/
│ ├── qrpay-documentation.html
│ └── old-versions-[v2.5.0–v5.1.0]/
├── modules/
├── README.md
└── .gitignore