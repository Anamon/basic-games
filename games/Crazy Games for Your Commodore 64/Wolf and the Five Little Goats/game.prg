*
 �**THE WOLF AND THE 5 LITTLE GOATS** I � B(10,10),R(5),C(5),NM(5) X C$(0)�"��" g( C$(1)�"  " �2 D$�"" �< �2000 ��� ��� CA�2 �1020,1030,1040 ��R�RW:C�CW:TX$�"WW":� 1070 �TX$�C$(R�C � 1):� 1070 �R�R(GT):C�C(GT) 	TX$�"G"��(�(NM(GT)),1) 	$CA�GT =	.� �(D$,3�R);�2�C�1);�7) TX$ K	8B(R,C)�CA Q	B� e	L�**INITIALIZE** }	V� DRAW CHECKERBOARD �	`� "�"; �	j� R�1 � 10 �	t� C�1 � 10 �	~CA�0:� 1000 �	�� C,R �	�� PLACE WOLF �	�RW�1:CW�1:NM��(�(1)�3�1) �	�CA��1:� 1000 
�� PLACE GOATS  
�� GT�1 � 5 7
�R(GT)��(�(0)�10�1) N
�C(GT)��(�(0)�10�1) e
�NM(GT)��(�(0)�5�1) �
�� B(R(GT),C(GT))��0 � 1220 �
�CA�1:� 1000 �
�� �
 � �
�**MOVE WOLF** �
� D$;"       YOU MAY ENTER";NM;"� MOVES" �
(� DU�1 � NM 
2� MV$:� MV$�"" � 1330 4FRD�(MV$�"�" � RW�1)�(MV$�"" � RW�10) ^PCD�(MV$�"�" � CW�1)�(MV$�"" � CW�10) tZTE�B(RW�RD,CW�CD) �d� TE�0 � TE�10 � DU�NM � 1330 �nNM(TE)�0 �xSC�SC��(TE) ��R�RW:C�CW ��CA�0:� 1000 ��RW�RW�RD:CW�CW�CD ��CA��1:� 1000 �� DU �NM��(�(0)�3�1) �� 1��**COMPUTER MOVE** ]�� D$;"           NOW IT'S MY TURN     " n�� EVALUATION z�MX��400 �� GT�1 � 5 �� NM(GT)�0 � 1600 �CG�C(GT):RG�R(GT)�NM(GT):� 1800 �"RG�R(GT)�NM(GT):� 1800 ,RG�R(GT):CG�C(GT)�NM(GT):� 1800 6CG�C(GT)�NM(GT):� 1800 #@� )J� =TC�C(GB):R�R(GB) M^CA�0:� 1000 chR(GB)�RB:C(GB)�CB zrNM(GB)��(�(0)�5�1) �|GT�GB ��CA�1:� 1000 ��� MX�400 � � ��� D$"               YOU LOSE           " ��� ��**STATUS** � �(R(GT)�RW)��(C(GT)�CW)�NM � SQ�200:� 1820 "SQ�0 H� RG�1 � RG�10 � CG�1 � CG�10 � � ]&� B(RG,CG)�0 � � v0DI��(RW�RG)��(CW�CG) �:� DI�0 � SQ�500:� 1930 �D� DI�MN � DI�NM�2 � � �N� DI��5 � SQ�SQ�35 �XSQ�SQ�40�((RG�RW)�(CG�CW)) �b� G�1 � 5 lSQ�SQ�10�((RG��R(G))�(CG��C(G))) v� 2�� SQ��(0)�MX � 1940 N�MX�SQ:GB�GT:RB�RG:CB�CG T�� j��**MAIN PROGRAM** ��� 1100:� INITIALIZE ��� 1300:� MOVE WOLF ��� SC�3 � 2060 ��� 1500:� COMPUTER MOVE �� 2020 �� D$;"               YOU WIN!           " �   