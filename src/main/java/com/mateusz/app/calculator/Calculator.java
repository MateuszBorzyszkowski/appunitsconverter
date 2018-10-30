package com.mateusz.app.calculator;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Calculator {
    private Double MyValue;
    private String unitInput;
    private String unitOutput;


    public Double calc() {
        Unit unit = new Unit();
        return unit.myconverter(MyValue, unitInput, unitOutput);
    }
}
