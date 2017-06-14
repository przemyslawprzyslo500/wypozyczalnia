/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pl.turek.liceum.wypozyczalnia.ejb.facades;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import pl.turek.liceum.wypozyczalnia.model.Faktura;

/**
 *
 * @author java
 */
@Stateless
public class FakturaFacade extends AbstractFacade<Faktura> {

    @PersistenceContext(unitName = "pl.liceum.turek_Wypozyczalnia_war_PU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public FakturaFacade() {
        super(Faktura.class);
    }
    
}
