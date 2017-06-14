/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pl.turek.liceum.wypozyczalnia.ejb.endpoints;

import java.util.List;
import java.util.logging.Logger;
import javax.ejb.EJB;
import javax.ejb.Stateful;
import pl.turek.liceum.wypozyczalnia.ejb.facades.FakturaFacade;
import pl.turek.liceum.wypozyczalnia.ejb.facades.KontoFacade;
import pl.turek.liceum.wypozyczalnia.model.Faktura;
import pl.turek.liceum.wypozyczalnia.model.Klient;
import pl.turek.liceum.wypozyczalnia.model.Konto;

/**
 *
 * @author java
 */
@Stateful
public class KontoEndpoint {

    @EJB
    private KontoFacade kontoFacade;

    private static final Logger LOG = Logger.getLogger(KontoEndpoint.class.getName());

    public Konto pobierzKontoDoEdycji(Konto konto) {
        Konto encja = kontoFacade.find(konto.getId());
        kontoFacade.refresh(encja);
        // znow trick!
        LOG.info(encja.toString());
        return encja;
    }

    public void zapiszKontoPoEdycji(Konto k) {
        kontoFacade.edit(k);
    }

    public void zarejestrujKonto(Konto k) {
        kontoFacade.create(k);
    }

    public List<Konto> pobierzWszystkieKonta() {
        return kontoFacade.findAll();
    }

    public void usunKonto(Konto konto) {
        kontoFacade.remove(konto);
    }

    public void aktywujKonto(Konto konto) {
        ustawKontoJakoAktywne(konto, true);
    }

    public void dezaktywujKonto(Konto konto) {
        ustawKontoJakoAktywne(konto, false);
    }

    private void ustawKontoJakoAktywne(Konto konto, boolean stan) {
        Konto encja = kontoFacade.find(konto.getId()); //uzyskano encje w stanie zarzadzanym
        encja.setAktywne(stan);
    }
    
    //Nie dosc ze to trick to jeszcze powinno byc w FakturaEndpoint
    @EJB
    private FakturaFacade fakturaFacade;
    public void dodajLosowaFaktureDoKlienta(Klient klient) {
        Faktura f = new Faktura();
        f.setWartosc((int)System.currentTimeMillis()%1000000);
        f.setKlient(klient);
        klient.getFaktury().add(f);
        fakturaFacade.create(f);
    }

}
