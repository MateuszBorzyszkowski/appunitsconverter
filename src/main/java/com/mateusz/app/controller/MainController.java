package com.mateusz.app.controller;

import com.mateusz.app.calculator.Calculator;
import com.mateusz.app.dto.IndexParameters;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

    @ModelAttribute("indexParameters")
    public IndexParameters setUpIndexForm() {
        return new IndexParameters();
    }

    @RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
    public String index () {

        return "index";
    }

    @PostMapping("/second")
    public String viewSecondPage(@ModelAttribute("indexParameters") IndexParameters indexParameters, Model model) {

        Calculator cal = new Calculator();
        cal.setMyValue(indexParameters.getMyValue());
        cal.setUnitInput(indexParameters.getUnitInput());
        cal.setUnitOutput(indexParameters.getUnitOutput());

        model.addAttribute("myValue", cal.calc());
        model.addAttribute("unitInput",indexParameters.getUnitInput());
        model.addAttribute("unitOutput", indexParameters.getUnitOutput());

        return "second";
    }



}