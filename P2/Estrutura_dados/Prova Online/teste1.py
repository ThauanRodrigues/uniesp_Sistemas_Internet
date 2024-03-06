class Node:
    def __init__(self, key):
        self.key = key
        self.left = None
        self.right = None
        self.height = 1

def get_height(node):
    if not node:
        return 0
    return node.height

def get_balance(node):
    if not node:
        return 0
    return get_height(node.left) - get_height(node.right)

def update_height(node):
    if not node:
        return 0
    node.height = 1 + max(get_height(node.left), get_height(node.right))
    return node.height

def right_rotate(y):
    x = y.left
    T2 = x.right

    x.right = y
    y.left = T2

    update_height(y)
    update_height(x)

    return x

def left_rotate(x):
    y = x.right
    T2 = y.left

    y.left = x
    x.right = T2

    update_height(x)
    update_height(y)

    return y

def insert(root, key):
    if not root:
        return Node(key)

    if key < root.key:
        root.left = insert(root.left, key)
    elif key > root.key:
        root.right = insert(root.right, key)
    else:
        return root

    update_height(root)

    balance = get_balance(root)

    # Casos de desequilíbrio

    # Rotação à direita
    if balance > 1 and key < root.left.key:
        return right_rotate(root)

    # Rotação à esquerda
    if balance < -1 and key > root.right.key:
        return left_rotate(root)

    # Rotação à esquerda-direita
    if balance > 1 and key > root.left.key:
        root.left = left_rotate(root.left)
        return right_rotate(root)

    # Rotação à direita-esquerda
    if balance < -1 and key < root.right.key:
        root.right = right_rotate(root.right)
        return left_rotate(root)

    return root

def postorder_traversal(root):
    if root:
        postorder_traversal(root.left)
        postorder_traversal(root.right)
        print(root.key, end=" ")

# Dados fornecidos
data = [1064, 1050, 1033, 1036, 1099, 1018, 1099, 1068, 1040, 1015, 1046, 1087, 1084, 1090, 1078, 1020, 1062, 1037, 1052, 1022, 1026, 1054, 1023, 1069, 1011, 1030, 1049, 1068, 1076, 1039, 1014, 1008, 1007, 1047, 1093, 1072, 1073, 1009, 1077, 1096, 1097, 1019, 1030, 1006, 1050, 1067, 1098, 1084, 1019, 1014, 1092, 1035, 1076, 1085, 1062, 1053, 1077, 1064, 1059, 1011, 1004, 1053, 1024, 1055, 1018, 1032, 1002, 1014, 1051, 1059, 1040, 1011, 1042, 1031, 1009, 1067, 1063, 1029, 1008, 1077, 1000, 1056, 1086, 1062, 1067, 1100, 1006, 1097, 1077, 1094, 1053, 1006, 1020, 1004, 1057, 1013, 1098, 1080, 1031, 1010]

# Construir a árvore AVL
root = None
for key in data:
    root = insert(root, key)

# Medindo o tempo de execução para a travessia pós-ordem
start_time = time.time()

# Realizando a travessia pós-ordem e exibindo os dados
print("Pos-Ordem:")
postorder_traversal(root)

# Calculando o tempo de execução
execution_time = time.time() - start_time
print("\nTempo de Execução:", execution_time, "segundos")
