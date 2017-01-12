import random
from termcolor import colored

board = [0,1,2,3,4,5,6,7,8,]

def show ():
    print(board[0],(colored('|','white','on_white')),board[1],(colored('|','white','on_white')), board[2],)
    print(colored('----------','white','on_white'))
    print(board[3],(colored('|','white','on_white')),board[4],(colored('|','white','on_white')), board[5],)
    print(colored('----------','white','on_white'))
    print(board[6],(colored('|','white','on_white')),board[7],(colored('|','white','on_white')), board[8],)

def check (plyr, s1, s2, s3):
    if board[s1] == plyr and board[s2] == plyr and board[s3] == plyr :
        return True
    return False

def checkall (plyr) :
    print("checking ",plyr)
    if check (plyr, 0, 1, 2):
        return True
    if check (plyr, 3, 4, 5):
        return True
    if check (plyr, 6, 7, 8):
        return True
    if check (plyr, 0, 3, 6):
        return True 
    if check (plyr, 1, 4, 7):
        return True
    if check (plyr, 2, 5, 8):
        return True
    if check (plyr, 0, 4, 8):
        return True
    if check (plyr, 2, 4, 6):
        return True





start=input(colored('WELKOME TO TIK-TAK-TOE ULTIMATE XIV2000, \n WOULD YOU LIKE TO PLAY? (y/n)!', 'green'))

if start == 'y' :
    multipl=input(colored('SINGLEPLAYER? OR MULTIPLAYER? (s/m)!','green'))
    show()
elif start== 'n':
    print (colored('I AM NOT MAD, IT IS COMPLITELY YOUR CHOISE BUT IF YOU WOULD LIKE TO PLAY ANYWAY, JUST RESTART!','green'))
    exit()

def engageAI () :
    if multipl=='s':
        return True
    if multipl=='m':
        return False


finding = True
#singleplyr

while finding== True and engageAI()==True:
    if checkall (colored('x','red')) == True:
        print (colored('X won dawg!','red'))
        finding=False
        break

    binput=input(colored('Yo dawg, which spot? ','green'))
    binput=int(binput)
    if board[binput] !=colored('x','red') and board[binput] !=colored('o','blue'):
        board[binput] = (colored('x','red'))

        #AI code
        while finding:

            random.seed()
            thug = random.randint(0,8)
            if board[thug] !=colored('o','blue') and board[thug] !=(colored('x','red')):
                board[thug] =colored('o','blue')
                break

            if checkall (colored('o','blue')) == True:
                print (colored('O won dawg!!','blue'))
                finding=False
                break
           

    elif binput > 8 :
        break
        print(colored('Yo dawg not good number dawg, try below 8!','yellow'))
    else :
        print(colored('Not today dawg!','yellow'))
    show()

#multiplyr

player1=True

while engageAI()== False and player1 ==True :

    binput=input(colored('Yo player 1 dawg, which spot? ','red'))
    binput=int(binput)
    if board[binput] !=(colored('x','red')) and board[binput] !=colored('o','blue'):
        board[binput] = (colored('x','red'))
        show()
        player2=True  
    if checkall (colored('x','red')) == True:
        print (colored('X won dawg!','red'))
        finding=False
        break
        

    
    if player2==True:
                
        minput=input(colored('Yo player 2 dawg, which spot? ','blue'))
        minput=int(minput)
        if board[minput] !=colored('o','blue') and board[minput] !=(colored('x','red')):                
            board[minput] = colored('o','blue')
            show()
            player1=True
        if checkall (colored('o','blue')) == True :
            print (colored('O won dawg!!','blue')) 
            break
            
                    
            
    elif binput > 8 :
        break
        print (colored('Yo dawg not good number dawg, try below 8!','yellow'))
    else :
        print (colored('Not today dawg!','yellow'))
   
print (colored('Game Over!','blue','on_red'))
