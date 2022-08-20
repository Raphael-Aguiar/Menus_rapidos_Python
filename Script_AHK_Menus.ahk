#Persistent ; Needed to continue the script after autoexec section has been executed.
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance Force
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.




; OBSERVAÇÃO: Código de apoio ao script de menu SE ENCONTRA NO ARQUIVO DE MESMO NOME.




;************************************** Declaração de variáveis ********************************************************************
; Variáveis para os títulos das boxs:
text_title_app := "Atalhos para Aplicativos diversos"
text_title_goog := "Atalhos para serviços Google"
text_title_ufmg := "Atalhos para serviços UFMG"
text_title_moodle := "Atalhos para Diários de Classe e Moodle"
text_title_pesquisa := "Atalhos para serviços de Pesquisa"
text_title_noticias := "Atalhos para serviços de Notícias"
text_title_notion := "Atalhos para Áreas de Foco no Notion"
text_title_redes := "Atalhos para Redes Sociais"


; Variáveis para os textos da boxs:
txt_menu_app = 
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
text_menu_google = 
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
text_menu_UFMG = 
(
    Digite o número correspondente ao serviço desejado:

            1. Minha UFMG
            2. Sistema SEI - Blocos de Assinaturas do ambiente SECMPS
            3. Sistema SEI - Blocos de Assinaturas do ambiente MPS
            4. Sistema SEI - Consulta de processos (já copiados) no ambiente SECMPS
            5. Sistema SEI - Consulta de processos (já copiados) no ambiente MPS
)


text_menu_moodle =
(
    Digite o número correspondente ao serviço desejado:

            1. PSP (MPS005) - Moodle
		  2. PSP (MPS005) - Diário de Classe
		  3. Didática (MPS906) - Moodle
		  4. Didática (MPS906) - Diário de Classe
		  5. Políticas Mestrado (ENF908) - Moodle
		  6. Políticas Mestrado (ENF908) - Diário de Classe
)

text_menu_pesquisa =
(
    Digite o número correspondente ao serviço desejado:

            1. Plataforma Brasil
		  2. Sucupira
		  3. Alterações Lattes
		  4. Meu Lattes
		  5. Meu Google Scholar
		  6. Z-Library
		  7. ZoteroBib
		  8. Sci-HUB
		  9. Orcid
		  10. Publons
            11. Research Gate
)

text_menu_noticias =
(
    Digite o número correspondente ao serviço desejado:

            1. O Globo
		  2. Estadão
		  3. Antagonista
		  4. Crusoé
		  5. Google News
)

text_menu_notion =
(
    Digite o número correspondente ao serviço desejado:

            1. Minha UFMG
            
)

text_menu_redes=
(
    Digite o número correspondente ao serviço desejado:

            1. Minha UFMG
            
)




;********************************** SITES ***********************************


; Variáveis para os links Apps:


; Variáveis para os links google:
link_youtube = youtube.com
link_calendar = https://calendar.google.com/calendar
link_gmail = https://gmail.com
link_google = google.com
link_books = https://books.google.com.br/
link_scholar = https://scholar.google.com.br
link_translator = https://translate.google.com.br/?hl=pt-BR
link_keep = https://keep.google.com/u/0/#home
link_maps = https://www.google.com/maps
link_shopping = https://shopping.google.com/
link_podcasts = https://podcasts.google.com
link_forms = https://docs.google.com/forms/u/0/
link_drive = https://drive.google.com/drive/u/0/my-drive
link_travel = https://www.google.com/travel/
link_finances = https://www.google.com/finance/
link_images = https://www.google.com/imghp?hl=pt-brgoogle.com


; Variáveis para os links UFMG: (U)



; Variáveis para os links Moodle/Diário: (?)



; Variáveis para os links Pesquisa:(P)



; Variáveis para os links Notícias:(J)



; Variáveis para os links Notion/Áreas de Foco/ P.A.R.A: (?)



; Variáveis para os links de Redes Sociais (R)