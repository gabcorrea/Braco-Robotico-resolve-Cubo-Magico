MODULE MainModule
    CONST robtarget p10:=[[318.70,-13.67,471.16],[0.0253016,-0.394649,-0.918458,0.00682157],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];   !POSIÇÃO PADRÃO (CIMA)                          <<
    CONST robtarget p30:=[[320.25,201.08,272.40],[0.259934,0.277737,0.655227,-0.652667],[0,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];      !POSIÇÃO ESQUERDA (REFERÊNCIA DO ROBÔ)          <<
    CONST robtarget p40:=[[278.28,-118.50,274.85],[0.650127,-0.684681,-0.217718,-0.247277],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];   !POSIÇÃO DIREITA (REFERÊNCIA DO ROBÔ)           <<    
    
    CONST robtarget p11:=[[318.72,-7.85,472.86],[0.0253152,0.365754,-0.930344,-0.00659645],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];     !D APÓS HORÁRIO
    CONST robtarget p12:=[[318.72,-12.14,471.11],[0.0128513,-0.931854,-0.361886,0.022812],[-1,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];      !D1 APÓS ANTI-HORÁRIO
    CONST robtarget p13:=[[318.72,-12.13,471.11],[0.00658412,0.921755,-0.386889,-0.0253209],[-1,0,2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];      !D2 APÓS 180º
    CONST robtarget p14:=[[318.72,-12.14,571.09],[0.00556973,-0.9971,-0.0714471,0.0255902],[-1,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];       !AUXILIAR P13 PARA P10
    
    CONST jointtarget jpos10:=[[-2.20872,2.78367,13.3396,0.320433,76.8641,-46.2186],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];	                !GIRA HORÁRIO
    CONST jointtarget jpos11:=[[-2.25121,2.78876,13.3434,0.317686,76.8499,135.2142],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];                     !GIRA ANTI-HORÁRIO
    CONST jointtarget jpos12:=[[-2.25139,2.78889,13.3435,0.317466,76.8479,223.215],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];                  !GIRA 180º
	
	CONST robtarget p31:=[[319.43,201.63,262.39],[0.665117,0.644344,0.25671,-0.276659],[0,-1,2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];     !APÓS GIRAR FACE PARA BAIXO
    CONST robtarget p32:=[[328.28,202.02,263.37],[0.29781,0.249502,-0.647924,0.655173],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];       !APÓS GIRAR FACE PARA CIMA
    CONST robtarget p33:=[[323.32,201.07,261.45],[0.672902,0.6358,-0.273031,0.261562],[0,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];        !APÓS GIRAR FACE 180º
    
	CONST jointtarget jpos30:=[[39.8254,42.3526,6.30019,-55.4065,118.585,191.417],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];                      !GIRA FACE PARA BAIXO
	CONST jointtarget jpos31:=[[40.0892,41.9381,7.01137,-55.0201,118.556,11.81],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];                      !GIRA FACE PARA CIMA
    CONST jointtarget jpos32:=[[39.8251,42.3532,6.29932,-55.4025,118.583,-79.416],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];                      !GIRA FACE 180º
    CONST jointtarget jpos33:=[[34.1511,23.2635,25.6202,-60.5993,118.251,13.0732],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];                       !GIRA PADRÃO
    
    CONST robtarget p41:=[[283.92,2.30,392.73],[0.0484575,-0.70916,-0.703204,0.0157611],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];      !POSIÇÃO INCIAL COM EIXO 6 MODIFICADO (R)
    CONST robtarget p51:=[[318.57,-16.97,470.54],[0.0244844,-0.39393,-0.918808,-0.00350344],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];     !POSIÇÃO INCIAL COM EIXO 6 MODIFICADO (L)
    
    !Novos pontos irão aparecer abaixo do pTeste!!!
    !pTeste = POSIÇÃO INTERMEDIARIA PARA EXECUTAR ALGUNS MOVIMENTOS
    CONST robtarget pTeste:=[[425.86,107.70,374.36],[0.190159,0.213683,0.665854,-0.68907],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
    !VARIÁVEIS
    VAR num array {30};
	VAR num contador := 1;
    CONST robtarget p34:=[[282.02,145.93,376.66],[0.421107,0.384921,-0.571234,0.590082],[0,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget p100:=[[313.76,203.86,258.76],[0.284303,0.281027,0.633219,-0.662744],[0,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget p15:=[[318.66,-14.89,470.65],[0.0251475,-0.403085,-0.91479,0.00704516],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget p16:=[[318.89,-15.70,470.91],[0.0277513,-0.404016,-0.914316,0.00522876],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
    VAR num Exemp := 0;
    VAR num Exemp1 := 0;
    CONST robtarget p20:=[[326.29,201.34,264.53],[0.25762,0.279707,0.640343,-0.667351],[0,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
    PROC main()
        !CONFERIR SENTIDO DE ROTAÇÃO (HORÁRIO E ANTI-HORÁRIO)
        AccSet 30,30;
        !MoveAbsJ [[0,0,0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs, v1000, z50, tool0;
                                           !VELOCIDADE
        ConfL\Off;
                                              !DESATIVA BLOQUEIO DE GIRO 90º
        
        WHILE contador < 30 DO
        A:
		TPErase;
        TPWrite "Posição " \ Num:=contador;
        TPReadFK reg1, "Escolha", "R", "L", "F", "B", "MAIS";
        TEST reg1
        CASE 1:
            TPReadFK reg2, "Selecione uma das opções", "R", "R'", "R2", stEmpty,"VOLTAR";
            TEST reg2
                CASE 1:     reg2 := 1;
                CASE 2:     reg2 := 2;
                CASE 3:     reg2 := 3;
                CASE 5:     GOTO A;
            ENDTEST
            array{contador} := reg2;
            INCR contador;
            reg2 := 0;
        CASE 2:
            TPReadFK reg2, "Selecione uma das opções","L", "L'", "L2", stEmpty, "VOLTAR";
            TEST reg2
                CASE 1:     reg2 := 4;
                CASE 2:     reg2 := 5;
                CASE 3:     reg2 := 6;
                CASE 5:     GOTO A;
            ENDTEST
            array{contador} := reg2;
            INCR contador;
            reg2 := 0;
        CASE 3:
            TPReadFK reg2, "Selecione uma das opções","F", "F'", "F2", stEmpty, "VOLTAR";
            TEST reg2
                CASE 1:     reg2 := 7;
                CASE 2:     reg2 := 8;
                CASE 3:     reg2 := 9;
                CASE 5:     GOTO A;
            ENDTEST
            array{contador} := reg2;
            INCR contador;
            reg2 := 0;
        CASE 4:
            TPReadFK reg2, "Selecione uma das opções","B", "B'", "B2", stEmpty, "VOLTAR";
            TEST reg2
                CASE 1:     reg2 := 10;
                CASE 2:     reg2 := 11;
                CASE 3:     reg2 := 12;
                CASE 5:     GOTO A;
            ENDTEST
            array{contador} := reg2;
            INCR contador;
            reg2 := 0;
        CASE 5:
            TPErase;
            TPReadFK reg3, "Digite o movimento ", "U", "D", "Finalizar", "Exemplos", "VOLTAR";
            TEST reg3
            CASE 1:
                TPReadFK reg3, "Selecione uma das opções", "U", "U'", "U2", stEmpty, "VOLTAR";
                TEST reg3
                    CASE 1:     reg3 := 13;
                    CASE 2:     reg3 := 14;
                    CASE 3:     reg3 := 15;
                    CASE 5:     GOTO A;
                ENDTEST
                array{contador} := reg3;
                INCR contador;
                reg3 := 0;
            CASE 2:
                TPReadFK reg3, "Selecione uma das opções", "D", "D'", "D2", stEmpty, "VOLTAR";
                TEST reg3
                    CASE 1:     reg3 := 16;
                    CASE 2:     reg3 := 17;
                    CASE 3:     reg3 := 18;
                    CASE 5:     GOTO A;
                ENDTEST
                array{contador} := reg3;
                INCR contador;
                reg3 := 0;
            CASE 3:
                TPReadFK reg5, "Deseja Finalizar?", stEmpty, "SIM", stEmpty, "NÃO", stEmpty;
                TEST reg5
                CASE 2:
            REPEAT:
                IF contador < 30 THEN
                    Incr contador;
                    GOTO REPEAT;
                ENDIF
                IF contador >= 30 THEN
                    GOTO ROT;
                ENDIF
                CASE 4:
                    GOTO A;
                ENDTEST
            CASE 4:
                TPReadFK Exemp, "Selecione o exemplo", stEmpty, stEmpty, "2x All", stEmpty, "VOLTAR";
                    TEST Exemp
                    CASE 3:
                        array{contador} := 3;
                        Incr contador;
                        array{contador} := 6;
                        Incr contador;
                        array{contador} := 9;
                        Incr contador;
                        array{contador} := 12;
                        Incr contador;
                        array{contador} := 15;
                        Incr contador;
                        array{contador} := 18;
                        Incr contador;
                        array{contador} := 3;
                        Incr contador;
                        array{contador} := 6;
                        Incr contador;
                        array{contador} := 9;
                        Incr contador;
                        array{contador} := 12;
                        Incr contador;
                        array{contador} := 15;
                        Incr contador;
                        array{contador} := 18;
                        Incr contador;
                        REPEAT2:
                        IF contador < 30 THEN
                            Incr contador;
                            GOTO REPEAT2;
                        ENDIF
                            IF contador >= 30 THEN
                            GOTO ROT;
                        ENDIF
                    CASE 5:
                        GOTO A;
                    ENDTEST
            CASE 5:
                GOTO A;
            ENDTEST
        ENDTEST
        ENDWHILE
        
        ROT:
        
        FOR i FROM  1 TO contador-1 DO
        TEST array{i}
        CASE 1:
        TPErase;
        TPWrite "Executando: R ";
        R;
        CASE 2:
        TPErase;
        TPWrite "Executando: R' ";
        R1;
        CASE 3:
        TPErase;
        TPWrite "Executando: R2 ";
        R2;
        CASE 4:
        TPErase;
        TPWrite "Executando: L ";
        L;
        CASE 5:
        TPErase;
        TPWrite "Executando: L' ";
        L1;
        CASE 6:
        TPErase;
        TPWrite "Executando: L2 ";
        L2;
        CASE 7:
        TPErase;
        TPWrite "Executando: F ";
        F;
        CASE 8:
        TPErase;
        TPWrite "Executando: F' ";
        F1;
        CASE 9:
        TPErase;
        TPWrite "Executando: F2 ";
        F2;
        CASE 10:
        TPErase;
        TPWrite "Executando: B ";
        B;
        CASE 11:
        TPErase;
        TPWrite "Executando: B' ";
        B1;
        CASE 12:
        TPErase;
        TPWrite "Executando: B2 ";
        B2;
        CASE 13:
        TPErase;
        TPWrite "Executando: U ";
        U;
        CASE 14:
        TPErase;
        TPWrite "Executando: U' ";
        U1;
        CASE 15:
        TPErase;
        TPWrite "Executando: U2 ";
        U2;
        CASE 16:
        TPErase;
        TPWrite "Executando: D ";
        D;
        CASE 17:
        TPErase;
        TPWrite "Executando: D' ";
        D1;
        CASE 18:
        TPErase;
        TPWrite "Executando: D2 ";
        D2;
        ENDTEST
        !Incr contador;
        ENDFOR
        
        contador := 1;
        array{1} := 0;
        array{2} := 0;
        array{3} := 0;
        array{4} := 0;
        array{5} := 0;
        array{6} := 0;
        array{7} := 0;
        array{8} := 0;
        array{9} := 0;
        array{10} := 0;
        array{11} := 0;
        array{12} := 0;
        array{13} := 0;
        array{14} := 0;
        array{15} := 0;
        array{16} := 0;
        array{17} := 0;
        array{18} := 0;
        array{19} := 0;
        array{20} := 0;
        array{21} := 0;
        array{22} := 0;
        array{23} := 0;
        array{24} := 0;
        array{25} := 0;
        array{26} := 0;
        array{27} := 0;
        array{28} := 0;
        array{29} := 0;
        array{30} := 0;
        TPWrite "X";
        TPWrite "Cubo Resolvido";
        TPWrite "ATENÇÃO!!!";
        TPWrite "RETIRE O CUBO ANTES DE CONFIRMAR!!!";
        TPReadFK reg3, "Confirme para Finalizar", stEmpty, stEmpty, "OK", stEmpty, stEmpty; 
	ENDPROC
    PROC D1 ()
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !POSIÇÃO INICIAL
        AccSet 10,10;
		MoveL p10, v1000, fine, tool0;                  !DESCE GARRA
		Reset DO10_1;                                   !PEGA CUBO
        MoveAbsJ jpos10\NoEOffs, v1000, fine, tool0;    !GIRA HORÁRIO
        MoveL Offs (p11,0,0,100), v1000, fine, tool0;   !POSIÇÃO DEPOIS DE GIRAR + LEVANTAR
        MoveL Offs(p15,0,0,100), v1000, fine, tool0;    !GIRA EIXO 6 (POSIÇÃO PADRÃO)   !GIRA EIXO 6 (POSIÇÃO PADRÃO)
        MoveL p15, v1000, fine, tool0;                  !COLOCA CUBO NO LOCAL PADRÃO
        WaitTime 0.5;
        Set DO10_1;                                     !ABRE GARRA
        WaitTime 0.5;
        AccSet 25,25;
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !POSIÇÃO INICIAL
    ENDPROC
    PROC D ()
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !POSIÇÃO INICIAL
        AccSet 10,10;
		MoveL p10, v1000, fine, tool0;                  !DESCE GARRA
		WaitTime 0.5;
        Reset DO10_1;                                   !FECHA GARRA
        WaitTime 0.5;                                   !PEGA CUBO
        MoveAbsJ jpos11\NoEOffs, v1000, fine, tool0;    !GIRA ANTI-HORÁRIO
        MoveL Offs (p12,0,0,100), v1000, fine, tool0;   !POSIÇÃO DEPOIS DE GIRAR + LEVANTAR
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !GIRA EIXO 6 (POSIÇÃO PADRÃO)
        MoveL p10, v1000, fine, tool0;                  !COLOCA CUBO NO LOCAL PADRÃO
        WaitTime 0.5;
        Set DO10_1;                                     !ABRE GARRA
        WaitTime 0.5;                                   !SOLTA CUBO
        AccSet 25,25;
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !POSIÇÃO INICIAL
    ENDPROC
    PROC D2 ()
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !POSIÇÃO INICIAL
        AccSet 10,10;
		MoveL p10, v1000, fine, tool0;                  !DESCE GARRA
		WaitTime 0.5;
        Reset DO10_1;                                     !FECHA GARRA
        WaitTime 0.5;
        AccSet 25,25;
        MoveAbsJ jpos12\NoEOffs, v1000, fine, tool0;    !GIRA 180º (QUALQUER SENTIDO)
        MoveL Offs (p13,0,0,100), v1000, fine, tool0;   !POSIÇÃO DEPOIS DE GIRAR + LEVANTAR
        MoveL p14, v1000, fine, tool0;                  !AUXILIAR P13 PARA P10
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !GIRA EIXO 6 (POSIÇÃO PADRÃO)
        AccSet 10,10;
        MoveL p16, v1000, fine, tool0;                  !COLOCA CUBO NO LOCAL PADRÃO
        WaitTime 0.5;
        Set DO10_1;                                     !ABRE GARRA
        WaitTime 0.5;                                     !SOLTA CUBO
        AccSet 25,25;
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !LOCAL PADRÃO
    ENDPROC
    PROC F ()
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !POSIÇÃO INICIAL
        MoveL Offs (p30,-40,-60,120), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,-40,27,30), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,0,27,30), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,0,27,0), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
           !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        AccSet 10,10;
		MoveL p30, v1000, fine, tool0;                  !INSERE GARRA (VERTICAL)
		WaitTime 0.5;
        Reset DO10_1;                                     !FECHA GARRA
        WaitTime 0.5;
        AccSet 25,25;
        MoveL Offs (p30,0,0,50), v1000, fine, tool0;   !SOBE GARRA (VERTICAL)
        MoveAbsJ jpos31\NoEOffs, v1000, fine, tool0;    !GIRA FACE PARA BAIXO
        AccSet 10,10;
        MoveL p32, v1000, fine, tool0;                  !DESCE APÓIS GIRAR FACE PARA BAIXO (HORIZONTAL)
        WaitTime 0.5;
        Set DO10_1;                                     !ABRE GARRA
        WaitTime 0.5;                                     !ABRE GARRA
        AccSet 25,25;
        MoveL Offs (p32,0,0,50), v1000, fine, tool0;    !SOBE GARRA
        MoveL Offs (p32,50,0,50), v1000, fine, tool0;   !SOBE GARRA (HORIZONTAL)
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !POSIÇÃO INICIAL
        !FACE ESTÁ EM BAIXO, AMARELO NA FRENTE
        !GIRA E VOLTA O AMARELO
        D;                                              !GIRA HORÁRIO
        !FACE ESTÁ EM BAIXO, AMARELO NA FRENTE
        MoveL Offs (p30,-40,-60,120), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,-40,27,30), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,0,27,30), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,0,27,0), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
           !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ) 
        AccSet 10,10;
		MoveL p30, v1000, fine, tool0;                  !INSERE GARRA (VERTICAL)
		WaitTime 0.5;
        Reset DO10_1;                                     !FECHA GARRA
        WaitTime 0.5;
        AccSet 25,25;
        MoveL Offs (p30,0,0,50), v1000, fine, tool0;   !SOBE GARRA (VERTICAL)
        MoveAbsJ jpos30\NoEOffs, v1000, fine, tool0;    !GIRA FACE PARA CIMA
        AccSet 10,10;
        MoveL p31, v1000, fine, tool0;                  !DESCE APÓS GIRAR FACE PARA CIMA (HORIZONTAL)
        WaitTime 0.5;
        Set DO10_1;                                     !ABRE GARRA
        WaitTime 0.5;
        AccSet 25,25;
        MoveL Offs (p31,0,0,50), v1000, fine, tool0;    !SOBE GARRA
        MoveL pTeste, v1000, fine, tool0;               !PONTO PARA VOLTAR PARA P10
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !POSIÇÃO INICIAL
        !POSIÇÃO PADRÃO
    ENDPROC
    PROC F1 ()
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !POSIÇÃO INICIAL
        MoveL Offs (p30,-40,-60,120), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,-40,27,30), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,0,27,30), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,0,27,0), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
           !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        AccSet 10,10;
		MoveL p30, v1000, fine, tool0;                  !INSERE GARRA (VERTICAL)
		WaitTime 0.5;
        Reset DO10_1;                                     !FECHA GARRA
        WaitTime 0.5;                                   !FECHA GARRA
        AccSet 25,25;
        MoveL Offs (p30,0,0,50), v1000, fine, tool0;   !SOBE GARRA (VERTICAL)
        MoveAbsJ jpos31\NoEOffs, v1000, fine, tool0;    !GIRA FACE PARA BAIXO
        AccSet 10,10;
        MoveL p32, v1000, fine, tool0;                  !DESCE APÓIS GIRAR FACE PARA BAIXO (HORIZONTAL)
        WaitTime 0.5;
        Set DO10_1;                                     !ABRE GARRA
        WaitTime 0.5;                                     !ABRE GARRA
        AccSet 25,25;
        MoveL Offs (p32,0,0,50), v1000, fine, tool0;    !SOBE GARRA
        MoveL Offs (p32,50,0,50), v1000, fine, tool0;   !SOBE GARRA (HORIZONTAL)
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !POSIÇÃO INICIAL
        !FACE ESTÁ EM BAIXO, AMARELO NA FRENTE
        !GIRA E VOLTA O AMARELO
        D1;                                             !GIRA ANTI-HORÁRIO
        !FACE ESTÁ EM BAIXO, AMARELO NA FRENTE
        MoveL Offs (p30,-40,-60,120), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,-40,27,30), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,0,27,30), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,0,27,0), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
           !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ) 
        AccSet 10,10;
		MoveL p30, v1000, fine, tool0;                  !INSERE GARRA (VERTICAL)
		WaitTime 0.5;
        Reset DO10_1;                                     !FECHA GARRA
        WaitTime 0.5;
        AccSet 25,25;
        MoveL Offs (p30,0,0,50), v1000, fine, tool0;   !SOBE GARRA (VERTICAL)
        MoveAbsJ jpos30\NoEOffs, v1000, fine, tool0;    !GIRA FACE PARA CIMA
        AccSet 10,10;
        MoveL p31, v1000, fine, tool0;                  !DESCE APÓS GIRAR FACE PARA CIMA (HORIZONTAL)
        WaitTime 0.5;
        Set DO10_1;                                     !ABRE GARRA
        WaitTime 0.5;
        AccSet 25,25;
        MoveL Offs (p31,0,0,50), v1000, fine, tool0;    !SOBE GARRA
        MoveL pTeste, v1000, fine, tool0;               !PONTO PARA VOLTAR PARA P10
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !POSIÇÃO INICIAL
        !POSIÇÃO PADRÃO
    ENDPROC
    PROC F2 ()
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !POSIÇÃO INICIAL
        MoveL Offs (p30,-40,-60,120), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,-40,27,30), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,0,27,30), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,0,27,0), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
           !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        AccSet 10,10;
		MoveL p30, v1000, fine, tool0;                  !INSERE GARRA (VERTICAL)
		WaitTime 0.5;
        Reset DO10_1;                                     !FECHA GARRA
        WaitTime 0.5;
        AccSet 25,25;
        MoveL Offs (p30,0,0,50), v1000, fine, tool0;   !SOBE GARRA (VERTICAL)
        MoveAbsJ jpos31\NoEOffs, v1000, fine, tool0;    !GIRA FACE PARA BAIXO
        AccSet 10,10;
        MoveL p32, v1000, fine, tool0;                  !DESCE APÓIS GIRAR FACE PARA BAIXO (HORIZONTAL)
        WaitTime 0.5;
        Set DO10_1;                                     !ABRE GARRA
        WaitTime 0.5;
        AccSet 25,25;
        MoveL Offs (p32,0,0,50), v1000, fine, tool0;    !SOBE GARRA
        MoveL Offs (p32,50,0,50), v1000, fine, tool0;   !SOBE GARRA (HORIZONTAL)
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !POSIÇÃO INICIAL
        !FACE ESTÁ EM BAIXO, AMARELO NA FRENTE
        !GIRA E VOLTA O AMARELO
        D2;                                             !GIRA 180º
        !FACE ESTÁ EM BAIXO, AMARELO NA FRENTE
        MoveL Offs (p30,-40,-60,120), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,-40,27,30), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,0,27,30), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,0,27,0), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
           !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        AccSet 10,10;
		MoveL p30, v1000, fine, tool0;                  !INSERE GARRA (VERTICAL)
		WaitTime 0.5;
        Reset DO10_1;                                     !FECHA GARRA
        WaitTime 0.5;
        AccSet 25,25;
        MoveL Offs (p30,0,0,50), v1000, fine, tool0;   !SOBE GARRA (VERTICAL)
        MoveAbsJ jpos30\NoEOffs, v1000, fine, tool0;    !GIRA FACE PARA CIMA
        AccSet 10,10;
        MoveL p31, v1000, fine, tool0;                  !DESCE APÓS GIRAR FACE PARA CIMA (HORIZONTAL)
        WaitTime 0.5;
        Set DO10_1;                                     !ABRE GARRA
        WaitTime 0.5;
        AccSet 25,25;
        MoveL Offs (p31,0,0,50), v1000, fine, tool0;    !SOBE GARRA
        MoveL pTeste, v1000, fine, tool0;               !PONTO PARA VOLTAR PARA P10
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !POSIÇÃO INICIAL
        !POSIÇÃO PADRÃO
    ENDPROC
    PROC B ()
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !POSIÇÃO INICIAL
        MoveL Offs (p30,-40,-60,120), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,-40,27,30), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,0,27,30), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,0,27,0), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
           !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        AccSet 10,10;
		MoveL p30, v1000, fine, tool0;                  !INSERE GARRA (VERTICAL)
        WaitTime 0.5;
		Reset DO10_1;                                   !FECHA GARRA
        WaitTime 0.5;
        AccSet 25,25;
        MoveL Offs (p30,0,0,50), v1000, fine, tool0;   !SOBE GARRA (VERTICAL)
        MoveAbsJ jpos30\NoEOffs, v1000, fine, tool0;    !GIRA FACE PARA BAIXO
        AccSet 10,10;
        MoveL p31, v1000, fine, tool0;                  !DESCE APÓIS GIRAR FACE PARA BAIXO (HORIZONTAL)
        WaitTime 0.5;
        Set DO10_1;                                     !ABRE GARRA
        WaitTime 0.5;
        AccSet 25,25;
        MoveL Offs (p31,0,0,50), v1000, fine, tool0;    !SOBE GARRA
        MoveL pTeste, v1000, fine, tool0;               !PONTO PARA VOLTAR PARA P10
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !POSIÇÃO INICIAL
        !FACE ESTÁ EM CIMA, AMARELO ATRÁS
        !GIRA E VOLTA
        D;                                              !GIRA HORÁRIO
        !FACE ESTÁ EM CIMA, AMARELO ATRÁS
        MoveL Offs (p30,-40,-60,120), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,-40,27,30), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,0,27,30), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,0,27,0), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
           !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ) 
        AccSet 10,10;
		MoveL p30, v1000, fine, tool0;                  !INSERE GARRA (VERTICAL)
		WaitTime 0.5;
        Reset DO10_1;                                     !FECHA GARRA
        WaitTime 0.5;
        AccSet 25,25;
        MoveL Offs (p30,0,0,50), v1000, fine, tool0;   !SOBE GARRA (VERTICAL)
        MoveAbsJ jpos31\NoEOffs, v1000, fine, tool0;    !GIRA FACE PARA CIMA
        AccSet 10,10;
        MoveL p32, v1000, fine, tool0;                  !DESCE APÓS GIRAR FACE PARA CIMA (HORIZONTAL)
        WaitTime 0.5;
        Set DO10_1;                                     !ABRE GARRA
        WaitTime 0.5;
        AccSet 25,25;
        MoveL Offs (p32,0,0,50), v1000, fine, tool0;
        MoveL Offs (p32,50,0,50), v1000, fine, tool0;   !SOBE GARRA (HORIZONTAL)
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !POSIÇÃO INICIAL
        !POSIÇÃO PADRÃO
    ENDPROC
    PROC B1 ()
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !POSIÇÃO INICIAL
        MoveL Offs (p30,-40,-60,120), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,-40,27,30), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,0,27,30), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,0,27,0), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
           !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        AccSet 10,10;
		MoveL p30, v1000, fine, tool0;                  !INSERE GARRA (VERTICAL)
		WaitTime 0.5;
        Reset DO10_1;                                     !FECHA GARRA
        WaitTime 0.5;                                   !FECHA GARRA
        AccSet 25,25;
        MoveL Offs (p30,0,0,50), v1000, fine, tool0;   !SOBE GARRA (VERTICAL)
        MoveAbsJ jpos30\NoEOffs, v1000, fine, tool0;    !GIRA FACE PARA BAIXO
        AccSet 10,10;
        MoveL p31, v1000, fine, tool0;                  !DESCE APÓIS GIRAR FACE PARA BAIXO (HORIZONTAL)
        WaitTime 0.5;
        Set DO10_1;                                     !ABRE GARRA
        WaitTime 0.5;
        AccSet 25,25;
        MoveL Offs (p31,0,0,50), v1000, fine, tool0;    !SOBE GARRA
        MoveL pTeste, v1000, fine, tool0;               !PONTO PARA VOLTAR PARA P10
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !POSIÇÃO INICIAL
        !FACE ESTÁ EM CIMA, AMARELO ATRÁS
        !GIRA E VOLTA
        D1;                                              !GIRA ANTI-HORÁRIO
        !FACE ESTÁ EM CIMA, AMARELO ATRÁS
        MoveL Offs (p30,-40,-60,120), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,-40,27,30), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,0,27,30), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,0,27,0), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
           !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ) 
        AccSet 10,10;
		MoveL p30, v1000, fine, tool0;                  !INSERE GARRA (VERTICAL)
		WaitTime 0.5;
        Reset DO10_1;                                     !FECHA GARRA
        WaitTime 0.5;
        AccSet 25,25;
        MoveL Offs (p30,0,0,50), v1000, fine, tool0;   !SOBE GARRA (VERTICAL)
        MoveAbsJ jpos31\NoEOffs, v1000, fine, tool0;    !GIRA FACE PARA CIMA
        AccSet 10,10;
        MoveL p32, v1000, fine, tool0;                  !DESCE APÓS GIRAR FACE PARA CIMA (HORIZONTAL)
        WaitTime 0.5;
        Set DO10_1;                                     !ABRE GARRA
        WaitTime 0.5;
        AccSet 25,25;
        MoveL Offs (p32,0,0,50), v1000, fine, tool0;
        MoveL Offs (p32,50,0,50), v1000, fine, tool0;   !SOBE GARRA (HORIZONTAL)
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !POSIÇÃO INICIAL
        !POSIÇÃO PADRÃO
    ENDPROC
    PROC B2 ()
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !POSIÇÃO INICIAL
        MoveL Offs (p30,-40,-60,120), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,-40,27,30), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,0,27,30), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,0,27,0), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
           !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
		MoveL p30, v1000, fine, tool0;                  !INSERE GARRA (VERTICAL)
        AccSet 10,10;
		WaitTime 0.5;
        Reset DO10_1;                                     !FECHA GARRA
        WaitTime 0.5;
        AccSet 25,25;
        MoveL Offs (p30,0,0,50), v1000, fine, tool0;   !SOBE GARRA (VERTICAL)
        MoveAbsJ jpos30\NoEOffs, v1000, fine, tool0;    !GIRA FACE PARA BAIXO
        AccSet 10,10;
        MoveL p31, v1000, fine, tool0;                  !DESCE APÓIS GIRAR FACE PARA BAIXO (HORIZONTAL)
        WaitTime 0.5;
        Set DO10_1;                                     !ABRE GARRA
        WaitTime 0.5;
        AccSet 25,25;
        MoveL Offs (p31,0,0,50), v1000, fine, tool0;    !SOBE GARRA
        MoveL pTeste, v1000, fine, tool0;               !PONTO PARA VOLTAR PARA P10
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !POSIÇÃO INICIAL
        !FACE ESTÁ EM CIMA, AMARELO ATRÁS
        !GIRA E VOLTA
        D2;                                              !GIRA 180º
        !FACE ESTÁ EM CIMA, AMARELO ATRÁS
        MoveL Offs (p30,-40,-60,120), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,-40,27,30), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,0,27,30), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,0,27,0), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
           !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ) 
		MoveL p30, v1000, fine, tool0;                  !INSERE GARRA (VERTICAL)
        AccSet 10,10;
		WaitTime 0.5;
        Reset DO10_1;                                     !FECHA GARRA
        WaitTime 0.5;
        AccSet 25,25;
        MoveL Offs (p30,0,0,50), v1000, fine, tool0;   !SOBE GARRA (VERTICAL)
        MoveAbsJ jpos31\NoEOffs, v1000, fine, tool0;    !GIRA FACE PARA CIMA
        AccSet 10,10;
        MoveL p32, v1000, fine, tool0;                  !DESCE APÓS GIRAR FACE PARA CIMA (HORIZONTAL)
        WaitTime 0.5;
        Set DO10_1;                                     !ABRE GARRA
        WaitTime 0.5;
        AccSet 25,25;
        MoveL Offs (p32,0,0,50), v1000, fine, tool0;
        MoveL Offs (p32,50,0,50), v1000, fine, tool0;   !SOBE GARRA (HORIZONTAL)
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !POSIÇÃO INICIAL
        !POSIÇÃO PADRÃO
    ENDPROC
    PROC U ()
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !POSIÇÃO INICIAL
        MoveL Offs (p30,-40,-60,120), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,-40,27,30), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,0,27,30), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,0,27,0), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
           !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        AccSet 10,10;
		MoveL p30, v1000, fine, tool0;                  !INSERE GARRA (VERTICAL)
		WaitTime 0.5;
        Reset DO10_1;                                     !FECHA GARRA
        WaitTime 0.5;
        AccSet 25,25;
        MoveL Offs (p30,0,0,50), v1000, fine, tool0;   !SOBE GARRA (VERTICAL)
        MoveAbsJ jpos32\NoEOffs, v1000, fine, tool0;    !GIRA FACE 180º
        AccSet 10,10;
        MoveL p33, v1000, fine, tool0;                  !DESCE APÓS GIRAR FACE 180º (HORIZONTAL)
        WaitTime 0.5;
        Set DO10_1;                                     !ABRE GARRA
        WaitTime 0.5;
        AccSet 25,25;
        MoveL Offs (p33,0,27,0), v1000, fine, tool0;    !SOBE GARRA
        MoveL Offs (p33,0,27,35), v1000, fine, tool0; !POSIÇÃO INTERMEDIÁRIA
        MoveL Offs (p33,-40,27,35), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p33,-40,-60,120), v1000, fine, tool0;
        MoveL p34, v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !POSIÇÃO INICIAL
        !FACE ESTÁ ATRÁS, AMARELO EM BAIXO
        !GIRA E VOLTA
        D;                                              !GIRA HORÁRIO
        !FACE ESTÁ ATRÁS, AMARELO EM BAIXO
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !POSIÇÃO INICIAL
        MoveL Offs (p30,-40,-60,120), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,-40,27,30), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,0,27,30), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,0,27,0), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
           !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        AccSet 10,10;
		MoveL p30, v1000, fine, tool0;                  !INSERE GARRA (VERTICAL)
		WaitTime 0.5;
        Reset DO10_1;                                     !FECHA GARRA
        WaitTime 0.5;
        AccSet 25,25;
        MoveL Offs (p30,0,0,50), v1000, fine, tool0;   !SOBE GARRA (VERTICAL)
        MoveAbsJ jpos32\NoEOffs, v1000, fine, tool0;    !GIRA FACE 180º
        AccSet 10,10;
        MoveL p33, v1000, fine, tool0;                  !DESCE APÓS GIRAR FACE 180º (HORIZONTAL)
        WaitTime 0.5;
        Set DO10_1;                                     !ABRE GARRA
        WaitTime 0.5;
        AccSet 25,25;
        MoveL Offs (p33,0,27,0), v1000, fine, tool0;    !SOBE GARRA
        MoveL Offs (p33,0,27,35), v1000, fine, tool0; !POSIÇÃO INTERMEDIÁRIA
        MoveL Offs (p33,-40,27,35), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p33,-40,-60,120), v1000, fine, tool0;
        MoveL p34, v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !POSIÇÃO INICIAL
        !POSIÇÃO PADRÃO
    ENDPROC
    PROC U1 ()
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !POSIÇÃO INICIAL
        MoveL Offs (p30,-40,-60,120), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,-40,27,30), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,0,27,30), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,0,27,0), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
           !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        AccSet 10,10;
		MoveL p30, v1000, fine, tool0;                  !INSERE GARRA (VERTICAL)
		WaitTime 0.5;
        Reset DO10_1;                                     !FECHA GARRA
        WaitTime 0.5;
        AccSet 25,25;
        MoveL Offs (p30,0,0,50), v1000, fine, tool0;   !SOBE GARRA (VERTICAL)
        MoveAbsJ jpos32\NoEOffs, v1000, fine, tool0;    !GIRA FACE 180º
        AccSet 10,10;
        MoveL p33, v1000, fine, tool0;                  !DESCE APÓS GIRAR FACE 180º (HORIZONTAL)
        WaitTime 0.5;
        Set DO10_1;                                     !ABRE GARRA
        WaitTime 0.5;
        AccSet 25,25;
        MoveL Offs (p33,0,27,0), v1000, fine, tool0;    !SOBE GARRA
        MoveL Offs (p33,0,27,35), v1000, fine, tool0; !POSIÇÃO INTERMEDIÁRIA
        MoveL Offs (p33,-40,27,35), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p33,-40,-60,120), v1000, fine, tool0;
        MoveL p34, v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !POSIÇÃO INICIAL
        !FACE ESTÁ ATRÁS, AMARELO EM BAIXO
        !GIRA E VOLTA
        D1;                                             !GIRA ANTI-HORÁRIO
        !FACE ESTÁ ATRÁS, AMARELO EM BAIXO
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !POSIÇÃO INICIAL
        MoveL Offs (p30,-40,-60,120), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,-40,27,30), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,0,27,30), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,0,27,0), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
           !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        AccSet 10,10;
		MoveL p30, v1000, fine, tool0;                  !INSERE GARRA (VERTICAL)
		WaitTime 0.5;
        Reset DO10_1;                                     !FECHA GARRA
        WaitTime 0.5;
        AccSet 25,25;
        MoveL Offs (p30,0,0,50), v1000, fine, tool0;   !SOBE GARRA (VERTICAL)
        MoveAbsJ jpos32\NoEOffs, v1000, fine, tool0;    !GIRA FACE 180º
        AccSet 10,10;
        MoveL p33, v1000, fine, tool0;                  !DESCE APÓS GIRAR FACE 180º (HORIZONTAL)
        WaitTime 0.5;
        Set DO10_1;                                     !ABRE GARRA
        WaitTime 0.5;
        AccSet 25,25;
        MoveL Offs (p33,0,27,0), v1000, fine, tool0;    !SOBE GARRA
        MoveL Offs (p33,0,27,35), v1000, fine, tool0; !POSIÇÃO INTERMEDIÁRIA
        MoveL Offs (p33,-40,27,35), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p33,-40,-60,120), v1000, fine, tool0;
        MoveL p34, v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !POSIÇÃO INICIAL
        !POSIÇÃO PADRÃO
    ENDPROC
    PROC U2 ()
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !POSIÇÃO INICIAL
        MoveL Offs (p30,-40,-60,120), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,-40,27,30), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,0,27,30), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,0,27,0), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
           !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        AccSet 10,10;
		MoveL p30, v1000, fine, tool0;                  !INSERE GARRA (VERTICAL)
		WaitTime 0.5;
        Reset DO10_1;                                     !FECHA GARRA
        WaitTime 0.5;
        AccSet 25,25;
        MoveL Offs (p30,0,0,50), v1000, fine, tool0;   !SOBE GARRA (VERTICAL)
        MoveAbsJ jpos32\NoEOffs, v1000, fine, tool0;    !GIRA FACE 180º
        AccSet 10,10;
        MoveL p33, v1000, fine, tool0;                  !DESCE APÓS GIRAR FACE 180º (HORIZONTAL)
        WaitTime 0.5;
        Set DO10_1;                                     !ABRE GARRA
        WaitTime 0.5;
        AccSet 25,25;
        MoveL Offs (p33,0,27,0), v1000, fine, tool0;    !SOBE GARRA
        MoveL Offs (p33,0,27,35), v1000, fine, tool0; !POSIÇÃO INTERMEDIÁRIA
        MoveL Offs (p33,-40,27,35), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p33,-40,-60,120), v1000, fine, tool0;
        MoveL p34, v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !POSIÇÃO INICIAL
        !FACE ESTÁ ATRÁS, AMARELO EM BAIXO
        !GIRA E VOLTA
        D2;                                             !GIRA ANTI-HORÁRIO
        !FACE ESTÁ ATRÁS, AMARELO EM BAIXO
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !POSIÇÃO INICIAL
        MoveL Offs (p30,-40,-60,120), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,-40,27,30), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,0,27,30), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,0,27,0), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
           !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        AccSet 10,10;
		MoveL p30, v1000, fine, tool0;                  !INSERE GARRA (VERTICAL)
		WaitTime 0.5;
        Reset DO10_1;                                     !FECHA GARRA
        WaitTime 0.5;
        AccSet 25,25;
        MoveL Offs (p30,0,0,50), v1000, fine, tool0;   !SOBE GARRA (VERTICAL)
        MoveAbsJ jpos32\NoEOffs, v1000, fine, tool0;    !GIRA FACE 180º
        AccSet 10,10;
        MoveL p33, v1000, fine, tool0;                  !DESCE APÓS GIRAR FACE 180º (HORIZONTAL)
        WaitTime 0.5;
        Set DO10_1;                                     !ABRE GARRA
        WaitTime 0.5;
        AccSet 25,25;
        MoveL Offs (p33,0,27,0), v1000, fine, tool0;    !SOBE GARRA
        MoveL Offs (p33,0,27,35), v1000, fine, tool0; !POSIÇÃO INTERMEDIÁRIA
        MoveL Offs (p33,-40,27,35), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p33,-40,-60,120), v1000, fine, tool0;
        MoveL p34, v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !POSIÇÃO INICIAL
        !POSIÇÃO PADRÃO
    ENDPROC
    PROC R ()
        MoveL Offs (p51,0,0,100), v1000, fine, tool0;   !POSIÇÃO PADRÃO (VERTICAL) EIXO 6 MODIFICADO
        AccSet 10,10;
        MoveL p51, v1000, fine, tool0;                  !DESCE GARRA
        WaitTime 0.5;
        AccSet 25,25;
        Reset DO10_1;                                     !FECHA GARRA
        WaitTime 0.5;                                   !FECHA GARRA
        MoveL Offs (p51,0,0,100), v1000, fine, tool0;   !SOBE GARRA
        MoveL Offs (p100,0,0,50), v1000, fine, tool0;   !SOBE GARRA (VERTICAL)
        AccSet 10,10;
        MoveL p20, v1000, fine, tool0;                  !DESCE GARRA
        WaitTime 0.5;
        Set DO10_1;
        WaitTime 0.5;
        AccSet 25,25;
        MoveL Offs (p30,0,27,0), v1000, fine, tool0;    !SOBE GARRA
        MoveL Offs (p30,0,27,35), v1000, fine, tool0; !POSIÇÃO INTERMEDIÁRIA
        MoveL Offs (p30,-40,28,35), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,-40,-60,120), v1000, fine, tool0;
        MoveL Offs (p51,0,0,100), v1000, fine, tool0;   !SOBE GARRA
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !POSIÇÃO INICIAL
        D;                                              !GIRA HORÁRIO
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !POSIÇÃO INICIAL
        MoveL Offs (p30,-40,-60,120), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,-40,27,30), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,0,27,30), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,0,27,0), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
           !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        AccSet 10,10;
		MoveL p30, v1000, fine, tool0;                  !INSERE GARRA (VERTICAL)
		WaitTime 0.5;
        Reset DO10_1;                                     !FECHA GARRA
        WaitTime 0.5;                                   !FECHA GARRA
        AccSet 25,25;
        MoveL Offs (p30,0,0,50), v1000, fine, tool0;   !SOBE GARRA (VERTICAL)
        MoveL Offs (p51,0,0,100), v1000, fine, tool0;   !POSIÇÃO PADRÃO (VERTICAL) EIXO 6 MODIFICADO
        AccSet 10,10;
        MoveL p51, v1000, fine, tool0;                  !DESCE GARRA
        WaitTime 0.5;
        Set DO10_1;                                     !ABRE GARRA
        WaitTime 0.5;                                     !SOLTA CUBO
        AccSet 25,25;
        MoveL Offs (p51,0,0,100), v1000, fine, tool0;   !POSIÇÃO PADRÃO (VERTICAL) EIXO 6 MODIFICADO
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !POSIÇÃO INICIAL
        !ESQUERDA EM BAIXO
    ENDPROC
    PROC R1 ()
        MoveL Offs (p51,0,0,100), v1000, fine, tool0;   !POSIÇÃO PADRÃO (VERTICAL) EIXO 6 MODIFICADO
        AccSet 10,10;
        MoveL p51, v1000, fine, tool0;                  !DESCE GARRA
        WaitTime 0.5;
        Reset DO10_1;                                     !FECHA GARRA
        WaitTime 0.5;                                   !FECHA GARRA
        AccSet 25,25;
        MoveL Offs (p51,0,0,100), v1000, fine, tool0;   !SOBE GARRA
        MoveL Offs (p30,0,0,50), v1000, fine, tool0;   !SOBE GARRA (VERTICAL)
        AccSet 10,10;
        MoveL p20, v1000, fine, tool0;                  !DESCE GARRA
        WaitTime 0.5;
        Set DO10_1;
        WaitTime 0.5;
        AccSet 25,25;
        MoveL Offs (p30,0,27,0), v1000, fine, tool0;    !SOBE GARRA
        MoveL Offs (p30,0,27,35), v1000, fine, tool0; !POSIÇÃO INTERMEDIÁRIA
        MoveL Offs (p30,-40,27,35), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,-40,-60,120), v1000, fine, tool0;
        MoveL Offs (p51,0,0,100), v1000, fine, tool0;   !SOBE GARRA
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !POSIÇÃO INICIAL
        D1;                                             !GIRA ANTI-HORÁRIO
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !POSIÇÃO INICIAL
        MoveL Offs (p30,-40,-60,120), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,-40,27,30), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,0,27,30), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,0,27,0), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
           !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        AccSet 10,10;
		MoveL p30, v1000, fine, tool0;                  !INSERE GARRA (VERTICAL)
		WaitTime 0.5;
        Reset DO10_1;                                     !FECHA GARRA
        WaitTime 0.5;                                   !FECHA GARRA
        AccSet 25,25;
        MoveL Offs (p30,0,0,50), v1000, fine, tool0;   !SOBE GARRA (VERTICAL)
        MoveL Offs (p51,0,0,100), v1000, fine, tool0;   !POSIÇÃO PADRÃO (VERTICAL) EIXO 6 MODIFICADO
        AccSet 10,10;
        MoveL p51, v1000, fine, tool0;                  !DESCE GARRA
        WaitTime 0.5;
        Set DO10_1;                                     !ABRE GARRA
        WaitTime 0.5;                                     !SOLTA CUBO
        AccSet 25,25;
        MoveL Offs (p51,0,0,100), v1000, fine, tool0;   !POSIÇÃO PADRÃO (VERTICAL) EIXO 6 MODIFICADO
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !POSIÇÃO INICIAL
        !ESQUERDA EM BAIXO
    ENDPROC
    PROC R2 ()
        MoveL Offs (p51,0,0,100), v1000, fine, tool0;   !POSIÇÃO PADRÃO (VERTICAL) EIXO 6 MODIFICADO
        AccSet 10,10;
        MoveL p51, v1000, fine, tool0;                  !DESCE GARRA
        WaitTime 0.5;
        Reset DO10_1;                                     !FECHA GARRA
        WaitTime 0.5;                                   !FECHA GARRA
        MoveL Offs (p51,0,0,100), v1000, fine, tool0;   !SOBE GARRA
        MoveL Offs (p30,0,0,50), v1000, fine, tool0;   !SOBE GARRA (VERTICAL)
        AccSet 10,10;
        MoveL p20, v1000, fine, tool0;                  !DESCE GARRA
        WaitTime 0.5;
        Set DO10_1;
        WaitTime 0.5;
        AccSet 25,25;
        MoveL Offs (p30,0,27,0), v1000, fine, tool0;    !SOBE GARRA
        MoveL Offs (p30,0,27,35), v1000, fine, tool0; !POSIÇÃO INTERMEDIÁRIA
        MoveL Offs (p30,-40,27,35), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,-40,-60,120), v1000, fine, tool0;
        MoveL Offs (p51,0,0,100), v1000, fine, tool0;   !SOBE GARRA
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !POSIÇÃO INICIAL
        D2;                                             !GIRA ANTI-HORÁRIO
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !POSIÇÃO INICIAL
        MoveL Offs (p30,-40,-60,120), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,-40,27,30), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,0,27,30), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,0,27,0), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
           !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        AccSet 10,10;
		MoveL p30, v1000, fine, tool0;                  !INSERE GARRA (VERTICAL)
		WaitTime 0.5;
        Reset DO10_1;                                     !FECHA GARRA
        WaitTime 0.5;
        AccSet 25,25;
        MoveL Offs (p30,0,0,50), v1000, fine, tool0;   !SOBE GARRA (VERTICAL)
        MoveL Offs (p51,0,0,100), v1000, fine, tool0;   !POSIÇÃO PADRÃO (VERTICAL) EIXO 6 MODIFICADO
        AccSet 10,10;
        MoveL p51, v1000, fine, tool0;                  !DESCE GARRA
        WaitTime 0.5;
        Set DO10_1;                                     !ABRE GARRA
        WaitTime 0.5;
        AccSet 25,25;
        MoveL Offs (p51,0,0,100), v1000, fine, tool0;   !POSIÇÃO PADRÃO (VERTICAL) EIXO 6 MODIFICADO
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !POSIÇÃO INICIAL
        !ESQUERDA EM BAIXO
    ENDPROC
    PROC L ()
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !POSIÇÃO INICIAL
        MoveL Offs (p30,-40,-60,120), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,-40,27,30), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,0,27,30), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,0,27,0), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
           !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        AccSet 10,10;
		MoveL p30, v1000, fine, tool0;                  !INSERE GARRA (VERTICAL)
		WaitTime 0.5;
        Reset DO10_1;                                     !FECHA GARRA
        WaitTime 0.5;
        AccSet 25,25;
        MoveL Offs (p30,0,0,50), v1000, fine, tool0;   !SOBE GARRA (VERTICAL)
        MoveL Offs (p51,0,0,100), v1000, fine, tool0;   !POSIÇÃO PADRÃO (VERTICAL) EIXO 6 MODIFICADO
        AccSet 10,10;
        MoveL p51, v1000, fine, tool0;                  !DESCE GARRA
        WaitTime 0.5;
        Set DO10_1;                                     !ABRE GARRA
        WaitTime 0.5;
        AccSet 25,25;
        MoveL Offs (p51,0,0,100), v1000, fine, tool0;   !POSIÇÃO PADRÃO (VERTICAL) EIXO 6 MODIFICADO
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !POSIÇÃO INICIAL
        !ESQUERDA EM BAIXO
        D;                                              !GIRA HORÁRIO
        !ESQUERDA CONTINUA EM BAIXO
        MoveL Offs (p51,0,0,100), v1000, fine, tool0;   !POSIÇÃO PADRÃO (VERTICAL) EIXO 6 MODIFICADO
        AccSet 10,10;
        MoveL p51, v1000, fine, tool0;                  !DESCE GARRA
        WaitTime 0.5;
        Reset DO10_1;                                     !FECHA GARRA
        WaitTime 0.5;
        AccSet 25,25;
        MoveL Offs (p51,0,0,100), v1000, fine, tool0;   !SOBE GARRA
        MoveL Offs (p30,0,0,50), v1000, fine, tool0;   !SOBE GARRA (VERTICAL)
        AccSet 10,10;
        MoveL p20, v1000, fine, tool0;                  !DESCE GARRA
        WaitTime 0.5;
        Set DO10_1;
        WaitTime 0.5;
        AccSet 25,25;
        MoveL Offs (p30,0,27,0), v1000, fine, tool0;    !SOBE GARRA
        MoveL Offs (p30,0,27,35), v1000, fine, tool0; !POSIÇÃO INTERMEDIÁRIA
        MoveL Offs (p30,-40,27,35), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,-40,-60,120), v1000, fine, tool0;
        MoveL Offs (p51,0,0,100), v1000, fine, tool0;   !SOBE GARRA
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !POSIÇÃO INICIAL
    ENDPROC
    PROC L1 ()
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !POSIÇÃO INICIAL
        MoveL Offs (p30,-40,-60,120), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,-40,27,30), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,0,27,30), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,0,27,0), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
           !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        AccSet 10,10;
		MoveL p30, v1000, fine, tool0;                  !INSERE GARRA (VERTICAL)
		WaitTime 0.5;
        Reset DO10_1;                                     !FECHA GARRA
        WaitTime 0.5;
        AccSet 25,25;
        MoveL Offs (p30,0,0,50), v1000, fine, tool0;   !SOBE GARRA (VERTICAL)
        MoveL Offs (p51,0,0,100), v1000, fine, tool0;   !POSIÇÃO PADRÃO (VERTICAL) EIXO 6 MODIFICADO
        AccSet 10,10;
        MoveL p51, v1000, fine, tool0;                  !DESCE GARRA
        WaitTime 0.5;
        Set DO10_1;                                     !ABRE GARRA
        WaitTime 0.5;
        AccSet 25,25;
        MoveL Offs (p51,0,0,100), v1000, fine, tool0;   !POSIÇÃO PADRÃO (VERTICAL) EIXO 6 MODIFICADO
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !POSIÇÃO INICIAL
        !ESQUERDA EM BAIXO
        D1;                                             !GIRA ANTI-HORÁRIO
        !ESQUERDA CONTINUA EM BAIXO
        MoveL Offs (p51,0,0,100), v1000, fine, tool0;   !POSIÇÃO PADRÃO (VERTICAL) EIXO 6 MODIFICADO
        AccSet 10,10;
        MoveL p51, v1000, fine, tool0;                  !DESCE GARRA
        WaitTime 0.5;
        Reset DO10_1;                                     !FECHA GARRA
        WaitTime 0.5;
        AccSet 25,25;
        MoveL Offs (p51,0,0,100), v1000, fine, tool0;   !SOBE GARRA
        MoveL Offs (p30,0,0,50), v1000, fine, tool0;   !SOBE GARRA (VERTICAL)
        AccSet 10,10;
        MoveL p20, v1000, fine, tool0;                  !DESCE GARRA
        WaitTime 0.5;
        Set DO10_1;
        WaitTime 0.5;
        AccSet 25,25;
        MoveL Offs (p30,0,27,0), v1000, fine, tool0;    !SOBE GARRA
        MoveL Offs (p30,0,27,35), v1000, fine, tool0; !POSIÇÃO INTERMEDIÁRIA
        MoveL Offs (p30,-40,27,35), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,-40,-60,120), v1000, fine, tool0;
        MoveL Offs (p51,0,0,100), v1000, fine, tool0;   !SOBE GARRA
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !POSIÇÃO INICIAL
    ENDPROC
    PROC L2 ()
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !POSIÇÃO INICIAL
        MoveL Offs (p30,-40,-60,120), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,-40,27,30), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,0,27,30), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,0,27,0), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
           !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        AccSet 10,10;
		MoveL p30, v1000, fine, tool0;                  !INSERE GARRA (VERTICAL)
		WaitTime 0.5;
        Reset DO10_1;                                     !FECHA GARRA
        WaitTime 0.5;
        AccSet 25,25;
        MoveL Offs (p30,0,0,50), v1000, fine, tool0;   !SOBE GARRA (VERTICAL)
        MoveL Offs (p51,0,0,100), v1000, fine, tool0;   !POSIÇÃO PADRÃO (VERTICAL) EIXO 6 MODIFICADO
        AccSet 10,10;
        MoveL p51, v1000, fine, tool0;                  !DESCE GARRA
        WaitTime 0.5;
        Set DO10_1;                                     !ABRE GARRA
        WaitTime 0.5;
        AccSet 25,25;
        MoveL Offs (p51,0,0,100), v1000, fine, tool0;   !POSIÇÃO PADRÃO (VERTICAL) EIXO 6 MODIFICADO
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !POSIÇÃO INICIAL
        !ESQUERDA EM BAIXO
        D2;                                             !GIRA ANTI-HORÁRIO
        !ESQUERDA CONTINUA EM BAIXO
        MoveL Offs (p51,0,0,100), v1000, fine, tool0;   !POSIÇÃO PADRÃO (VERTICAL) EIXO 6 MODIFICADO
        AccSet 10,10;
        MoveL p51, v1000, fine, tool0;                  !DESCE GARRA
        WaitTime 0.5;
        Reset DO10_1;                                     !FECHA GARRA
        WaitTime 0.5;
        AccSet 25,25;
        MoveL Offs (p51,0,0,100), v1000, fine, tool0;   !SOBE GARRA
        MoveL Offs (p30,0,0,50), v1000, fine, tool0;   !SOBE GARRA (VERTICAL)
        AccSet 10,10;
        MoveL p20, v1000, fine, tool0;                  !DESCE GARRA
        WaitTime 0.5;
        Set DO10_1;
        WaitTime 0.5;
        AccSet 25,25;
        MoveL Offs (p30,0,27,0), v1000, fine, tool0;    !SOBE GARRA
        MoveL Offs (p30,0,27,35), v1000, fine, tool0; !POSIÇÃO INTERMEDIÁRIA
        MoveL Offs (p30,-40,27,35), v1000, fine, tool0;   !POSIÇÃO ESQUERDA AFASTADO (REF. ROBÔ)
        MoveL Offs (p30,-40,-60,120), v1000, fine, tool0;
        MoveL Offs (p51,0,0,100), v1000, fine, tool0;   !SOBE GARRA
        MoveL Offs (p10,0,0,100), v1000, fine, tool0;   !POSIÇÃO INICIAL
    ENDPROC
ENDMODULE