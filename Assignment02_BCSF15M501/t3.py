matrix=[[1,2,3,4,5,6,7,8],[1,2,3,4,5,6,7,8],[1,2,3,4,5,6,7,8],[1,2,3,4,5,6,7,8],[1,2,3,4,5,6,7,8],[1,2,3,4,5,6,7,8],[1,2,3,4,5,6,7,8],[1,2,3,4,5,6,7,8]]
x1=raw_input("Enter Matrix[0][0] to search ");
while(x1.isdigit()==False):
	x1=raw_input("Wrong Input Enter Again ");
x2=raw_input("Enter Matrix[0][1] to search ");
while(x2.isdigit()==False):
	x2=raw_input("Wrong Input Enter A valid Integer");
x3=raw_input("Enter Matrix[1][0] to search ");
while(x3.isdigit()==False):
	x3=raw_input("Wrong Input Enter A valid Integer");
x4=raw_input("Enter Matrix[1][1] to search ");
while(x4.isdigit()==False):
	x4=raw_input("Wrong Input Enter A valid Integer");

x1=int(x1)
x2=int(x2)
x3=int(x3)
x4=int(x4)
if matrix[0][0]==x1:
	print("Excellent")


flag=False
for i in range(0,8):
	for j in range(0,8):
		if matrix[i][j] == x1:
			if(j+1)<8:
				if matrix[i][j+1]==x2:
					if (i+1)<8:
 						if matrix[i+1][j]==x3:
							if matrix[i+1][j+1]==x4:
								flag=True							
			
if(flag==True):
	print("Matrix Found")
else:
	print("not found");
	
