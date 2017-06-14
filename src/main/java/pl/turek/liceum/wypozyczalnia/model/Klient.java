/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pl.turek.liceum.wypozyczalnia.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;

/**
 *
 * @author java
 */
@Entity
public class Klient extends Konto {

    @OneToMany(mappedBy = "klient", cascade = CascadeType.REMOVE)
    private List<Faktura> faktury = new ArrayList<>();

    private String NIP;

    public List<Faktura> getFaktury() {
        return faktury;
    }

    public String getNIP() {
        return NIP;
    }

    public void setNIP(String NIP) {
        this.NIP = NIP;
    }

    @Override
    public String toString() {
        String result = "";
        for (Faktura faktura : faktury) {
            result += " " + faktura;
        }
        return "Klient{" + "faktury=" + result + '}';
    }

}
