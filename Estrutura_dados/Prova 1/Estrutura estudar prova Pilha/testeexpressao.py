import pilha2 as pi

# Exemplo de uso da pilha
expressao1 = '(a+b)*{a+b}'
expressao2 = '(a+b)*{(a+b)*(c+d)a+b}'
expressao3 = '(a+(b)*(a}+b)'
expressao4 = '(a+b}*(a+b}'
expressao5 = '(a+b)-(k-l)'
expressao6 = '(a+b)-(k-l))'
expressao7 = '(a+b)-((k-l)'

n=len(expressao)

pi = pi.Pilha()

for i in range(n):
    if (expressao[i]=='(') or (expressao[i]=='{'):
        pi.empilhar(expressao[i])
    elif (expressao[i]==')') or (expressao[i]=='}'):
            if not pi.is_vazia():
                if (expressao[i]==')' and pi.topo()=='(') or (expressao[i]=='}' and pi.topo()=='{'):
                    pi.desempilhar()
            else:
                pi.empilhar('x')

if pi.is_vazia():
    print('Expressão correta!')
else:
    print('Expressão com problema.')
