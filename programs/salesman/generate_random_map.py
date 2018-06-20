import numpy as np

inp = input('Numero citta: ')
n_cities = int(inp)



map = np.random.rand(n_cities, 2)

txt = ''
for city in map:
    txt += str(city[0])
    txt += ','
    txt += str(city[1]*9/16)
    txt += '\n'

with open('map.csv', 'w') as file:
    file.write(txt)

print('File scritto con successo!')
