# RESULTADO DE TESTE:
# É possível instanciar uma classe dentro de uma função qualquer, ou mesmo
# de um método seu próprio, e retornar essa instância

class Maker:

    def __init__(self, x):
        self.x = x

    def teste(self):
        terra = Maker(12)
        return terra


def barco(t):
    x = Maker(t)
    return x

gaia = barco(13)
print(gaia.x)

final = gaia.teste()
print(final.x)

"""
# Teste para abrir o Windows Terminal e digitar o comando com parâmetro
# ESSA PARTE NA VERDADE VAI FICAR PARA O AHK!

import os
import pyautogui
import time

os.startfile('wt.exe')
time.sleep(2)
pyautogui.typewrite('python D:\\OneDrive\\Documentos\\Github\\Projects'
                    '\\Automation_Projects\\Menus_rapidos_Python\\teste_2.py 1')
time.sleep(1)
pyautogui.press('enter')

"""
