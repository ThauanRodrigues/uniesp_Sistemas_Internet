class Triangulo:
    def __init__(self, lado1, lado2, lado3):
        self.lado1 = lado1
        self.lado2 = lado2
        self.lado3 = lado3
        
    def calcular_perimetro(self):
        calcular_perimetro = self.lado1 + self.lado2 + self.lado3
        return f"O perimêtro é: {calcular_perimetro}"
    


triangulo = Triangulo(8,7,6)
print(triangulo.calcular_perimetro())