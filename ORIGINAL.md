## Configurazione MCP

Per usare gli strumenti MCP nel workspace:

- `filesystem`: aggiunto in `.vscode/mcp.json`, usa `mcp-server-filesystem` con root `/mnt/d/test/Blazor/DataAccessApp`.
- `mssql-local`: punta al DB `Nome_DataBase` su `localhost:1433` con utente `user_di_login` e password `inserisci_password`.
- `mongo`: connesso a `mongodb://localhost:27017/NomeMongoDbDelProgetto`.

Avviare/riavviare i server da VS Code con il comando “MCP: Reload Servers”.

# Repository Guidelines

**Lingua della Chat:** tutti i messaggi della chat di progetto devono essere in italiano.

## Procedura di modifica

Per apportare una modifica al codice usare sempre il seguente flusso:

1. Analizzare il progetto e identificare la modifica da eseguire.
2. Creare una checklist concettuale (1-7 punti numerati) e presentarla prima di procedere, usando sempre checkbox con bordo verde per i punti aperti e trasformandoli in bordo giallo con testo barrato quando vengono completati.
   - Esempio: 🟩 Punto aperto da completare / 🟨 ~~Punto completato~~
3. Richiedere conferma per ogni step prima di passare al successivo.
4. Dopo ogni modifica o uso di tool, validare l’esito in 1-2 frasi e correggere prima di continuare se serve.
5. Testare e verificare attentamente il codice inserito o modificato.
6. Dopo ogni modifica, riformattare il codice dei file modificati se necessario per mantenere la coerenza stilistica.
   In caso di dubbi chiarire prima di redigere la checklist, suddividere gli step complessi ottenendo conferma per ogni sotto-punto e proporre eventuali refactoring solo alla fine.