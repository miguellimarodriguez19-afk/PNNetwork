# PN Network mock

Recriação visual da tela pública disponível em `https://pnatc.base44.app/`.

## Executar localmente

```bash
python3 -m http.server 4173
```

Abra: `http://localhost:4173`

## Comando único (inicia servidor + abre no navegador)

### Linux

```bash
python3 -m http.server 4173 & xdg-open http://localhost:4173
```

### macOS

```bash
python3 -m http.server 4173 & open http://localhost:4173
```

### Windows (PowerShell)

```powershell
Start-Process "http://localhost:4173"; python -m http.server 4173
```
