
 �**SHARK HUNT** 6 � X$(2),Y$(2),TU(3,8),CO$(2) P D$�"" ^# SID�54272 �( � I�0 � 23:�SID�I,0:�:�SID�24,15:�SID�5,15:�SID�6,255 �2 B$�" �" �< NG�0:TR�0:MR�0 �F � RE�0 � 2 �P � X$(RE),Y$(RE) �Z � �d � L,F,"","",R,B  	n � TUNE 	x � TU�1 � 3 	� � NO�1 � 8 .	� � TU(TU,NO) :	� � NO,TU X	� � 40,60,40,60,40,50,60,60 v	� � 30,35,40,45,50,55,60,60 �	� � 35,32,30,27,25,22,20,20 �	� CO$(0)�"SORRY, YOU WENT TOO   FAR" �	� CO$(1)�"THAT'S IT! CONGRATULATIONS!" 
� CO$(2)�"YOU RAN OUT OF ENERGY" 
� � 3000 
,�**BEEP 7
6� SID�4,17:�SID�1,TN F
@� T�1 � TM [
J� DL�1 � 10:� DL c
T� T i
h� {
��**INITIALIZE �
�NG�NG�1 �
�SX��(70��(0))�35 �
SY��(70��(0))�35 �
DI��(SX)��(SY) �
MD�DI:SD�DI �
$EN�200:SH�0:HI�0:NS�0 �
.VX�0:VY�0 8� L�**INPUT SPEED V� K$ ;`VX�4�((K$�"�")�(K$�"")) XjVY�4�((K$�"�")�(K$�"")) htSH�(K$�" ") n~� ��**COMPUTE DISTANCE ETC �SX�SX�VX �(SY�SY�VY �2EN�EN�(VX��0)�(VY��0)�1 �<� EN��0 � EN�0:� 1460 �F� SHARK MOVES AWAY PSX�SX��(SX) ZSY�SY��(SY) $dDI��(SX)��(SY) 8n� DI�MD � MD�DI Lx� DI�100 � 1460 ^�� � SH � 1460 j�NS�NS�1 }�EN��(EN�.5�DI) ��� EN��0 � EN�0:� 1460 ��HI��(DI��(0))��1 ��� ���**OUTPUT ��� 2000:� BLANK ��� �(D$,8);��(VX)�19);X$(�(VX)�1); �� �(D$,8��(VY));�19);Y$(�(VY)�1); B� SH � TM�2:TN�10:� 300:� 1560 [TM�1:TN�140�DI:� 300 t� "";�14);EN;"� "; z"� �@�**SCREEN �T� "�";�7)"ENERGY:"EN"ERGS" �h� �(D$,15);�7)"MOVE:  USE ARROW KEYS" �r� �7)"SHOOT: PRESS SPACEBAR" �|� 2000 �� �(D$,8); �7)"DIRECTION:" @��"";�7)"<RETURN> TO START"; J�� AN$ P�� h�**END OF THIS GAME ��"";�5);CO$(CA�1) �� NO�1 � 8 �&TN�TU(CA,NO):TM�10:� 300 �0� �5� SID�4,0 �:� "�YOU STARTED AT: ";SD;�20);"M" D� "NUMBER OF SHOTS:";NS (N� "YOU CAME WITHIN:";MD;�20);"M" TX� HI � � "YOU HIT IT FROM:";DI;�20);"M" wb� HI � RE�50�EN�4�SD�10:� 1900 �gRE�50�DI�2 �lRE��(RE) �v� RE�100 � RE�100 �{� RE�0 � RE�0 ��TR�TR�RE ��� RE�MR � MR�RE ��� "REWARDS (0-100)" �� "���������������" )�� "NUMBER OF GAMES:";NG E�� "THIS GAME:      ";RE g�� "AVERAGE:        ";�(TR�NG) ��� "MAXIMUM:        ";MR ��� ���**BLANK SPACES ��� �(D$,7);�18);"   " ��� �18);"   " ��� �18);"   " ��� ���**MAIN PROGRAM 
�� 1000:� INITIALIZE �� 1600:� SCREEN 1�� 1100:� INPUT H�� 1300:� COMPUTING \�� 1500:� OUTPUT {�CA��3�(EN�0)�2�HI�(DI�100) ��� CA�0 � 3030 �� 1800:� END �� �� I�1 � 10:� K$:� �� "ANOTHER GAME";AN$ �&� �(AN$,1)�"Y" � 3010 �0�   