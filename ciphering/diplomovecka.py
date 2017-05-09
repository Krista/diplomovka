class OtvorenyText(object):
    def __init__(self, text):
        self.text = text
        self.sifr_text = None
        self.odsifr_text = None
	
    def zasifruj(self, sifrator):
        self.sifr_text = sifrator(self.text)
		
    def odsifruj(self, desifrator):
        self.odsifr_text = desifrator(self.sifr_text)

def vyrob_tabulecku(replacement,
                    alphabet='abcdefghijklmnopqrstuvwxyz'):
    return {alphabet[i]:replacement[i] for i in range(len(replacement))}


def trapnac(text, table=None):
    if table is None:
        table = {'a': 'b', 
                 'c': 'd'}
    return ''.join(map(lambda x: table.get(x) if x in table else x, list(text)))



text = "Ahoj, mam sa velmi krasne."
t1 = OtvorenyText(text)
t1.zasifruj(trapnac)
print(t1.text)
print(t1.sifr_text)
t1.odsifruj(trapnac)
print(t1.odsifr_text)

print(vyrob_tabulecku('bacdefghijklmnopqrstuvwxyz'))

jednoduchy_sifrator = lambda x: trapnac(x, vyrob_tabulecku('bacdefghijklmnopqrstuvwxyz'))
def jednoduchy(x):
    return trapnac(x, vyrob_tabulecku('bacdefghijklmnopqrstuvwxyz'))
		    
		   
