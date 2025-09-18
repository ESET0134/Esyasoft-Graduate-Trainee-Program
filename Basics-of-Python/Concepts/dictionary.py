d = {}
d['name'] = 'Shruti'
d['age'] = 23
d['height'] = 5.1
print(d)
print(d['name'])
print(d.get('age'))
print(d.keys())
print(d.values())
d['age'] = 24
print(d)
del d['height']
print(d)
d["marks"] = 95
print(d)
d.pop('marks')
print(d)