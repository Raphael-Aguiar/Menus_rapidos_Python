
# Um atalho via AHK aciona este script com argumentos diferentes no terminal

"""
def main_trigger(AHK!!!!!!!): A FUNÇÃO TERÁ UM PARÂMETRO CONFORME O ATALHO!
    # Acionar Terminal
    # Digitar comando no terminal com argumento conforme o atalho acionado.
    # Enviar comando + argumento
"""
#import sys
#user_option = sys.argv[1]

class Start:

    def selector(self, menu):
        if menu == 0:
            #from main_classes import MainApps
            return MainApps()
        elif menu == 1:
            #from main_classes import Google
            return Google()
        else:
            print ("Erro: parâmetro passado incorretamente")


    def closing(self):

    # Encerra o programa
        pass

class Master:

    def menu(self):
        # Exibe o menu no terminal (print) com pacote better table
        # Pergunta a opção de site/aplicativo e recebe o input (X)
        from prettytable import PrettyTable

        table = PrettyTable()

        table.field_names = ["Opção", "Serviço"]
        table.add_row(classe.var0)
        table.add_row(classe.var1)
        table.add_row(classe.var2)
        table.add_row(classe.var3)
        table.add_row(classe.var4)
        table.add_row(classe.var5)
        table.add_row(classe.var6)
        table.add_row(classe.var7)
        table.add_row(classe.var8)
        table.add_row(classe.var9)

        print(table)


    def trigger_site(self, X):
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

x = Start()
classe = x.selector(1) # Colocar "user_option" depois no lugar do 1
# Instancia a classe escolhida de menu conforme o argumento repassado
# ao se iniciar o programa

classe.menu()


"""

    subclasse.trigger_site()  # OU
    subclasse.trigger_app()

    subclasse.metodos_finais()

    closing()

    pass


"""