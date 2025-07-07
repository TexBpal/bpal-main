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
│   └── workflows/
│       ├── api.yml
│       └── test-cryptomate.yml
├── mockup/
│   ├── QPay Full Template/
│   │   ├── index.html
│   │   ├── style.css
│   │   └── script.js
│   └── mockupreadme.md
├── archive/
├── docs/
├── lib/
├── modules/
└── README.md
