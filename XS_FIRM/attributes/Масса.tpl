template _tmp_830
{
    name = "template2";
    type = GRAPHICAL;
    width = 30;
    maxheight = 1000;
    columns = (1, 1);
    gap = 5;
    fillpolicy = EVEN;
    filldirection = HORIZONTAL;
    fillstartfrom = TOPLEFT;
    margins = (0, 0, 0, 0);
    gridxspacing = 0.5;
    gridyspacing = 0.5;
    version = 4.2;
    created = "29.11.2007 11:17";
    modified = "13.03.2025 14:34";
    notes = "";
    colors = "153;152;160;161;162;163;164;165;154;155;156;157;158;159;130;131;132;133;";

    row _tmp_7
    {
        name = "ASSEMBLY";
        height = 1;
        visibility = FALSE;
        usecolumns = FALSE;
        rule = "if (GetValue(\"MATERIAL_TYPE\") == \"STEEL\") then\n  Output()\nelse\n  StepOver()\nendif\n";
        contenttype = "ASSEMBLY";
        sorttype = COMBINE;

        row _tmp_8
        {
            name = "Строка";
            height = 1;
            visibility = FALSE;
            usecolumns = FALSE;
            rule = "";
            contenttype = "PART";
            sorttype = COMBINE;

            valuefield _tmp_9
            {
                name = "Вес_Закладных";
                location = (0, 0);
                formula = "round(GetValue(\"WEIGHT\"),0.01)*int(GetValue(\"USERDEFINED.RU_BOE_CMM\"))";
                maxnumoflines = 1;
                datatype = DOUBLE;
                class = "Weight";
                cacheable = TRUE;
                formatzeroasempty = FALSE;
                justify = RIGHT;
                visibility = TRUE;
                angle = 0;
                length = 9;
                decimals = 2;
                sortdirection = NONE;
                fontname = "GOST type A Tekla";
                fontcolor = 153;
                fonttype = 2;
                fontsize = 1;
                fontratio = 1;
                fontstyle = 0;
                fontslant = 0;
                pen = -1;
                oncombine = NONE;
                unit = "kg";
                aligncontenttotop = FALSE;
            };

            row _tmp_10
            {
                name = "REBAR";
                height = 1;
                visibility = FALSE;
                usecolumns = FALSE;
                rule = "";
                contenttype = "REBAR";
                sorttype = COMBINE;

                valuefield _tmp_11
                {
                    name = "Вес_арматуры_закладных";
                    location = (0, 0);
                    formula = "int(GetValue(\"USERDEFINED.RU_BOE_CMM\"))";
                    maxnumoflines = 1;
                    datatype = DOUBLE;
                    class = "Weight";
                    cacheable = TRUE;
                    formatzeroasempty = FALSE;
                    justify = RIGHT;
                    visibility = TRUE;
                    angle = 0;
                    length = 10;
                    decimals = 2;
                    sortdirection = NONE;
                    fontname = "GOST type A Tekla";
                    fontcolor = 153;
                    fonttype = 2;
                    fontsize = 1;
                    fontratio = 1;
                    fontstyle = 0;
                    fontslant = 0;
                    pen = -1;
                    oncombine = SUM;
                    unit = "kg";
                    aligncontenttotop = FALSE;
                };
            };
        };

        row _tmp_12
        {
            name = "Итого";
            height = 1;
            visibility = FALSE;
            usecolumns = FALSE;
            rule = "";
            contenttype = "";
            sorttype = COMBINE;

            valuefield _tmp_13
            {
                name = "Вес_всех_закладных";
                location = (0, 0);
                formula = "Sum(\"Вес_Закладных\")";
                maxnumoflines = 1;
                datatype = DOUBLE;
                class = "Weight";
                cacheable = TRUE;
                formatzeroasempty = FALSE;
                justify = LEFT;
                visibility = TRUE;
                angle = 0;
                length = 9;
                decimals = 2;
                sortdirection = NONE;
                fontname = "GOST type A Tekla";
                fontcolor = 153;
                fonttype = 2;
                fontsize = 1;
                fontratio = 1;
                fontstyle = 0;
                fontslant = 0;
                pen = -1;
                oncombine = NONE;
                unit = "kg";
                aligncontenttotop = FALSE;
            };
        };
    };

    row _tmp_22
    {
        name = "Отлитый_элемент";
        height = 1;
        visibility = FALSE;
        usecolumns = FALSE;
        rule = "if (GetValue(\"HIERARCHY_LEVEL\") >= 1 && GetValue(\"MATERIAL_TYPE\") == \"CONCRETE\") then\n  Output()\nelse\n  StepOver()\nendif\n";
        contenttype = "CAST_UNIT";
        sorttype = COMBINE;

        valuefield _tmp_23
        {
            name = "ОЭ_поз";
            location = (0, 0);
            formula = "GetValue(\"CAST_UNIT_POS\")";
            maxnumoflines = 1;
            datatype = STRING;
            class = "";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 8;
            decimals = 0;
            sortdirection = ASCENDING;
            fontname = "GOST type A Tekla";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 1;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = -1;
            oncombine = NONE;
        };

        row _tmp_24
        {
            name = "PART_1";
            height = 1;
            visibility = FALSE;
            usecolumns = FALSE;
            rule = "";
            contenttype = "PART";
            sorttype = COMBINE;

            valuefield _tmp_25
            {
                name = "PART_POS_поле";
                location = (0, 0);
                formula = "GetValue(\"PART_POS\")";
                maxnumoflines = 1;
                datatype = STRING;
                class = "";
                cacheable = TRUE;
                formatzeroasempty = FALSE;
                justify = LEFT;
                visibility = TRUE;
                angle = 0;
                length = 10;
                decimals = 0;
                sortdirection = ASCENDING;
                fontname = "GOST type A Tekla";
                fontcolor = 153;
                fonttype = 2;
                fontsize = 1;
                fontratio = 1;
                fontstyle = 0;
                fontslant = 0;
                pen = -1;
                oncombine = NONE;
            };

            row _tmp_26
            {
                name = "REBAR_1";
                height = 1;
                visibility = FALSE;
                usecolumns = FALSE;
                rule = "";
                contenttype = "REBAR";
                sorttype = COMBINE;

                valuefield _tmp_27
                {
                    name = "Общий_вес_арматуры_каркасов";
                    location = (0, 0);
                    formula = "round(GetValue(\"WEIGHT_TOTAL\"),0.01)";
                    datatype = DOUBLE;
                    class = "Weight";
                    cacheable = TRUE;
                    justify = RIGHT;
                    visibility = TRUE;
                    angle = 0;
                    length = 8;
                    decimals = 2;
                    sortdirection = NONE;
                    fontname = "GOST type A Tekla";
                    fontcolor = 153;
                    fonttype = 2;
                    fontsize = 1;
                    fontratio = 1;
                    fontstyle = 0;
                    fontslant = 0;
                    pen = -1;
                    oncombine = SUM;
                    unit = "kg";
                };
            };
        };

        row _tmp_28
        {
            name = "Строка_1";
            height = 1;
            visibility = FALSE;
            usecolumns = FALSE;
            rule = "";
            contenttype = "";
            sorttype = COMBINE;

            valuefield _tmp_29
            {
                name = "Итого_Общий_вес_арматуры_каркасов";
                location = (0.2789306640625, 0);
                formula = "Sum(\"Общий_вес_арматуры_каркасов\")";
                datatype = DOUBLE;
                class = "Weight";
                cacheable = TRUE;
                justify = LEFT;
                visibility = TRUE;
                angle = 0;
                length = 9;
                decimals = 2;
                sortdirection = NONE;
                fontname = "GOST type A Tekla";
                fontcolor = 153;
                fonttype = 2;
                fontsize = 1;
                fontratio = 1;
                fontstyle = 0;
                fontslant = 0;
                pen = -1;
                oncombine = NONE;
                unit = "kg";
            };
        };
    };

    row _tmp_32
    {
        name = "Сетка_БЧ";
        height = 1;
        visibility = FALSE;
        usecolumns = FALSE;
        rule = "if GetValue(\"USERDEFINED.RU_RDR_DRW\")!= \"Да\" then Output() else StepOver() endif";
        contenttype = "MESH";
        sorttype = COMBINE;

        valuefield _tmp_33
        {
            name = "Сетка_масса_всех";
            location = (0, 0);
            formula = "round(GetValue(\"WEIGHT\"),0.01)";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Weight";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = LEFT;
            visibility = TRUE;
            angle = 0;
            length = 9;
            decimals = 2;
            sortdirection = NONE;
            fontname = "GOST type A Tekla";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 1;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = -1;
            oncombine = SUM;
            unit = "kg";
        };
    };

    row _tmp_36
    {
        name = "REBAR_2";
        height = 1;
        visibility = FALSE;
        usecolumns = FALSE;
        rule = "if (GetValue(\"CLASS\") == 500) then\n  Output()\nelse\n  StepOver()\nendif\n";
        contenttype = "REBAR";
        sorttype = COMBINE;

        valuefield _tmp_37
        {
            name = "WEIGHT_TOTAL_поле";
            location = (0, 0);
            formula = "round(GetValue(\"WEIGHT\"),0.01)*GetValue(\"NUMBER\")";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Weight";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = LEFT;
            visibility = TRUE;
            angle = 0;
            length = 9;
            decimals = 2;
            sortdirection = NONE;
            fontname = "GOST type A Tekla";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 1;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = -1;
            oncombine = SUM;
            unit = "kg";
        };
    };

    row _tmp_45
    {
        name = "Строка_2";
        height = 1;
        visibility = FALSE;
        usecolumns = FALSE;
        rule = "if (GetValue(\"MATERIAL_TYPE\") != \"STEEL\" && GetValue(\"MAINPART.CLASS_ATTR\") != 700 && GetValue(\"MATERIAL_TYPE\") != \"CONCRETE\") then\n  Output()\nelse\n  StepOver()\nendif\n";
        contenttype = "ASSEMBLY";
        sorttype = COMBINE;

        row _tmp_46
        {
            name = "Строка_3";
            height = 1;
            visibility = FALSE;
            usecolumns = FALSE;
            rule = "";
            contenttype = "PART";
            sorttype = COMBINE;

            valuefield _tmp_47
            {
                name = "Вес_деталей";
                location = (0, 0);
                formula = "round(GetValue(\"WEIGHT\"),0.01)";
                maxnumoflines = 1;
                datatype = DOUBLE;
                class = "Weight";
                cacheable = TRUE;
                formatzeroasempty = FALSE;
                justify = RIGHT;
                visibility = TRUE;
                angle = 0;
                length = 9;
                decimals = 2;
                sortdirection = NONE;
                fontname = "GOST type A Tekla";
                fontcolor = 153;
                fonttype = 2;
                fontsize = 1;
                fontratio = 1;
                fontstyle = 0;
                fontslant = 0;
                pen = -1;
                oncombine = SUM;
                unit = "kg";
            };

            row _tmp_48
            {
                name = "Строка_4";
                height = 1;
                visibility = FALSE;
                usecolumns = FALSE;
                rule = "";
                contenttype = "REBAR";
                sorttype = COMBINE;

                valuefield _tmp_49
                {
                    name = "Вес_всей_арматуры";
                    location = (0, 0);
                    formula = "round(GetValue(\"WEIGHT_TOTAL\"),0.01)";
                    maxnumoflines = 1;
                    datatype = DOUBLE;
                    class = "Weight";
                    cacheable = TRUE;
                    formatzeroasempty = FALSE;
                    justify = RIGHT;
                    visibility = TRUE;
                    angle = 0;
                    length = 10;
                    decimals = 2;
                    sortdirection = NONE;
                    fontname = "GOST type A Tekla";
                    fontcolor = 153;
                    fonttype = 2;
                    fontsize = 1;
                    fontratio = 1;
                    fontstyle = 0;
                    fontslant = 0;
                    pen = -1;
                    oncombine = SUM;
                    unit = "kg";
                };
            };
        };

        row _tmp_50
        {
            name = "Строка_5";
            height = 1;
            visibility = FALSE;
            usecolumns = FALSE;
            rule = "";
            contenttype = "";
            sorttype = COMBINE;

            valuefield _tmp_51
            {
                name = "ValueField(Полезначения)_19";
                location = (0, 0);
                formula = "Sum(\"Вес_деталей\")+Sum(\"Вес_всей_арматуры\")";
                maxnumoflines = 1;
                datatype = DOUBLE;
                class = "Weight";
                cacheable = TRUE;
                formatzeroasempty = FALSE;
                justify = LEFT;
                visibility = TRUE;
                angle = 0;
                length = 9;
                decimals = 2;
                sortdirection = NONE;
                fontname = "GOST type A Tekla";
                fontcolor = 153;
                fonttype = 2;
                fontsize = 1;
                fontratio = 1;
                fontstyle = 0;
                fontslant = 0;
                pen = -1;
                oncombine = NONE;
                unit = "kg";
            };
        };
    };

    row _tmp_54
    {
        name = "CAST_UNIT";
        height = 1;
        visibility = FALSE;
        usecolumns = FALSE;
        rule = "if (GetValue(\"HIERARCHY_LEVEL\") == 0) then\n  Output()\nelse\n  StepOver()\nendif";
        contenttype = "CAST_UNIT";
        sorttype = COMBINE;

        valuefield _tmp_55
        {
            name = "Вес_панели";
            location = (0, 0);
            formula = "GetValue(\"WEIGHT\")";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Weight";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = RIGHT;
            visibility = TRUE;
            angle = 0;
            length = 8;
            decimals = 0;
            sortdirection = NONE;
            fontname = "GOST type A Tekla";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 1;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = -1;
            oncombine = NONE;
            unit = "kg";
        };
    };

    row _tmp_264
    {
        name = "PART";
        height = 55;
        visibility = TRUE;
        usecolumns = FALSE;
        rule = "";
        contenttype = "DRAWING";
        sorttype = COMBINE;

        text _tmp_389
        {
            name = "Текст_13";
            x1 = 5.578125;
            y1 = 49;
            x2 = 5.578125;
            y2 = 49;
            string = "Масса";
            fontname = "GOST type A Tekla";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 3.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = CENTERED;
            pen = -1;
        };

        valuefield _tmp_596
        {
            name = "ValueField (Поле значения)";
            location = (3.78125, 19.5);
            formula = "Sum(\"Вес_всех_закладных\")+Sum(\"Итого_Общий_вес_арматуры_каркасов\")";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Weight";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 8;
            decimals = 2;
            sortdirection = ASCENDING;
            fontname = "GOST type A Tekla";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 3.5;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = -1;
            oncombine = NONE;
            aligncontenttotop = FALSE;
        };

        lineorarc _tmp_0
        {
            name = "LineOrArc (Отрезок или дуга)_2";
            x1 = 0;
            y1 = 40;
            x2 = 22;
            y2 = 40;
            pen = -1;
            color = 162;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        text _tmp_3
        {
            name = "Текст";
            x1 = 2.56;
            y1 = 44.738;
            x2 = 2.56;
            y2 = 44.738;
            string = "изделия,кг";
            fontname = "GOST type A Tekla";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 3.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = CENTERED;
            pen = -1;
        };

        rectangle _tmp_0
        {
            name = "Прямоугольник";
            x1 = 0;
            y1 = 0;
            x2 = 22;
            y2 = 55;
            filled = FALSE;
            filltype = -1;
            pen = -1;
            color = 162;
            linetype = 1;
            linewidth = 1;
        };
    };
};
