class Master:

    def menu(self):
        # Exibe o menu no terminal (print) com pacote better table
        # Pergunta a opção de site/aplicativo.
        from prettytable import PrettyTable
        from colorama import Fore, Style

        table = PrettyTable()

        table.field_names = ["Opção", "Serviço"]
        table.add_row([1, self.var0[0]])
        table.add_row([2, self.var1[0]])
        table.add_row([3, self.var2[0]])
        table.add_row([4, self.var3[0]])
        table.add_row([5, self.var4[0]])
        table.add_row([6, self.var5[0]])
        table.add_row([7, self.var6[0]])
        table.add_row([8, self.var7[0]])
        table.add_row([9, self.var8[0]])
        table.add_row([10, self.var9[0]])

        print(Fore.GREEN + Style.BRIGHT)
        print(self.intro)
        print(table)

    def trigger_site(self):
        # Recebe o input e aciona o site
        # Dependendo do site, também deixa o cursor pronto para digitação
        import pyautogui
        import pygetwindow as gw
        import psutil
        import os
        import time

        user_option2 = int(input("Selecione o serviço de sua preferência:"))

        lista = [self.var0, self.var1, self.var2, self.var3, self.var4,
                 self.var5, self.var6, self.var7, self.var8, self.var9]
        sites = []

        for item in lista:
            sites.append(item[1])

        if 'chrome.exe' not in (p.name() for p in psutil.process_iter()):
            os.startfile('chrome.exe')
            time.sleep(5)

        win = gw.getWindowsWithTitle('Google Chrome')[0]
        win.activate()

        pyautogui.hotkey('ctrl', 't')
        time.sleep(0.5)
        pyautogui.hotkey('alt', 'd')
        pyautogui.write(sites[user_option2 - 1])
        pyautogui.press('enter')


class MainApps(Master):
    intro = 'Principais aplicativos usados:'
    var0 = ['Whatsapp', 'https://web.whatsapp.com/']
    var1 = ['Todoist', 'https://beta.todoist.com/app/project/1249942567']
    var2 = ['Memed', 'https://memed.com.br/plataforma/#']
    var3 = ['Raindrop', 'https://app.raindrop.io/my/18751286']
    var4 = ['Pastemagic', 'https://pastemagic.com/']
    var5 = ['Walling', 'https://walling.app/web/daily-desk']
    var6 = ['Teams', 'https://teams.microsoft.com/_#/school//?ctx=teamsGrid']
    var7 = ['Office 365', 'https://www.office.com/apps?auth=2&home=1']
    var8 = ['Speechnotes', 'https://speechnotes.co/pt/']
    var9 = ['Whimsical', 'https://whimsical.com/']


class Google(Master):
    intro = 'Serviços google:'
    var0 = ['Gmail', 'https://gmail.com']
    var1 = ['Calendar', 'https://calendar.google.com/calendar']
    var2 = ['Youtube', 'https://youtube.com']
    var3 = ['Scholar', 'https://scholar.google.com.br']
    var4 = ['Translator', 'https://translate.google.com.br']
    var5 = ['Books', 'https://books.google.com.br/']
    var6 = ['Drive', 'https://drive.google.com/drive/u/0/my-drive']
    var7 = ['Podcasts', 'https://podcasts.google.com']
    var8 = ['Keep', 'https://keep.google.com/u/0/#home']
    var9 = ['Shopping', 'https://shopping.google.com/']


class UFMG(Master):
    intro = 'serviços UFMG'
    var0 = ['Minha UFMG', 'https://sistemas.ufmg.br/idp/login.jsp']
    var1 = ['Bloco SEI - SECMPS',
            'https://sei.ufmg.br/sei/controlador.php?acao=procedimento_controlar&acao_origem=principal&acao_retorno=principal&inicializando=1&infra_sistema=100000100&infra_unidade_atual=110001121&infra_hash=a3fd3c257e5abc0efd91b7c3ac39de7cf0c7c961de14bbd5fac1b608357aee52']
    var2 = ['Bloco SEI - MPS',
            'https://sei.ufmg.br/sei/controlador.php?acao=procedimento_controlar&acao_origem=principal&acao_retorno=principal&inicializando=1&infra_sistema=100000100&infra_unidade_atual=110001121&infra_hash=a3fd3c257e5abc0efd91b7c3ac39de7cf0c7c961de14bbd5fac1b608357aee52']
    var3 = ['Processos SEI - SECMPS', 'https://scholar.google.com.br']
    var4 = ['Processos SEI - MPS', 'https://translate.google.com.br']
    var5 = ['Calendário Letivo 2022',
            'https://ufmg.br/storage/8/a/6/8/8a68f0db6f7292ab2a169bd711a0c9f1_1640032917367_70537452.pdf']
    var6 = ['SOU.GOV', 'https://sougov.economia.gov.br/sougov/']
    var7 = ['Regras Acadêmicas',
            'https://ufmg.br/vida-academica/regras-academicas']
    var8 = ['Diário de Classe (Geral)',
            'https://sistemas.ufmg.br/diario/principal.do']
    var9 = ['Moodle (Geral)', 'https://virtual.ufmg.br/minhasturmas/']


class Classroom(Master):
    intro = 'Diários de Classe e Moodle'
    var0 = ['PSP (MPS005) - Moodle', '']
    var1 = ['PSP (MPS005) - Diário de Classe', '']
    var2 = ['Políticas Mestrado (ENF908) - Moodle', '']
    var3 = ['Políticas Mestrado (ENF908) - Diário de Classe', '']
    var4 = ['Didática (MPS906) - Moodle', '']
    var5 = ['Didática (MPS906) - Diário de Classe', '']
    var6 = ['', '']
    var7 = ['', '']
    var8 = ['', '']
    var9 = ['', '']


class NotionWork(Master):
    intro = 'Áreas de Foco profisionais no Notion'
    var0 = ['', '']
    var1 = ['', '']
    var2 = ['', '']
    var3 = ['', '']
    var4 = ['', '']
    var5 = ['', '']
    var6 = ['', '']
    var7 = ['', '']
    var8 = ['', '']
    var9 = ['', '']
    pass


class NotionHome(Master):
    intro = 'Áreas de Foco pessoais no Notion'
    var0 = ['', '']
    var1 = ['', '']
    var2 = ['', '']
    var3 = ['', '']
    var4 = ['', '']
    var5 = ['', '']
    var6 = ['', '']
    var7 = ['', '']
    var8 = ['', '']
    var9 = ['', '']
    pass


class DataScience(Master):
    intro = ''
    var0 = ['', '']
    var1 = ['', '']
    var2 = ['', '']
    var3 = ['', '']
    var4 = ['', '']
    var5 = ['', '']
    var6 = ['', '']
    var7 = ['', '']
    var8 = ['', '']
    var9 = ['', '']
    pass


class Learning(Master):
    intro = ''
    var0 = ['', '']
    var1 = ['', '']
    var2 = ['', '']
    var3 = ['', '']
    var4 = ['', '']
    var5 = ['', '']
    var6 = ['', '']
    var7 = ['', '']
    var8 = ['', '']
    var9 = ['', '']


class Pesquisa(Master):
    intro = 'serviços de Pesquisa'
    var0 = ['Plataforma Brasil', '']
    var1 = ['Sucupira', '']
    var2 = ['Alterações Lattes', '']
    var3 = ['Meu Lattes', '']
    var4 = ['Meu Google Scholar', '']
    var5 = ['Z-Library', '']
    var6 = ['ZoteroBib', '']
    var7 = ['Sci-HUB', '']
    var8 = ['Orcid', '']
    var9 = ['Publons', '']


class Noticias(Master):
    intro = 'serviços de Notícias'
    var0 = ['O Globo', '']
    var1 = ['Estadão', '']
    var2 = ['Antagonista', '']
    var3 = ['Crusoé', '']
    var4 = ['Google News', '']
    var5 = ['Twitter', '']
    var6 = ['Medium', '']
    var7 = ['Reddit', '']
    var8 = ['Feedly', '']
    var9 = ['', '']


class Social(Master):
    intro = 'Redes Sociais e serviços'
    var0 = ['Twitter', '']
    var1 = ['Medium', '']
    var2 = ['Reddit', '']
    var3 = ['Discord', '']
    var4 = ['Skoob', '']
    var5 = ['Instagram', '']
    var6 = ['Linkedin', '']
    var7 = ['Facebook', '']
    var8 = ['Youtube Music', '']
    var9 = ['Spotify', '']


'''
OneDrive

maps = ['Maps', 'https://www.google.com/maps']
travel = ['Travel', 'https://www.google.com/travel/']
finances = ['Finanças', 'https://www.google.com/finance/']
images = ['Imagens', 'https://www.google.com/imghp?hl=pt-brgoogle.com']
forms = ['Forms', 'https://docs.google.com/forms/u/0/']

var0 = ['', '']
var1 = ['', '']
var2 = ['', '']
var3 = ['', '']
var4 = ['', '']
var5 = ['', '']
var6 = ['', '']
var7 = ['', '']
var8 = ['', '']
var9 = ['', '']
'''
