
# Um atalho via AHK aciona este script com argumentos diferentes no terminal

"""
def main_trigger(AHK!!!!!!!): A FUNÇÃO TERÁ UM PARÂMETRO CONFORME O ATALHO!
    # Acionar Terminal
    # Digitar comando no terminal com argumento conforme o atalho acionado.
    # Enviar comando + argumento
"""

class Start:

    import sys
    menu = sys.argv[1]
    global menu

    def instanciator(self):
        if menu == 0:
            from main_classes import MainApps
            MainApps()
        elif menu == 1:
            from main_classes import Google
            Google()
        else:
            print ("Erro: parâmetro passado incorretamente")

    # Instancia a classe escolhida de menu conforme o argumento repassado
    # ao se iniciar o programa

    pass

def closing():

    # Encerra o programa
    pass

def main():

    instanciator()

    subclasse.menu()

    subclasse.trigger_site()  # OU
    subclasse.trigger_app()

    subclasse.metodos_finais()

    closing()

    pass

main()
"""