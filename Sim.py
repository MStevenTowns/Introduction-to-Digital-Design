x=5
for i in range(2**x):
	y=(format(i, '08b')[8-x:])
	#print(y)
	for j in range (0,x):
		print(chr(j+97),"=",y[j]+";")		
	print("#10;\n")
