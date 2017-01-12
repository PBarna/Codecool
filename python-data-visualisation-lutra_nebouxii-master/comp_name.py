from collections import Counter

company_projects = ['Brainbox','Brainbox','Brainbox','Brainbox','Brainbox','Brainbox','Brainbox','Brainbox','Brainsphere','Brainverse','Browsebug','Bubbletube','Bubbletube','Buzzster','Camimbo','Camimbo','Divavu','Divavu','Eadel','Eadel','Eadel','Eadel','Eadel','Eadel','Eadel','Eadel','Eadel','Eadel','Edgetag''Feedfish','Feedmix','Fiveclub','Fiveclub','Gabcube','Gigabox','Gigabox','Gigabox','Gigabox','Gigabox','Gigabox','Gigabox','Gigabox','Gigabox','Gigashots','Jabbersphere','Jaxnation','Jaxnation','Jaxnation','Jaxnation','Kazio','Kazio','Kazio','Kazio','Lajo','Lazzy','Meemm','Muxo','Muxo','Muxo','Muxo','Muxo','Npath','Oozz','Oyoba','Oyoba','Oyoba','Oyonder','Oyonder','Ozu','Ozu','Ozu','Ozu','Ozu','Ozu','Ozu','Ozu','Photofeed','Rhybox','Rhybox','Skiba','Skinix','Skivee','Skyndu','Skynoodle','Tagtune','Talane','Talane','Tambee','Tanoodle','Thoughtbridge','Thoughtbridge','Thoughtbridge','Thoughtbridge','Thoughtbridge','Thoughtbridge','Topicware','Topicware','Twinder','Viva','Wikizz','Wikizz','Wikizz','Wikizz','Wikizz','Yodo','Yodo','Yotz','Yotz','Youbridge','Youspan','Youspan']

cmpn_prj_cnt = Counter(company_projects)

def print_name_list():
    return cmpn_prj_cnt