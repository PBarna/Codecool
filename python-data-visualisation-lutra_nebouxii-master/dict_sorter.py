import operator

#dick = {'name' : 3765467, 'notname' : 6987654678, 'concrete' : 1654, 'szociálismunkasegély' : 598765435}

def dictionary_sorting(input_dict):
    sorteeed = sorted(input_dict.items(), key=operator.itemgetter(1))

    c = 0
    list0 = []
    for i in sorteeed:
        curr = str(sorteeed[c])
        list0.append(curr.strip('(,0123456789")0123456789.'))
        c +=1

    return list0

#print(dictionary_sorting(dick))