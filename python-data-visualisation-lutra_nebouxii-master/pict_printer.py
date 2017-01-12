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
import comp_name



def task_first(textog):
    
    print ('Please give image a resolution for image:')
    
    try:
        res_x = int(input('height (800px - 3000px): '))
        res_y = int(input('width (800px - 3000px): '))
    except ValueError:
        print ('Your resolution is out of range, I generate random, thx!')
        res_x = random.randrange(800, 2999) 
        res_y = random.randrange(800, 2999)

        
    if (res_x < 800) or (res_y < 800) or (res_x > 3000) or (res_y > 3000):
        print ('Please give image a resolution for image:')
        res_x = int(input('height (800px - 3000px): '))
        res_y = int(input('width (800px - 3000px): '))

    elif (res_x < 800) or (res_y < 800) or (res_x > 3000) or (res_y > 3000):
        print ('Your resolution is out of range, I generate random, thx!')
        res_x = random.randrange(800, 2999) 
        res_y = random.randrange(800, 2999)

    else:
        res_x = res_x
        res_y = res_y

    img = Image.new("RGB", (res_x, res_y), "blue")
    draw = ImageDraw.Draw(img)
    #   font = ImageFont.truetype(<font-file>, <font-size>)
    text_options = {
    'fill': (20, 30, 400)
    

    }

    
    c = 0    
    for i in textog:
        text_content = (textog[c])
        font = ImageFont.truetype("Market_Deco.ttf", (c + 1) * 6)
        text_size = draw.textsize(text_content)
        # draw.text((x, y),text_content,(r,g,b))
        draw.text((c * random.randrange(60), c * random.randrange(60)), text_content, font = font)
        #draw.text((1, text_size[1]), text_content, font = font)
        #draw.text((text_size[1], 1), text_content, **text_options)
        #draw.text(text_size, text_content, **text_options)
        c += 1
    img.save('sample-out-1.png')



def task_second(textog):

    print ('Please give image a resolution for image:')
    
    try:
        res_x = int(input('height (800px - 3000px): '))
        res_y = int(input('width (800px - 3000px): '))
    except ValueError:
        print ('Your resolution is out of range, I generate random, thx!')
        res_x = random.randrange(800, 2999) 
        res_y = random.randrange(800, 2999)

        
    if (res_x < 800) or (res_y < 800) or (res_x > 3000) or (res_y > 3000):
        print ('Please give image a resolution for image:')
        res_x = int(input('height (800px - 3000px): '))
        res_y = int(input('width (800px - 3000px): '))

    elif (res_x < 800) or (res_y < 800) or (res_x > 3000) or (res_y > 3000):
        print ('Your resolution is out of range, I generate random, thx!')
        res_x = random.randrange(800, 2999) 
        res_y = random.randrange(800, 2999)

    else:
        res_x = res_x
        res_y = res_y
    
    
    img = Image.new("RGB", (res_x, res_y), "green")
    draw = ImageDraw.Draw(img)
    #   font = ImageFont.truetype(<font-file>, <font-size>)
    #text_options = {
    #'fill': (20, 30, 400)

    #}

    
    c = 0    
    for i in textog:
        
        text_content = (textog[c])
        font = ImageFont.truetype("Market_Deco.ttf", (c + 1) * 6)
        text_size = draw.textsize(text_content)
        # draw.text((x, y),text_content,(r,g,b))
        draw.text((c * random.randrange(60), c * random.randrange(60)), text_content, font = font)
        #draw.text((1, text_size[1]), text_content, font = font)
        #draw.text((text_size[1], 1), text_content, **text_options)
        #draw.text(text_size, text_content, **text_options)
        c += 1
    img.save('sample-out-2.png')

