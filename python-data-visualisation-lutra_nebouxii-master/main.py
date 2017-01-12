
import os
from PIL import Image
from PIL import ImageFont
from PIL import ImageDraw
import get_sql
import psycopg2
import itertools
import collections
import random
import operator
import dict_sorter
import pict_printer
import dict_generator
import comp_name

def main():
    
    valar_morgulis = dict_generator.main_dictionary()
    names = dict_sorter.dictionary_sorting(valar_morgulis)
    
    print("""  
         _           _                _   _      _                      _ _
        | |         | |              | \ | |    | |                    (_|_)
        | |    _   _| |_ _ __  __ _  |  \| | ___| |__   ___  _   ___  ___ _ 
        | |   | | | | __| '__|/ _` | | . ` |/ _ \ '_ \ / _ \| | | \ \/ / | |
        | |___| |_| | |_| |  | (_| | | |\  |  __/ |_) | (_) | |_| |>  <| | |
        |______\__,_|\__|_|  |_| |_| |_| \_|\___|_.__/ \___/ \__,_/_/\_\_|_|
    
       
        1: All company names 
        2: Project names according to their budget
        3: ABC
        4: Donno(something)
        q: Exit
    """)

    number = input('You choose: ').lower()
    if number == "q":
        exit()

    elif number == '1':
        valar_doheris = comp_name.print_name_list()
        sjwuasmd = dict_sorter.dictionary_sorting(valar_doheris)
        pict_printer.task_first(sjwuasmd)
        print("\nPICTURE GENERATED\n")
        
    elif number == '2':
        
        valar_morgulis = dict_generator.main_dictionary()       
        pict_printer.task_second(names)
        print("\nPICTURE GENERATED\n")

    elif number == '3':
        pass
        # 3-as program

       
    elif number == '4':
        pass
        # 4-es program
        
        
    else:
        print('''
        Please don't be a retard''')



main()
