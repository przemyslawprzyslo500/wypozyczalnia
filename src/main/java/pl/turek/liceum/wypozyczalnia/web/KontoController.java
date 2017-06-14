/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pl.turek.liceum.wypozyczalnia.web;

import java.io.Serializable;
import java.util.List;
import java.util.logging.Logger;
import javax.ejb.EJB;
import javax.enterprise.context.SessionScoped;
import pl.turek.liceum.wypozyczalnia.ejb.endpoints.KontoEndpoint;
import pl.turek.liceum.wypozyczalnia.model.Klient;
import pl.turek.liceum.wypozyczalnia.model.Konto;

/**
 *
 * @author java
 */
@SessionScoped
public class KontoController implements Serializable {

    @EJB
    private KontoEndpoint kontoEndpoint;

    private static final Logger LOG = Logger.getLogger(KontoController.class.getName());

    private Konto rejestrowaneKonto;

    private Konto edytowaneKonto;

    public void pobierzKontoDoEdycji(Konto konto) {
        edytowaneKonto = kontoEndpoint.pobierzKontoDoEdycji(konto);
    }

    public void zapiszKontoPoEdycji() {
        if (null == edytowaneKonto) {
            throw new IllegalArgumentException("Proba edytacji z pominieciem formularza");
        }
        kontoEndpoint.zapiszKontoPoEdycji(edytowaneKonto);
        edytowaneKonto = null;

    }

    public Konto getEdytowaneKonto() {
        return edytowaneKonto;
    }

    public Konto getRejestrowaneKonto() {
        return rejestrowaneKonto;
    }

    public void setRejestrowaneKonto(Konto rejestrowaneKonto) {
        this.rejestrowaneKonto = rejestrowaneKonto;
    }

    public void zarejestrujKonto() {
        if (null == rejestrowaneKonto) {
            throw new IllegalArgumentException("Proba rejestracji z pominieciem formularza");
        }
        kontoEndpoint.zarejestrujKonto(rejestrowaneKonto);
        rejestrowaneKonto = null;
    }

    public List<Konto> pobierzWszystkieKonta() {
        return kontoEndpoint.pobierzWszystkieKonta();
    }

    public void usunKonto(Konto konto) {
        kontoEndpoint.usunKonto(konto);
    }

    public void aktywujKonto(Konto konto) {
        kontoEndpoint.aktywujKonto(konto);
    }

    public void dezaktywujKonto(Konto konto) {
        kontoEndpoint.dezaktywujKonto(konto);
    }

    //Nie dosc ze to trick to jeszcze powinno byc w FakturaController
    public void dodajLosowaFaktureDoKlienta(Klient klient) {
        kontoEndpoint.dodajLosowaFaktureDoKlienta(klient);
    }
}
