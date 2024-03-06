class Circulo:
    def __init__(self,raio):
        self.raio = raio
    
    def calcular_area(self):
        pi = 3.14
        area = pi * (self.raio ** 2)
        return area
    

raio = 10
circulo = Circulo(raio)
area_do_circulo = circulo.calcular_area()

print(f"A área do círculo com raio {raio} é {area_do_circulo}")
        