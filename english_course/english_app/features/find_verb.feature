# encoding: utf-8
# language: it
Funzionalità: Trova un verbo

    Per imparare i verbi
    Come un italiano che vuole imparare l'inglese
    Vorrei che l'applicazione mi mostrasse un verbo in italiano
	E mi richiedesse la traduzione in inglese al presente, passato e participio passato

    Scenario: verbo idovinato
        Dato un utente studente
        Quando viene mostrato il verbo "sopportare"
		E lo studente inserisce "bear" per il presente
		E "bore" per il passato
		E "Borne" per il participio passato
        Allora viene mostrata un messaggio di successo
		E passa al verbo successivo
		
    Scenario: verbo presente errato
        Dato un utente studente
        Quando viene mostrato il verbo "sopportare"
		E lo studente non inserisce "bear" per il presente
        Allora viene mostrata un messaggio di errore
		E viene riproposto lo stesso verbo
		
    Scenario: verbo passato errato
        Dato un utente studente
        Quando viene mostrato il verbo "sopportare"
		E lo studente non inserisce "bore" per il passato
        Allora viene mostrata un messaggio di errore
		E viene riproposto lo stesso verbo
		
    Scenario: verbo participio passato errato
        Dato un utente studente
        Quando viene mostrato il verbo "sopportare"
		E lo studente non inserisce "borne" per il participio passato
        Allora viene mostrata un messaggio di errore
		E viene riproposto lo stesso verbo

	Scenario: report errori
	    Dato un utente studente
	    Quando viene termina di rispondere a tutti i verbi
	    Allora viene mostrata la statistica 
	