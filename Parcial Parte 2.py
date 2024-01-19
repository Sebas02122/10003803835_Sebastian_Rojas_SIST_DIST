from abc import ABC, abstractmethod

# Interfaz para las formas geométricas
class FormaGeometrica(ABC):
    @abstractmethod
    def calcular_area(self):
        pass

# Implementación de un Triangulo
class Triangulo(FormaGeometrica):
    def __init__(self, base, altura,por2):
        self.base = base
        self.altura = altura

    def calcular_area(self):
        return self.base * self.altura

# Implementación de un círculo
class Circulo(FormaGeometrica):
    def __init__(self, radio):
        self.radio = radio

    def calcular_area(self):
        return 3.141592653589793 * self.radio**2

# Función que utiliza las formas geométricas sin necesidad de modificarla
def imprimir_area(forma):
    print(f"El área es: {forma.calcular_area()}")

# Uso
triangulo = Triangulo(base=5, altura=10)
circulo = Circulo(radio=7)

imprimir_area(triangulo)
imprimir_area(circulo)
