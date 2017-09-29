import os

with open("index.md", "r+", encoding='utf-8') as f:
    old = f.read()

    data = ''
    dir = os.getcwd()

    

    def sort_helper(x):
        return int(x)
    
    L = []
    for file in os.listdir(dir):
        number = file.split('-')[-1].split('.')[0]
        if number > 'A' and number < 'z':
            continue
        else:
            L.append(number)
    r = sorted(L, key=sort_helper)

    
    for s in r:
        temp = '- <a href="/#/days/2017/09/' + 'daqu-9-' + str(s) + '">' + 'daqu 9-' + str(s) + u' 日报' '</a>\n'
        data += temp
    f.seek(0)
    f.write(old)
    f.write(data)
