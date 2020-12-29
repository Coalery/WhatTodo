import random

def getRandomListString(maxCnt):
    vallist = ['공부', '프로그래밍', '숙제', '취미']

    if maxCnt > len(vallist):
        return None

    cnt = random.randint(0, maxCnt)
    if cnt == len(vallist):
        return '["공부","프로그래밍","숙제","취미"]'
    elif cnt == 0:
        return '[]'
    
    result = set()
    while len(result) < cnt:
        result.add(vallist[random.randint(0, len(vallist) - 1)])
    
    resultStr = '['
    for val in result:
        resultStr = resultStr + '"%s",' % val
    resultStr = resultStr[:len(resultStr)-1] + ']'
    return resultStr

jsonList = []
for i in range(20):
    _id = i
    _title = '제목' + str(i)
    _content = ''
    if random.randint(0, 1) == 1:
        _content = '내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용' + str(i)
    _tags = getRandomListString(4)

    _month = random.randint(1, 12)
    _day = random.randint(1, 28)
    _hour = random.randint(0, 23)
    _minute = random.randint(0, 59)
    _second = random.randint(0, 59)

    _uploadTime = '2020-%02d-%02d-%02d-%02d-%02d' % (_month, _day, _hour, _minute, _second)

    jsonList.append('{"id":%d,"title":"%s","content":"%s","tags":%s,"uploadTime":"%s"}' % (_id, _title, _content, _tags, _uploadTime))

for json in jsonList:
    print("'" + json + "',")
