input = open('input.txt', 'r')
max_values = int(input.readline())
contenders = []

def contains(list, value):
	for e in list:
		if value == e:
			return True
			
	return False

for line in input:
	line = line.strip()
	if len(contenders) < max_values:
		contenders.append(line)
	else:
		if contains(contenders, line) == False:
			for contender in contenders:
				if len(contender) < len(line):
					contenders.remove(contender)
					contenders.append(line)
				
print contenders
		
