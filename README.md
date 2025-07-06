# BPAL-MAIN

This is the core repository for the BPAL system.

## 📁 Project Structure

BPAL-MAIN/
├── .github/
│ └── workflows/
│ ├── api.yml
│ └── test-cryptomate.yml
├── archive/
├── docs/
├── lib/
├── mockup/
├── modules/
├── .gitignore
└── README.md

## ⚙️ GitHub Actions Workflows

### `api.yml`
- **Checks** if `cryptomate_config.json` exists in the `api/` directory.
- Triggered on: `push` to `main`.

### `test-cryptomate.yml`
- **Checks** if a GitHub secret `CRYPTOMATE_SECRET` is set and accessible.
- Triggered on: `push` to `main`.

## ✅ Setup Checklist

- [x] `.github/workflows/` structure verified
- [x] `api.yml` and `test-cryptomate.yml` committed
- [x] GitHub Secrets configured
- [x] Push triggers tested

---

## ✅ Test run for GitHub Actions – 2025-07-06

