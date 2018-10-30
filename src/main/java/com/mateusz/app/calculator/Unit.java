package com.mateusz.app.calculator;


import java.util.HashMap;
import java.util.Map;

public class Unit {
    Map<String, Double> units;

    public Unit() {
        units = new HashMap<>();
        units.put("mm", 1.0);
        units.put("cm", 10.0);
        units.put("dm", 100.0);
        units.put("m", 1000.0);
        units.put("km", 1000000.0);
    }

    public Double myconverter(Double myValue, String in, String out) {
        return myValue * units.get(in) / units.get(out);
    }

}
