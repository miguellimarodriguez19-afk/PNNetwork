# PN Network mock

Recriação visual da tela pública disponível em `https://pnatc.base44.app/`.

## Executar localmente (recomendado)

```bash
./serve.sh
```

Isso sobe o site em `http://localhost:4173` com bind em `0.0.0.0` (mais confiável para container/VM).

## Alternativa direta

```bash
python3 -m http.server 4173 --bind 0.0.0.0
```

## Se `localhost` der erro

1. Teste `http://127.0.0.1:4173`.
2. Veja se a porta está ocupada:
   ```bash
   ss -ltnp | rg 4173
   ```
3. Tente outra porta:
   ```bash
   ./serve.sh 8080
   ```
   e abra `http://localhost:8080`.
4. Se estiver em container/ambiente remoto, faça **port forwarding** da porta usada (4173/8080).

## Comando único (inicia servidor + abre no navegador)

### Linux

```bash
./serve.sh & xdg-open http://localhost:4173
```

### macOS

```bash
./serve.sh & open http://localhost:4173
```

### Windows (PowerShell)

```powershell
Start-Process "http://localhost:4173"; python -m http.server 4173 --bind 0.0.0.0
```
