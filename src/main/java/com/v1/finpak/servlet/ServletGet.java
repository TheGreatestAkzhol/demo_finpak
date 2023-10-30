package com.v1.finpak.servlet;

import com.v1.finpak.model.Currency;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.*;

@WebServlet(name = "ServletGet", value = "/ServletGet")
public class ServletGet extends HttpServlet {
    private Set<Currency> currencies = new HashSet<>();
    static Currency currency1 = new Currency("https://flagicons.lipis.dev/flags/4x3/ru.svg", "Russia", "RUB", (float) 6.3, 5);
    static Currency currency2 = new Currency("https://flagicons.lipis.dev/flags/4x3/um.svg", "United state of America", "USD", 400, 500);
    static Currency currency3 = new Currency("https://flagicons.lipis.dev/flags/4x3/eu.svg", "Europe", "EURO", 500, 1000);
    static Currency currency4 = new Currency("https://flagicons.lipis.dev/flags/4x3/kg.svg", "Republic Kyrgyzstan", "KRG", 500, 1000);
    static Currency currency5 = new Currency("https://flagicons.lipis.dev/flags/4x3/jp.svg", "Japan", "YEN", 500, 1000);

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getSession().setAttribute("currencies", currencies);
        response.sendRedirect("/finpak/currency");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String logo = request.getParameter("logo");
        float buyAt = Float.parseFloat(request.getParameter("buyAt"));
        float sellAt = Float.parseFloat(request.getParameter("sellAt"));
        switch (logo) {
            case "https://flagicons.lipis.dev/flags/4x3/ru.svg":
                currency1.setBuyAt(buyAt);
                currency1.setSellAt(sellAt);
                currencies.add(currency1);
                break;
            case "https://flagicons.lipis.dev/flags/4x3/um.svg":
                currency2.setBuyAt(buyAt);
                currency2.setSellAt(buyAt);
                currencies.add(currency2);
                break;
            case "https://flagicons.lipis.dev/flags/4x3/eu.svg":
                currency3.setBuyAt(buyAt);
                currency3.setSellAt(buyAt);
                currencies.add(currency3);
                break;
            case "https://flagicons.lipis.dev/flags/4x3/kg.svg":
                currency4.setBuyAt(buyAt);
                currency4.setSellAt(buyAt);
                currencies.add(currency4);
                break;
            case "https://flagicons.lipis.dev/flags/4x3/jp.svg":
                currency5.setBuyAt(buyAt);
                currency5.setSellAt(buyAt);
                currencies.add(currency5);
                break;
            default:
                System.out.println("There's no such currency like this" + logo);
        }
        response.sendRedirect("/finpak/ServletGet");
    }
}