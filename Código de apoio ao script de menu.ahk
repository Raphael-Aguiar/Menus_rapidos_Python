; *************** Menu - Acesso rápido a aplicativos Web ******************************

; Redes Sociais (R)

; Aplicativos (A)

; Google (G)

; UFMG (U)

; Moodle (M)

; Pesquisa (P)

; Notícias (N)

^a::
menu_call(app)
Return

^u::
menu_call(ufmg)
Return

^d::
menu_call(moodle)
Return

^p::
menu_call(pesq)
Return

^j::
menu_call(news)
Return

^n::
menu_call(notion)
Return

^r::
menu_call(soc)
Return


;************************************** Funções ********************************************************************


/*
	
	1. As teclas acima acionam a função menu_call passando o parâmetro que especifica o menu.
	2. Essa função chama outras duas funções (as UTF-8) para "limpar" o texto do menu chamado.
	3. Em seguida, a função constroi o menu chamado e pede input.
	4. A partir do input, chama-se a função basic_get para acessar o serviço desejado e preparar o  
	   prompt com TABs;
	5. Se o serviço tiver alterações, elas devem ser executadas aqui.
	
	*/


; Função básica para chamar os menus


menu_call(menu)
{
	if WinExist("ahk_exe chrome.exe")
	{
        
		
		
        ; Rotina para garantir que o título da box seja adequadamente mostrado na message Box, em UTF-8
		size1 := StrPut(foo1, "CP0")
		VarSetCapacity(1Utf8, size1)
		size1 := StrPut(foo1, &1Utf8, size1, "CP0")
		
        ; Rotina para garantir que o conteúdo da box seja adequadamente mostrado na message Box, em UTF-8
		size2 := StrPut(foo2, "CP0")
		VarSetCapacity(2Utf8, size2)
		size2 := StrPut(foo2, &2Utf8, size2, "CP0")
		
        ; Talvez fazer if para passar diferentes tamanhos a boxes dependendo do tamanho da mensagem
		InputBox, x , % StrGet(&1Utf8, "UTF-8"), % StrGet(&2Utf8, "UTF-8"),, 375, 400
		
        
		
		
		Return
	}
}


menu_call(menu)
{
	if WinExist("ahk_exe chrome.exe")
	{
        ;global
		
        ; Próximos passos: 
        ; 1. fazer "If's" para cada um dos menus, alocando o nome das agora variáveis globais...
        ;    ...(lá em cima) a variáveis locais que poderão substituir foo1 e foo2
		
		
        ; Rotina para garantir que o título da box seja adequadamente mostrado na message Box, em UTF-8
		size1 := StrPut(foo1, "CP0")
		VarSetCapacity(1Utf8, size1)
		size1 := StrPut(foo1, &1Utf8, size1, "CP0")
		
        ; Rotina para garantir que o conteúdo da box seja adequadamente mostrado na message Box, em UTF-8
		size2 := StrPut(foo2, "CP0")
		VarSetCapacity(2Utf8, size2)
		size2 := StrPut(foo2, &2Utf8, size2, "CP0")
		
        ; Talvez fazer if para passar diferentes tamanhos a boxes dependendo do tamanho da mensagem
		InputBox, x , % StrGet(&1Utf8, "UTF-8"), % StrGet(&2Utf8, "UTF-8"),, 375, 400
		
        ; Fazer aqui "If's" para cada uma das possíveis páginas a se abrir, independendo do menu
        ; (Usar o parâmetro "menu" como condição que determina a qual menu as opções respondem)
		
		
		Return
	}
}



; Função básica de acesso a site e para deixá-lo pronto para receber input (número de tabs)


basic_get(webpage, num_of_tabs){
    WinActivate ahk_exe chrome.exe
    Sleep 200
    WinMaximize ahk_exe chrome.exe
    Sleep 200
    Send {CtrlDown}{t}{CtrlUp}}{t up}
    Send !d
    SendInput {Raw} %webpage%
    if (num_of_tabs == 0){
        Return
    } else {
        Send {Enter}
        Sleep 3000
        Send {Tab %num_of_tabs%}
        Return  
    }
}


; Websites que exigem preparo diferente (funções próprias):
; - SEI MPS
; - SEI SECMPS
; - Memed (Assinatura Digital)


}

memed(){


}

ufmg(){


}


  ; Aplicativos (A)

    if WinExist(ahk_exe chrome.exe)
	{
		>^a::
		txt1 = Atalhos para Aplicativos diversos
		txt2 = 
        (
        Digite o número correspondente ao serviço desejado:

            1. Whatsapp
            2. Todoist
            3. Memed
            4. Notion
            5. Walling
            6. Raindrop
            7. Teams
            8. Ofice 365
            9. Pastemagic
            10. Speechnotes
            11. Youtube Music
            12. OneDrive
            13. Whimsical
        )
        ; Rotina para garantir que o título da box seja adequadamente mostrado na message Box, em UTF-8
		size1 := StrPut(txt1, "CP0")
		VarSetCapacity(1Utf8, size1)
		size1 := StrPut(txt1, &1Utf8, size1, "CP0")
		
        ; Rotina para garantir que o conteúdo da box seja adequadamente mostrado na message Box, em UTF-8
		size2 := StrPut(txt2, "CP0")
		VarSetCapacity(2Utf8, size2)
		size2 := StrPut(txt2, &2Utf8, size2, "CP0")
		InputBox, x , % StrGet(&1Utf8, "UTF-8"), % StrGet(&2Utf8, "UTF-8"),, 375, 400
		
		Return
	}

    ; APLICATIVOS Google (G)

    if WinExist(ahk_exe chrome.exe)
	{
		>^g::
		txt1 = Atalhos para serviços Google
		txt2 = 
        (
        Digite o número correspondente ao serviço desejado:

            1. Youtube
            2. Agenda
            3. Gmail
            4. Google Pesquisa
            5. Livros
            6. Scholar
            7. Tradutor
            8. Keep
            9. Maps
            10. Shopping
            11. Podcasts
            12. Forms
            13. Drive
            14. Travel
            15. Finanças
            16. Imagens
        )
        ; Rotina para garantir que o título da box seja adequadamente mostrado na message Box, em UTF-8
		size1 := StrPut(txt1, "CP0")
		VarSetCapacity(1Utf8, size1)
		size1 := StrPut(txt1, &1Utf8, size1, "CP0")
		
        ; Rotina para garantir que o conteúdo da box seja adequadamente mostrado na message Box, em UTF-8
		size2 := StrPut(txt2, "CP0")
		VarSetCapacity(2Utf8, size2)
		size2 := StrPut(txt2, &2Utf8, size2, "CP0")
		
		InputBox, x , % StrGet(&1Utf8, "UTF-8"), % StrGet(&2Utf8, "UTF-8"),, 375, 400
		
        ; Ativando Youtube com cursor já na barra de pesquisa para agilizar:
		if (x==1)
		{
			WinActivate ahk_exe chrome.exe
			Sleep 200
			WinMaximize ahk_exe chrome.exe
			Sleep 200
			Send {CtrlDown}{t}{CtrlUp}}{t up}
			Send !d
			SendInput {Raw}youtube.com
			Send {Enter}
			sleep 3000
			Send {Tab 4}
			Return  
		}
        ; Ativando Google Agenda
        if (x==2)
        {
		  WinActivate ahk_exe chrome.exe
            Sleep 200
            WinMaximize ahk_exe chrome.exe
            Sleep 200
            Send {CtrlDown}{t}{CtrlUp}}{t up}
            Send !d
            SendInput {Raw}https://calendar.google.com/calendar
            Send {Enter}
		  Return
	   }
		
        ;Ativando Gmail
        if (x==3)
        {
            WinActivate ahk_exe chrome.exe
            Sleep 200
            WinMaximize ahk_exe chrome.exe
            Sleep 200
            Send {CtrlDown}{t}{CtrlUp}}{t up}
            Send !d
            SendInput {Raw}https://gmail.com
            Send {Enter}
            Return
        }
        ; Ativando Google Pesquisa
        if (x==4)
        {
            WinActivate ahk_exe chrome.exe
            Sleep 200
            WinMaximize ahk_exe chrome.exe
            Sleep 200
            Send {CtrlDown}{t}{CtrlUp}}{t up}
            Send !d
            SendInput {Raw}google.com
            Send {Enter}
            Sleep 3000
            Send {Tab 5}
            Return  
        }
        ; Ativando Google Livros
        if (x==5)
        {
            WinActivate ahk_exe chrome.exe
            Sleep 200
            WinMaximize ahk_exe chrome.exe
            Sleep 200
            Send {CtrlDown}{t}{CtrlUp}}{t up}
            Send !d
            SendInput {Raw}https://books.google.com.br/
            Send {Enter}
            Sleep 3000
            Send {Tab 3}
            Return  
        }

        ; Ativando Google Scholar
        if (x==6)
        {
            WinActivate ahk_exe chrome.exe
            Sleep 200
            WinMaximize ahk_exe chrome.exe
            Sleep 200
            Send {CtrlDown}{t}{CtrlUp}}{t up}
            Send !d
            SendInput {Raw}https://scholar.google.com.br
            Send {Enter}
            Sleep 3000
            Send {Tab 4}
            Return  
        }

        ; Ativando Google Tradutor
        if (x==7)
        {
            WinActivate ahk_exe chrome.exe
            Sleep 200
            WinMaximize ahk_exe chrome.exe
            Sleep 200
            Send {CtrlDown}{t}{CtrlUp}}{t up}
            Send !d
            SendInput {Raw}https://translate.google.com.br/?hl=pt-BR
            Send {Enter}
            Sleep 3000
            Send {Tab 12}
            Return  
        }

        ; Ativando Google Keep
        if (x==8)
        {
            WinActivate ahk_exe chrome.exe
            Sleep 200
            WinMaximize ahk_exe chrome.exe
            Sleep 200
            Send {CtrlDown}{t}{CtrlUp}}{t up}
            Send !d
            SendInput {Raw}https://keep.google.com/u/0/#home
            Send {Enter}
            
            Return  
        }

        ; Ativando Google Maps
        if (x==9)
        {
            WinActivate ahk_exe chrome.exe
            Sleep 200
            WinMaximize ahk_exe chrome.exe
            Sleep 200
            Send {CtrlDown}{t}{CtrlUp}}{t up}
            Send !d
            SendInput {Raw}https://www.google.com/maps
            Send {Enter}
            Return  
        }

        ; Ativando Google Shopping
        if (x==10)
        {
            WinActivate ahk_exe chrome.exe
            Sleep 200
            WinMaximize ahk_exe chrome.exe
            Sleep 200
            Send {CtrlDown}{t}{CtrlUp}}{t up}
            Send !d
            SendInput {Raw}https://shopping.google.com/
            Send {Enter}
            Sleep 3000
            Send {Tab 4}
            Return  
        }

        ; Ativando Google Podcasts
        if (x==11)
        {
            WinActivate ahk_exe chrome.exe
            Sleep 200
            WinMaximize ahk_exe chrome.exe
            Sleep 200
            Send {CtrlDown}{t}{CtrlUp}}{t up}
            Send !d
            SendInput {Raw}https://podcasts.google.com
            Send {Enter}
            Sleep 3000
            Send {Tab 5}
            Return  
        }

        ; Ativando Google Forms
        if (x==12)
        {
            WinActivate ahk_exe chrome.exe
            Sleep 200
            WinMaximize ahk_exe chrome.exe
            Sleep 200
            Send {CtrlDown}{t}{CtrlUp}}{t up}
            Send !d
            SendInput {Raw}https://docs.google.com/forms/u/0/
            Send {Enter}
            Return
        } 

        ; Ativando Google Drive
        if (x==13)
        {
            WinActivate ahk_exe chrome.exe
            Sleep 200
            WinMaximize ahk_exe chrome.exe
            Sleep 200
            Send {CtrlDown}{t}{CtrlUp}}{t up}
            Send !d
            SendInput {Raw}https://drive.google.com/drive/u/0/my-drive
            Send {Enter}
            Return  
        }
        ; Ativando Google Travel
        if (x==14)
        {
            WinActivate ahk_exe chrome.exe
            Sleep 200
            WinMaximize ahk_exe chrome.exe
            Sleep 200
            Send {CtrlDown}{t}{CtrlUp}}{t up}
            Send !d
            SendInput {Raw}https://www.google.com/travel/
            Send {Enter}
            Return  
        }
        ; Ativando Google Finanças
        if (x==15)
        {
            WinActivate ahk_exe chrome.exe
            Sleep 200
            WinMaximize ahk_exe chrome.exe
            Sleep 200
            Send {CtrlDown}{t}{CtrlUp}}{t up}
            Send !d
            SendInput {Raw}https://www.google.com/finance/
            Send {Enter}
            Return  
        }
        ; Ativando Google Imagens
        if (x==16)
        {
            WinActivate ahk_exe chrome.exe
            Sleep 200
            WinMaximize ahk_exe chrome.exe
            Sleep 200
            Send {CtrlDown}{t}{CtrlUp}}{t up}
            Send !d
            SendInput {Raw}https://www.google.com/imghp?hl=pt-brgoogle.com
            Send {Enter}
            Sleep 3000
            Send {Tab 3}
            Return  
        }
    Return
    }

    ; UFMG (U)
    if WinExist(ahk_exe chrome.exe)
	{
		>^u::
		txt1 = Atalhos para serviÃ§os UFMG
		txt2 = 
        (
        Digite o número correspondente ao serviço desejado:

            1. Minha UFMG
            2. Sistema SEI - Blocos de Assinaturas do ambiente SECMPS
            3. Sistema SEI - Blocos de Assinaturas do ambiente MPS
            4. Sistema SEI - Consulta de processos (já copiados) no ambiente SECMPS
            5. Sistema SEI - Consulta de processos (já copiados) no ambiente MPS
            6. 
            7. 
            8.  
            9. 
            10. 
            11  
            12. 
            13. 
        )
        ; Rotina para garantir que o título da box seja adequadamente mostrado na message Box, em UTF-8
		size1 := StrPut(txt1, "CP0")
		VarSetCapacity(1Utf8, size1)
		size1 := StrPut(txt1, &1Utf8, size1, "CP0")
		
        ; Rotina para garantir que o conteúdo da box seja adequadamente mostrado na message Box, em UTF-8
		size2 := StrPut(txt2, "CP0")
		VarSetCapacity(2Utf8, size2)
		size2 := StrPut(txt2, &2Utf8, size2, "CP0")
		
		InputBox, x , % StrGet(&1Utf8, "UTF-8"), % StrGet(&2Utf8, "UTF-8"),, 550, 400
		Return
	}



    ; Redes Sociais (R) 
    ; Moodle (M)
    ; Pesquisa (P)
    ; Notícias (N)
    
}

; *************** Automatização do Firefox ******************************
{
    if WinExist(ahk_exe obs64.exe)
    {
        !z::
        WinActivate ahk_exe obs64.exe
        Sleep 200
        WinMaximize ahk_exe obs64.exe
        Sleep 200
        MouseClick, Left, 2443, 111, 1
        WinActivate ahk_exe firefox.exe
        Sleep 100
        MouseClick, Left, 641, 487, 2
        Sleep 300
        Send {LWin Down}{1}{LWin up}{1 up}
        Return
    }
    {
        !q::
        WinActivate ahk_exe obs64.exe
        WinMaximize ahk_exe obs64.exe
        Sleep 200
        MouseClick, Left, 2443, 111, 1
        Sleep 300
        WinActivate ahk_exe firefox.exe
        Sleep 300
        Send {Esc}
        Sleep 700
        Send !d
        Sleep 500
        Send {Right}
        Send {Left}
        Send {Ctrl Down}{Shift Down}{Left Down}{Ctrl Up}{Shift Up}{Left Up}
        Send ^c
        Send {Esc}
        Sleep 100
        name := % Clipboard
        FormatTime, TimeString, , ddMMyyyyhhmmss tt
        file_name := name . " " . TimeString
        if FileExist("D:\Teste\OBS_Provisorio*.mp4")
            FileMove, D:\Teste\OBS_Provisorio*.mp4, D:\Teste\Inbox\%file_name%.mp4
        Sleep 500
        Return
    }
}
