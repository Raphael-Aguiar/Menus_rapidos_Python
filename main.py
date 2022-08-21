# Um atalho via AHK aciona este script com argumentos diferentes no terminal
"""
def main_trigger(AHK!!!!!!!): A FUNÇÃO TERÁ UM PARÂMETRO CONFORME O ATALHO!
    # Acionar Terminal
    # Digitar comando no terminal com argumento conforme o atalho acionado.
    # Enviar comando + argumento
"""


# import sys
# user_option = sys.argv[1]

class Start:

    @staticmethod
    def selector(menu):
        import main_classes
        if menu == 0:
            return main_classes.MainApps()
        elif menu == 1:
            return main_classes.Google()
        else:
            print("Erro: parâmetro passado incorretamente")


if __name__ == '__main__':
    x = Start()
    classe = x.selector(0)  # Colocar "user_option" depois no lugar do 0
    # Instancia a classe escolhida de menu conforme o argumento repassado
    # ao se iniciar o programa

    classe.menu()
    classe.trigger_site(1)

    # closing()
