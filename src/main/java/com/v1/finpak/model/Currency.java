package com.v1.finpak.model;

import java.util.Objects;

public class Currency {
    private String logo;
    private String country;
    private String abbr;
    private float buyAt;
    private float sellAt;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Currency currency = (Currency) o;
        return Float.compare(currency.buyAt, buyAt) == 0 && Float.compare(currency.sellAt, sellAt) == 0 && Objects.equals(logo, currency.logo) && Objects.equals(country, currency.country) && Objects.equals(abbr, currency.abbr);
    }

    @Override
    public int hashCode() {
        return Objects.hash(logo, country, abbr, buyAt, sellAt);
    }

    public Currency(String logo, String country, String abbr, float buyAt, float sellAt) {
        this.logo = logo;
        this.country = country;
        this.abbr = abbr;
        this.buyAt = buyAt;
        this.sellAt = sellAt;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }

    public String getAbbr() {
        return abbr;
    }

    public void setAbbr(String abbr) {
        this.abbr = abbr;
    }

    public float getBuyAt() {
        return buyAt;
    }

    public void setBuyAt(float buyAt) {
        this.buyAt = buyAt;
    }

    public float getSellAt() {
        return sellAt;
    }

    public void setSellAt(float sellAt) {
        this.sellAt = sellAt;
    }
}
