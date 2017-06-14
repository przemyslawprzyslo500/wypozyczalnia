/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pl.turek.liceum.wypozyczalnia.web;

import java.util.logging.Logger;
import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.inject.Named;
import pl.turek.liceum.wypozyczalnia.model.Klient;

/**
 *
 * @author java
 */
@RequestScoped
@Named
public class RejestrujPageBean {

    private static final Logger LOG = Logger.getLogger(RejestrujPageBean.class.getName());
    @Inject
    private KontoController ctrl;

    private Klient konto = new Klient();

    private String powtorzHaslo;

    public String getPowtorzHaslo() {
        return powtorzHaslo;
    }

    public void setPowtorzHaslo(String powtorzHaslo) {
        this.powtorzHaslo = powtorzHaslo;
    }

    public Klient getKonto() {
        return konto;
    }

    public String rejestruj() {
        if (null == powtorzHaslo || !(powtorzHaslo.equals(konto.getHaslo()))) {
            // Powinien byc komunikat na stronie ale nie mamy czasu i pamieci
            return null;
        }   
        //trick - nie chcemy rozbudowywac formularza a chcemy miec kontoo klienta z NIP
        konto.setNIP("NIP-" + konto.getLogin());
        ctrl.setRejestrowaneKonto(konto);
        return "rejestrujPotwierdz";
    }

}
