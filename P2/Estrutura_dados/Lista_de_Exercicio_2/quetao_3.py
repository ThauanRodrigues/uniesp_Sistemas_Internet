class Retangulo:
    def __init__(self,base, altura):
        self.base = base
        self.altura = altura
    
    def calcular_area(self):
        area = self.base * self.altura
        return area
    
base = 5
altura = 7
retangulo= Retangulo(base, altura)
area_do_retangulo = retangulo.calcular_area()
print(f"A área do retângulo é {area_do_retangulo}")