

class Master:

    def menu(self):
        # Exibe o menu no terminal (print) com pacote better table
        # Pergunta a opção de site/aplicativo e recebe o input (X)
        import main
        from prettytable import PrettyTable

        table = PrettyTable()

        table.field_names = ["Opção", "Serviço"]
        table.add_row([0, self.var0[0]])
        table.add_row([1, self.var1[0]])
        table.add_row([2, self.var2[0]])
        table.add_row([3, self.var3[0]])
        table.add_row([4, self.var4[0]])
        table.add_row([5, self.var5[0]])
        table.add_row([6, self.var6[0]])
        table.add_row([7, self.var7[0]])
        table.add_row([8, self.var8[0]])
        table.add_row([9, self.var9[0]])

        print(table)

        pass

    def trigger_site(self, x):
        pass


class MainApps(Master):
    intro = 'principais aplicativos usados'
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
    intro = 'serviços google'
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
