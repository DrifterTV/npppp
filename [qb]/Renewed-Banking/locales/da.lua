Translations = {
    time = {
        weeks = "%{time} uger siden",
        aweek = "En uge siden",
        days = "%{time} dage siden",
        aday = "En dag siden",
        hours = "%{time} timer siden",
        ahour = "En time siden",
        mins = "%{time} minutter siden",
        amin = "Et minut siden",
        secs = "Et par sekudner siden",
    },
    logs = {
        invalid_account = "^6[^4Renewed-Banking^6] ^0 Konto fundet (%{account})",
        broke_account = "^6[^4Renewed-Banking^6] ^0 Konto(%{account}) er for fattig med %{amount} DKK",
        illegal_action = "^6[^4Renewed-Banking^6] ^0 %{name} Prøvede at udføre en aktion på en konto han ikke har lavet.",
        no_account = "^6[^4Renewed-Banking^6] ^0 %{name} Prøvede at udføre en aktion på en konto han ikke har lavet.",
        existing_account = "^6[^4Renewed-Banking^6] ^0 Konto %{account} eksistere allerede."
    },
    notify = {
        invalid_amount = "Ugyldig mængde %{type}",
        not_enough_money = "Kontoen har ingen penge",
        comp_transaction = "%{name} har %{type} %{amount} DKK",
        fail_transfer = "Fejl! Kunne ikke overføre til den ukendte konto!",
        account_taken = "Konto ID er allerede i brug...",
        unknown_player = "Spiller med ID '%{id}' blev ikke fundet...",
        loading_failed = "Fejl! Kunne ikke finde Bank Data!"
    },
    menu = {
        bank_name = "Los Santos Bank",
        view_members = "Se alle konto medlemmer!",
        no_account = "Konto blev ikke fundet",
        no_account_txt = "Du skal være ejeren af kontoen!",
        manage_members = "Styre konto medlemmer",
        manage_members_txt = "Se og tilføj Konto Medlemmer!",
        edit_acc_name = "Skift Konto navn",
        edit_acc_name_txt = "Transaktioner ville ikke opdatere gamle navne",
        remove_member_txt = "Fjern konto medlemmer!",
        add_member = "Tilføj borger til konto!",
        add_member_txt = "Vær forsigtig med hvem du tilføjer (Skal bruge Borger ID)",
        remove_member = "Er du sikker på du ville fjerne borger?",
        remove_member_txt2 = "BorgerID: %{id}; Der er ingen vej tilbage!",
        back = "Gå Tilbage",
        view_bank = "Vis Bank Konto",
        manage_bank = "Styr Bank Konto",
        create_account = "Lav en ny Konto",
        create_account_txt = "Lav en ny underbankskonto!",
        manage_account = "Styr eksisterende Kontoer",
        manage_account_txt = "Vis eksisterende Kontoer!",
        account_id = "Konto ID (INGEN MELLEMRUM)",
        change_account_name = "Skift Konto Navn",
        citizen_id = "Borger/Spiller ID",
        add_account_member = "Tilføj Konto Medlem",
    },
    ui = {
        account_title = " Konto / ",
        account = " Konto ",
        amount = "Mængde",
        comment = "Kommentar",
        transfer = "Virksomhed eller Borger ID",
        cancel = "Annuller",
        confirm = "Send",
        cash = "Kontanter: DKK",
        transactions = "Transaktioner",
        bank_name = "Los Santos Bank",
        select_account = "Vælg hvilken som helst konto",
        message = "Beksed",
        accounts = "Kontoer",
        balance = "Tilgængelig Saldo",
        frozen = "Konto Status: Frosset",
        org = "Organisation",
        personal = "Personlig",
        personal_acc = "Personlig Konto / ",
        deposit_but = "Depositum",
        withdraw_but = "Hæv Penge",
        transfer_but = "Overførsel"
    }
}
Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})