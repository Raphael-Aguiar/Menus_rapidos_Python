#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance Force

Class Menu
{
	__New(title, content, link1, link2, link3, link4, link5, link6, link7, link8, link9, link10, link11, link12, link13, link14, link15)
	{
		this.title := title
		this.content := content
		this.link1 := link1
		this.link2 := link2
		this.link3 := link3
		this.link4 := link4
		this.link5 := link5
		this.link6 := link6
		this.link7 := link7
		this.link8 := link8
		this.link9 := link9
		this.link10 := link10
		this.link11 := link11
		this.link12 := link12
		this.link13 := link13
		this.link14 := link14
		this.link15 := link15
	}	
	
	menu_call(resposta)
	{	
		if (resposta == 1)
		{
			this.basic_get(link1)
		}
		if (resposta == 2)
		{
			this.basic_get(link2)
		}
		if (resposta == 3)
		{
			this.basic_get(link3)
		}
		if (resposta == 4)
		{
			this.basic_get(link4)
		}
		if (resposta == 5)
		{
			this.basic_get(link5)
		}
		if (resposta == 6)
		{
			this.basic_get(link6)
		}
		if (resposta == 7)
		{
			this.basic_get(link7)
		}
		if (resposta == 8)
		{
			this.basic_get(link8)
		}
		if (resposta == 9)
		{
			this.basic_get(link9)
		}
		if (resposta == 10)
		{
			this.basic_get(link10)
		}
		if (resposta == 11)
		{
			this.basic_get(link11)
		}
		if (resposta == 12)
		{
			this.basic_get(link12)
		}
		if (resposta == 13)
		{
			this.basic_get(link13)
		}
		if (resposta == 14)
		{
			this.basic_get(link14)
		}
		if (resposta == 15)
		{
			this.basic_get(link15)
		}
		else
		{
			MsgBox, Opção Inválida
		}
	}	
	; Função construtora da Gui
	Gui_Builder()
	{
		Global Resposta	
		Gui, New,, Atalhos para Aplicativos diversos
		Gui, font, cBlue s12 Arial Bold
		Gui, Add, Text,, % this.content
		Gui, Add, Edit, vResposta
		Gui, Add, Button,gContinuar default, OK
		Gui, Show, w500 h400
		WinWait, ahk_exe AutoHotkey.ex
		
		Continuar:
		Gui, Submit
		return Resposta
	}
	; Função básica de acesso a site e para deixá-lo pronto para receber input (número de tabs)
	basic_get(webpage)
	{
		WinActivate ahk_exe chrome.exe
		Sleep 200
			;WinMaximize ahk_exe chrome.exe
			;Sleep 200
		Send {CtrlDown}{t}{CtrlUp}{t up}
		Send !d
		SendInput {Raw} %webpage%
	}
}

aplic := New Menu
aplic.title := "Atalhos para Aplicativos diversos"
aplic.content := "
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
)"
aplic.link1 := "google.com"
Resposta := aplic.Gui_Builder()
MsgBox, % Resposta
aplic.menu_call(Resposta)


; Colocar aqui todos os links

;aplic.menu_call()

; Função TABs para depois (talvez como método do objetio já instanciado)
; basic_get(webpage), num_of_tabs)
/*
if (num_of_tabs == 0){
	Return
} else {
	Send {Enter}
	Sleep 3000
	Send {Tab %num_of_tabs%}
	Return  
}

;worker1 := new Employee(22, "Timothy", "Programmer")
;worker2 := new Employee(26, "Anthony", "Quality Assurance")
*/


/* BLOCO PARA LIMPEZA DAS MSGBOX UTF-8 - VER DEPOIS!!!!!
	1. As teclas acima acionam a função menu_call passando o parâmetro que especifica o menu.
	2. Essa função chama outras duas funções (as UTF-8) para "limpar" o texto do menu chamado.
	3. Em seguida, a função constroi o menu chamado e pede input.
	4. A partir do input, chama-se a função basic_get para acessar o serviço desejado e preparar o  
	prompt com TABs;
	5. Se o serviço tiver alterações, elas devem ser executadas aqui.
	
	
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
	
	
	w:: ;UTF-8 bytes (as string) to string
	;UTF-8 bytes (as string) -> raw UTF-8 data -> string
	vText := "cafÃ©"
	vSize := StrPut(vText, "CP0")
	VarSetCapacity(vUtf8, vSize)
	vSize := StrPut(vText, &vUtf8, vSize, "CP0")
	MsgBox, % StrGet(&vUtf8, "UTF-8") ;café
	return
	
	https://www.autohotkey.com/boards/viewtopic.php?t=67950
	
; Rotina para garantir que o título da box seja adequadamente mostrado na message Box, em UTF-8
		;size1 := StrPut(this.title, "CP0")
		;VarSetCapacity(1Utf8, size1)
		;size1 := StrPut(this.title, &1Utf8, size1, "CP0")
	
		; Rotina para garantir que o conteúdo da box seja adequadamente mostrado na message Box, em UTF-8
		;size2 := StrPut(this.content, "CP0")
		;VarSetCapacity(2Utf8, size2)
		;size2 := StrPut(this.content, &2Utf8, size2, "CP0") 
	
		;if WinExist("ahk_exe chrome.exe")
		;global this.title
		;global this.content
	
		;InputBox, resposta , aplic.title, aplic.content,, 375, 400
		;InputBox, resposta , % StrGet(&1Utf8, "UTF-8"), % StrGet(&2Utf8, "UTF-8"),, 375, 400
	
	
*/