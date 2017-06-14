/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pl.turek.liceum.wypozyczalnia.web;

import java.util.List;
import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.inject.Named;
import pl.turek.liceum.wypozyczalnia.model.Klient;
import pl.turek.liceum.wypozyczalnia.model.Konto;

/**
 *
 * @author java
 */
@RequestScoped
@Named
public class ListaPageBean {
    
    @Inject
    private KontoController ctrl;
    
    public List<Konto> getKonta() {
        return ctrl.pobierzWszystkieKonta();
    }
    
    public void usunKonto(Konto konto) {
        ctrl.usunKonto(konto);
    }
    
    public void aktywujKonto(Konto konto) {
        ctrl.aktywujKonto(konto);
    }

    public void dezaktywujKonto(Konto konto) {
        ctrl.dezaktywujKonto(konto);
    }
    
    public String edytujKonto(Konto konto) {
        ctrl.pobierzKontoDoEdycji(konto);
        return "edytuj";
    }
    
    public void dodajLosowaFaktureDoKlienta(Konto konto) {
        if (konto instanceof Klient)
            ctrl.dodajLosowaFaktureDoKlienta((Klient)konto);
    }
    
}
