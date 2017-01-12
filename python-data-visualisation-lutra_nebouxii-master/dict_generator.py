import os
from PIL import Image
from PIL import ImageFont
from PIL import ImageDraw
import get_sql
import psycopg2
import itertools
import collections
import random


def get_list_from_sql(sql_statement):
    database = get_sql.runSql(sql_statement, "dbname='pbarna' user='pbarna' host='localhost' password='wolftc?!12'")
    c = 0
    printable = []
    for i in database:
        printable.append(str(database[c]).strip("'(),"))
        c += 1
    return printable 

def main_dictionary():
    
    c = 0 
    c2 = 0
    c3 = 0
    dictionary_eur = {}
    dictionary_usd = {}
    dictionary_gbp = {}
    EUR_value = (get_list_from_sql("""SELECT budget_value FROM project WHERE budget_currency = 'EUR'"""))
    USD_value = (get_list_from_sql("""SELECT budget_value FROM project WHERE budget_currency = 'USD'"""))
    GBP_value = (get_list_from_sql("""SELECT budget_value FROM project WHERE budget_currency = 'GBP'"""))
    
    EUR_name = (get_list_from_sql("""SELECT company_name FROM project WHERE budget_currency = 'EUR'"""))
    USD_name = (get_list_from_sql("""SELECT company_name FROM project WHERE budget_currency = 'USD'"""))
    GBP_name = (get_list_from_sql("""SELECT company_name FROM project WHERE budget_currency = 'GBP'"""))
    #dictionary_all[dictionary_eur, dictionary_usd, dictionary_gbp]
    for i in EUR_value:
        dictionary_eur[str(EUR_name[c])] = float(EUR_value[c]) * float(308.5)
        c +=1
    
    for i in USD_value:
        dictionary_usd[str(USD_name[c2])] = float(USD_value[c2]) * float(292.25)
        c2 +=1

    for i in GBP_value:
        dictionary_gbp[str(GBP_name[c3])] = float(GBP_value[c3]) * float(354.99)
        c3 +=1


    the_one_dict_to_rule_them_all = dictionary_eur.copy()
    the_one_dict_to_rule_them_all.update(dictionary_gbp)
    the_one_dict_to_rule_them_all.update(dictionary_usd)

    return the_one_dict_to_rule_them_all