 
 � **SHAKESPERIAN SHUFFLE** , �646,13 A D$�"" a � HX(8),HY(8),B$(8,8),T$(8) o( � K�1 � 8 {2 � T$(K) �< � �F � "TO BE OR","NOT TO B","E, THAT " �P � "IS THE Q","UESTION." �Z � "WILLIAM ","SHAKESPE","ARE 1603" �d � X�1 � 8 	n � Y�1 � 8  	x B$(X,Y)��(T$(Y),X,1) (	� �:� 6	� � K�1 � 8 H	� � HX(K),HY(K) P	� � K ~	� � -1,-2,1,-2,2,-1,2,1,1,2,-1,2,-2,1,-2,-1 �	� C1$�"T":C2$�"T�" �	� XO�1:YO�1:XN�1:YN�1 �	� � 1000 �	,�**PRINT CHARACTER** �	6� �(D$,Y�1);�2�X);�9) B$(X,Y); �	@� 
��**RANDOM SHUFFLE** #
��"�LEVEL";LV 3
�� DU�1 � LV L
�NM��(�(0)�8�1):� 500 f
�� XO�XN � YO�YN � 430 v
�XO�XN:YO�YN |
�� �
�� �
��**KNIGHT'S MOVE** �
�XS�HX(NM):YS�HY(NM) �
� XO�XS�1 � XO�XS�8 � YO�YS�1 � YO�YS�8 � � �
XN�XO�XS:YN�YO�YS W$�B$(XN,YN)  &B$(XN,YN)�B$(XO,YO) 10B$(XO,YO)�W$ @:� � DI � � TDX�XO:Y�YO:� 300 hNX�XN:Y�YN:� 300 xXXO�XN:YO�YN ~b� ���**SCREEN** ���"�" ���X�1�8 ���Y�1�8 ���300 ��� ��� �� D$;�16);"1 2" �� �14);"8     3" �� �17);"H"  � �14);"7     4" $*� �16);"6 5" *4� >��**INPUT MOVE** T�� DE�1 � 200:� DE t�� �(D$,YO�1);�2�XO);�9) C1$ ��� DE�1 � 200:� DE ��� �(D$,YO�1);�2�XO);�9) C2$ ��� I$ ��� I$�"" � � ��� 910 ��� **MAIN PROGRAM** ��� 400:� RANDOM SHUFFLE 	�DI��1 � 700:� SCREEN 3� 900:� INPUT MOVE UNM��(I$):� NM�0 � NM�9 � 1040 o$� 500:� KNIGHT'S MOVE z.� 1040   