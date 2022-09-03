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
        win.restore()

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

    pass


class Google(Master):
    intro = 'Serviços google:'
    var0 = ['Gmail', 'https://gmail.com']
    var1 = ['Calendar', 'https://calendar.google.com/calendar']
    var2 = ['Youtube', 'https://youtube.com']
    var3 = ['Scholar', 'https://scholar.google.com.br']
    var4 = ['Translator', 'https://translate.google.com.br/?hl=pt-BR']
    var5 = ['Books', 'https://books.google.com.br/']
    var6 = ['Drive', 'https://drive.google.com/drive/u/0/my-drive']
    var7 = ['Podcasts', 'https://podcasts.google.com']
    var8 = ['Keep', 'https://keep.google.com/u/0/#home']
    var9 = ['Shopping', 'https://shopping.google.com/']

    pass
