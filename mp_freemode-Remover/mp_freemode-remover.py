import os
files_path = [os.path.abspath(x) for x in os.listdir()]
path = os.getcwd()
for x in files_path:
    head, sep, tail = x.partition('^')
    os.rename(x,tail)