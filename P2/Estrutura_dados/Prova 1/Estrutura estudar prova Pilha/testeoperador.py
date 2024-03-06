import pilha2 as pi

# Exemplo de uso da pilha
expressao1 = '(a+b)*{a+b}'
expressao = '(a+b)*{(a+b)*(c-d)a+b}'
expressao3 = '(a+(b)*(a}+b)'
expressao4 = '(a+b}*(a+b}'
expressao5 = '(a+b)-(k-l)'
expressao6 = '(a+b)-(k-l))'
expressao7 = '(a+b)-((k-l)'

n=len(expressao)
op1=True
op2=True
op3=True

pi = pi.Pilha()
for i in range(n):
    if (expressao[i]=='+' and op1) or (expressao[i]=='-' and op2) or (expressao[i]=='*' and op3):
        pi.empilhar(expressao[i])
        if (expressao[i]=='+'):
            op1=False
        elif (expressao[i]=='-'):
            op2=False
        else:
            op3=False

pi.imprimir()
