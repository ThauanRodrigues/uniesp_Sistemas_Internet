# Faça um programa que determine se um número é primo ou não.
num = int(input('Digite o valor: '))

primo = True
for i in range(2, num):
    if num % i == 0:
        primo = False
        break
if primo:
    print(num, "é primo")

else:
    print(num, "não é primo")


