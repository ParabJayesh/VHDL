# 4-Bit Ripple Carry Adder

This code adder adds two 4 bit number and gives output as 4 bit sum and one carry

INPUT and OUTPUT terminal of codes 

a,b is INPUT and it is STD_LOGIC_VECTOR of 4bit size type

cin is carry INPUT it is STD_LOGIC type

sout is OUTPUT and it si STD_LOGIC_VECTOR of 4bit size type

cout is carry OUTPUT it is STD_LOGIC type

entity name in code is fbit_adder and architecture name is fbit_adder_arch

This code is having structural architecture

It uses full adder as component in the code 

cin in the code is held at LOGIC 0 if you require just remove :='0' in entity. It is held '0' because it is just 4-bit adder but if you are
going to use this code as element in another code or using this as cascade then just remove :='0'.
