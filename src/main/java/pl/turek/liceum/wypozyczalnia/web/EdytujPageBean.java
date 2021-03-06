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
import pl.turek.liceum.wypozyczalnia.model.Konto;

/**
 *
 * @author java
 */
@RequestScoped
@Named
public class EdytujPageBean {
    private static final Logger LOG = Logger.getLogger(EdytujPageBean.class.getName());
    @Inject
    private KontoController ctrl;
    
    public Konto getKonto() {
        return ctrl.getEdytowaneKonto();
    }
    
    public String edytuj() {
        ctrl.zapiszKontoPoEdycji();
        return "sukces";
    }

}
