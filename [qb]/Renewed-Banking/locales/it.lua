Translations = {
    time = {
        weeks = "%{time} settimane fà",
        aweek = "Una settimana fà",
        days = "%{time} giorni fà",
        aday = "Un giorno fà",
        hours = "%{time} ore fà",
        ahour = "Un ora fà",
        mins = "%{time} minuti fà",
        amin = "Un minuto fà",
        secs = "Alcuni secondi fà",
    },
    logs = {
        invalid_account = "^6[^4Renewed-Banking^6] ^0 Il conto non è stato trovato (%{account})",
        broke_account = "^6[^4Renewed-Banking^6] ^0 Il conto (%{account}) è troppo in negativo, ha un saldo di $%{amount}",
        illegal_action = "^6[^4Renewed-Banking^6] ^0 %{name} ha tentato di eseguire un'azione su un account non creato.",
        no_account = "^6[^4Renewed-Banking^6] ^0 %{name} ha tentato di eseguire un'azione su un account non creato.",
        existing_account = "^6[^4Renewed-Banking^6] ^0 Il conto %{account} è già esistente."
    },
    notify = {
        invalid_amount = "Importo non valido per %{type}",
        not_enough_money = "Il conto non ha fondi sufficienti!",
        comp_transaction = "%{name} ha %{type} $%{amount}",
        fail_transfer = "Non è stato possibile eseguire il trasferimento al conto sconosciuto!",
        account_taken = "L\'ID conto è già in uso",
        unknown_player = "Il giocatore con l\'ID '%{id}' non è stato trovato.",
        loading_failed = "Impossibile caricare i dati bancari!"
    },
    menu = {
        bank_name = "Banca di Los Santos",
        view_members = "Visualizza tutti i membri del conto!",
        no_account = "Conto non trovato",
        no_account_txt = "Devi essere il creatore",
        manage_members = "Gestione membri del conto",
        manage_members_txt = "Visualizza & Aggiungi Membri",
        edit_acc_name = "Cambia il nome del conto",
        edit_acc_name_txt = "Le transazioni non aggiornano i nomi vecchi",
        remove_member_txt = "Rimuovi membri dal conto!",
        add_member = "Aggiungi cittadino al conto",
        add_member_txt = "Fai attenzione a chi aggiungi (Richiede il Citizen ID)",
        remove_member = "Sei sicuro di voler rimuovere questo cittadino?",
        remove_member_txt2 = "CitizenID: %{id}; Non è possibile tornare indietro.",
        back = "Indietro",
        view_bank = "Vedi conto bancario",
        manage_bank = "Gestisci conto bancario",
        create_account = "Crea un nuovo conto",
        create_account_txt = "Crea un nuovo conto secondario!",
        manage_account = "Gestisci un conto esistente",
        manage_account_txt = "Vedi i conti esistenti!",
        account_id = "ID Conto (SENZA SPAZI)",
        change_account_name = "Cambia il nome del conto",
        citizen_id = "Citizen/State ID",
        add_account_member = "Aggiungi un membro al conto"
    },
    ui = {
        account_title = " Conto / ",
        account = " Conto ",
        amount = "Quantità",
        comment = "Nota",
        transfer = "Azienda o Citizen ID",
        cancel = "Annulla",
        confirm = "Conferma",
        cash = "Contanti: $",
        transactions = "Transazioni",
        bank_name = "Banca di Los Santos",
        select_account = "Seleziona un conto",
        message = "Messaggio",
        accounts = "Conti",
        balance = "Saldo attuale",
        frozen = "Stato conto: Congelato",
        org = "Organizzazione",
        personal = "Personale",
        personal_acc = "Account Personale / ",
        deposit_but = "Depositare",
        withdraw_but = "Ritirare",
        transfer_but = "Trasferimento",
    }
}
Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})