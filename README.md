# QPay Full Template – BPAL Setup

Detta repository innehåller en strukturerad version av QPay-mallen, anpassad för vidareutveckling under BPAL-projektet. Filstrukturen är nu uppdelad i tre huvudområden:

## 📦 Strukturell översikt

/
├── archive/ # Arkivmaterial och äldre versioner
│ ├── mockup/QPay_Full_Template/
│ └── old-versions-[v2.5.0-v5.1.0]/
│
├── modules/ # Aktiva moduler för QPay
│ ├── qpay-user-app/
│ └── qpay-web/
│
├── docs/ # Dokumentation
│ └── qpray-documentations.html
│
├── lib/ # Nuvarande utvecklingskod (.dart)
├── .github/ # GitHub metadata
├── .gitignore
└── README.md

## 🔧 Syfte

Detta projekt fungerar som bas för vidare uppbyggnad av:
- QR-betalningar
- Walletintegration
- Automatiseringsflöden via n8n, Make och Replit

## 🛠️ Nästa steg

- Koppla moduler till kodbasen
- Rensa Flutter-spår
- API-integrationer och säkerhetskontroller
