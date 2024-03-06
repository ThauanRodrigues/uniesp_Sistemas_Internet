import pandas as pd

df1 = pd.read_csv('/content/drive/MyDrive/Atividade/carro.csv', sep=',', encoding='CP850')
df1.head()

# Informaçoes do banco a)
df1.shape

#Informacoes da planilha
df1.info()

# Informacoes de colunas.
# df1[['Veiculo','Cor','Combustivel']]
df1['Modelo'].value_counts() #Value_counts ele mostra a quantidade tudo junto.

#Criando uma coluna com o mes da Coluna de Datacad
df1['mescad']= pd.DatetimeIndex(df1['DataCad']).month
df1['anocad']= pd.DatetimeIndex(df1['DataCad']).year

#Informacoes da planilha
df1.info()

# Aparecer por ano
df1['anocad'].value_counts()

# Aparecer por mes
df1['mescad'].value_counts()

# Agrupando os dados com o groupby
df1.groupby(['AnoFab','Cor'])['AnoFab'].count()

# Filtrando os dados
df1[df1['AnoFab']==2001] #mostra todos os veiculos e as informacoes de  2001
df1['Veiculo'][df1['AnoFab']==2001] #mostra so a coluna de veiculos de 2001
df1['Veiculo'][df1['Cor']=='VERMELHA'] # mostra todos os veiculos vermelhos.