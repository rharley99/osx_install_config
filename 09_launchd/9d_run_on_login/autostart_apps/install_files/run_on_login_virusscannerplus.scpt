FasdUAS 1.101.10   ��   ��    k             l   c ����  Q    c  	 
  k   Z       l   ��������  ��  ��        l   ��  ��    3 - taking actions on changing network locations     �   Z   t a k i n g   a c t i o n s   o n   c h a n g i n g   n e t w o r k   l o c a t i o n s      l   ��  ��      run the script at login     �   0   r u n   t h e   s c r i p t   a t   l o g i n      l   ��������  ��  ��        l   ��  ��    � �tell application "Finder" to open (POSIX path of (path to home folder)) & "/Library/Scripts/run_on_network_change.app" as POSIX file     �   t e l l   a p p l i c a t i o n   " F i n d e r "   t o   o p e n   ( P O S I X   p a t h   o f   ( p a t h   t o   h o m e   f o l d e r ) )   &   " / L i b r a r y / S c r i p t s / r u n _ o n _ n e t w o r k _ c h a n g e . a p p "   a s   P O S I X   f i l e       r     ! " ! m     # # � $ $   V i r u s S c a n n e r P l u s " o      ���� 0 appname      % & % Z    % ' (�� ) ' =    * + * n     , - , 1    ��
�� 
prun - 4    �� .
�� 
capp . o   	 
���� 0 appname   + m    ��
�� boovtrue ( k     / /  0 1 0 l   �� 2 3��   2  return "running"    3 � 4 4   r e t u r n   " r u n n i n g " 1  5�� 5 l   �� 6 7��   6  -    7 � 8 8  -��  ��   ) k    % 9 9  : ; : O   # < = < I   "������
�� .ascrnoop****      � ****��  ��   = 4    �� >
�� 
capp > o    ���� 0 appname   ;  ?�� ? l  $ $�� @ A��   @ % tell application appname to run    A � B B > t e l l   a p p l i c a t i o n   a p p n a m e   t o   r u n��   &  C D C l  & &��������  ��  ��   D  E F E r   & ) G H G m   & ' I I � J J  y e s H o      ���� 0 appisvisible AppIsVisible F  K L K l  * *��������  ��  ��   L  M N M l  * *�� O P��   O   waiting for app to start    P � Q Q 2   w a i t i n g   f o r   a p p   t o   s t a r t N  R S R r   * - T U T m   * +����   U o      ���� 0 thenum theNum S  V W V W   . S X Y X k   C N Z Z  [ \ [ I  C H�� ]��
�� .sysodelanull��� ��� nmbr ] m   C D ^ ^ ?�      ��   \  _�� _ r   I N ` a ` [   I L b c b o   I J���� 0 thenum theNum c m   J K����  a o      ���� 0 thenum theNum��   Y F   2 B d e d =  2 : f g f n   2 8 h i h 1   6 8��
�� 
prun i 4   2 6�� j
�� 
capp j o   4 5���� 0 appname   g m   8 9��
�� boovtrue e A   = @ k l k o   = >���� 0 thenum theNum l m   > ?����  W  m n m l  T T�� o p��   o 	  or    p � q q    o r n  r s r l  T T�� t u��   t F @repeat while appname is not in name of processes and theNum < 10    u � v v � r e p e a t   w h i l e   a p p n a m e   i s   n o t   i n   n a m e   o f   p r o c e s s e s   a n d   t h e N u m   <   1 0 s  w x w l  T T�� y z��   y  
	delay 0.5    z � { {  	 d e l a y   0 . 5 x  | } | l  T T�� ~ ��   ~  	set theNum to theNum + 1     � � � 2 	 s e t   t h e N u m   t o   t h e N u m   +   1 }  � � � l  T T�� � ���   �  
end repeat    � � � �  e n d   r e p e a t �  � � � l  T T��������  ��  ��   �  � � � l  T T�� � ���   �   waiting for window    � � � � &   w a i t i n g   f o r   w i n d o w �  � � � r   T W � � � m   T U����   � o      ���� 0 thenum theNum �  � � � r   X [ � � � m   X Y����   � o      ���� 0 windowcount windowCount �  � � � W   \ � � � � k   l � � �  � � � I  l q�� ���
�� .sysodelanull��� ��� nmbr � m   l m � � ?�      ��   �  � � � r   r w � � � [   r u � � � o   r s���� 0 thenum theNum � m   s t����  � o      ���� 0 thenum theNum �  ��� � O   x � � � � O   | � � � � k   � � � �  � � � l  � ��� � ���   �  return count of windows    � � � � . r e t u r n   c o u n t   o f   w i n d o w s �  ��� � r   � � � � � I  � ��� ���
�� .corecnte****       **** � 2  � ���
�� 
cwin��   � o      ���� 0 windowcount windowCount��   � 4   | ��� �
�� 
prcs � o   ~ ���� 0 appname   � m   x y � ��                                                                                  sevs  alis    \  macintosh_hd               ���BD ����System Events.app                                              �������        ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    m a c i n t o s h _ h d  -System/Library/CoreServices/System Events.app   / ��  ��   � G   ` k � � � >  ` c � � � o   ` a���� 0 windowcount windowCount � m   a b����   � =   f i � � � o   f g���� 0 thenum theNum � m   g h����  �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �   closing window    � � � �    c l o s i n g   w i n d o w �  � � � I  � ��� ���
�� .sysodelanull��� ��� nmbr � m   � � � � ?�      ��   �  � � � r   � � � � � m   � �����   � o      ���� 0 thenum theNum �  � � � V   �X � � � k   �S � �  � � � O   �M � � � k   �L � �  � � � Q   �/ � ��� � k   �& � �  � � � I  � ��� ���
�� .sysodelanull��� ��� nmbr � m   � � � � ?�333333��   �  � � � O  � � � � � I  � �������
�� .miscactvnull��� ��� null��  ��   � 4   � ��� �
�� 
pcap � o   � ����� 0 appname   �  � � � I  � ��� ���
�� .sysodelanull��� ��� nmbr � m   � � � � ?�333333��   �  � � � r   � � � � � m   � ���
�� boovtrue � n       � � � 1   � ���
�� 
pisf � 4   � ��� �
�� 
pcap � o   � ����� 0 appname   �  � � � I  � ��� ���
�� .sysodelanull��� ��� nmbr � m   � � � � ?�333333��   �  ��� � Z   �& � ��� � � =  � � � � � n   � � � � � 1   � ���
�� 
pisf � 4   � ��� �
�� 
pcap � o   � ����� 0 appname   � m   � ���
�� boovtrue � k   �" � �  � � � l  � ��� � ���   � L Ftell application "System Events" to keystroke "w" using {command down}    � � � � � t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s "   t o   k e y s t r o k e   " w "   u s i n g   { c o m m a n d   d o w n } �  ��  O   �" k  !  l ����   B <click menu item 1 of menu 1 of menu bar item 3 of menu bar 1    � x c l i c k   m e n u   i t e m   1   o f   m e n u   1   o f   m e n u   b a r   i t e m   3   o f   m e n u   b a r   1 	��	 I !��
��
�� .prcsclicnull��� ��� uiel
 n   4  ��
�� 
menI m   �  S c h l i e � e n n   4  ��
�� 
menE m  ����  n   4  
��
�� 
mbri m   � 
 D a t e i 4  
��
�� 
mbar m  	���� ��  ��   4   ���
�� 
pcap o   � ���� 0 appname  ��  ��   � l %%����    -    �  -��   � R      �����
�� .ascrerr ****      � ****��  �  ��   �  I 05�~�}
�~ .sysodelanull��� ��� nmbr m  01�|�| �}    �{  O  6L!"! O  :K#$# k  AJ%% &'& l AA�z()�z  (  return count of windows   ) �** . r e t u r n   c o u n t   o f   w i n d o w s' +�y+ r  AJ,-, I AH�x.�w
�x .corecnte****       ****. 2 AD�v
�v 
cwin�w  - o      �u�u 0 windowcount windowCount�y  $ 4  :>�t/
�t 
prcs/ o  <=�s�s 0 appname  " m  6700�                                                                                  sevs  alis    \  macintosh_hd               ���BD ����System Events.app                                              �������        ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    m a c i n t o s h _ h d  -System/Library/CoreServices/System Events.app   / ��  �{   � m   � �11�                                                                                  sevs  alis    \  macintosh_hd               ���BD ����System Events.app                                              �������        ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    m a c i n t o s h _ h d  -System/Library/CoreServices/System Events.app   / ��   � 2�r2 r  NS343 [  NQ565 o  NO�q�q 0 thenum theNum6 m  OP�p�p 4 o      �o�o 0 thenum theNum�r   � F   � �787 >  � �9:9 o   � ��n�n 0 windowcount windowCount: m   � ��m�m  8 A   � �;<; o   � ��l�l 0 thenum theNum< m   � ��k�k < � =>= l YY�j�i�h�j  �i  �h  > ?@? l YY�g�f�e�g  �f  �e  @ ABA l YY�dCD�d  C  	delay 0.1   D �EE  d e l a y   0 . 1B FGF l YY�cHI�c  H N Htell application "Finder" to set the visible of process appname to false   I �JJ � t e l l   a p p l i c a t i o n   " F i n d e r "   t o   s e t   t h e   v i s i b l e   o f   p r o c e s s   a p p n a m e   t o   f a l s eG KLK l YY�bMN�b  M  	delay 0.1   N �OO  d e l a y   0 . 1L PQP l YY�aRS�a  R  tell application appname   S �TT 0 t e l l   a p p l i c a t i o n   a p p n a m eQ UVU l YY�`WX�`  W M G	tell application "System Events" to keystroke "h" using {command down}   X �YY � 	 t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s "   t o   k e y s t r o k e   " h "   u s i n g   { c o m m a n d   d o w n }V Z[Z l YY�_\]�_  \  end tell   ] �^^  e n d   t e l l[ _`_ l YY�^ab�^  a  delay 1   b �cc  d e l a y   1` ded l YY�]�\�[�]  �\  �[  e fgf l YY�Zhi�Z  h h bset SCRIPTTORUN to ((path to home folder) & "Library:Scripts:run_on_network_change.app" as string)   i �jj � s e t   S C R I P T T O R U N   t o   ( ( p a t h   t o   h o m e   f o l d e r )   &   " L i b r a r y : S c r i p t s : r u n _ o n _ n e t w o r k _ c h a n g e . a p p "   a s   s t r i n g )g klk l YY�Ymn�Y  m   display dialog SCRIPTTORUN   n �oo 4 d i s p l a y   d i a l o g   S C R I P T T O R U Nl pqp l YY�Xrs�X  r ) #tell application SCRIPTTORUN to run   s �tt F t e l l   a p p l i c a t i o n   S C R I P T T O R U N   t o   r u nq u�Wu l YY�V�U�T�V  �U  �T  �W   	 R      �S�R�Q
�S .ascrerr ****      � ****�R  �Q   
 k  bbvv wxw l bb�Pyz�P  y " set thisScript to path to me   z �{{ 8 s e t   t h i s S c r i p t   t o   p a t h   t o   m ex |}| l bb�O~�O  ~  run script thisScript    ��� * r u n   s c r i p t   t h i s S c r i p t} ��� l bb�N���N  �   end current iteration   � ��� ,   e n d   c u r r e n t   i t e r a t i o n� ��� l bb�M���M  �  return   � ���  r e t u r n� ��L� l bb�K���K  �  -   � ���  -�L  ��  ��    ��J� l     �I�H�G�I  �H  �G  �J       �F���F  � �E
�E .aevtoappnull  �   � ****� �D��C�B���A
�D .aevtoappnull  �   � ****� k    c��  �@�@  �C  �B  �  �  #�?�>�=�< I�;�:�9�8 ^�7�6 ��5�4�3�2 ��1�0�/�.�-�,�+�*�)�(�? 0 appname  
�> 
capp
�= 
prun
�< .ascrnoop****      � ****�; 0 appisvisible AppIsVisible�: 0 thenum theNum�9 
�8 
bool
�7 .sysodelanull��� ��� nmbr�6 0 windowcount windowCount
�5 
prcs
�4 
cwin
�3 .corecnte****       ****�2 <
�1 
pcap
�0 .miscactvnull��� ��� null
�/ 
pisf
�. 
mbar
�- 
mbri
�, 
menE
�+ 
menI
�* .prcsclicnull��� ��� uiel�)  �(  �Ad\�E�O*��/�,e  hY *��/ *j UOPO�E�OjE�O $h*��/�,e 	 ���&�j O�kE�[OY��OjE�OjE�O 6h�j
 �� �&�j O�kE�O� *��/ *�-j E�UU[OY��O�j OjE�O �h�j	 	�a �&� � ta j O*a �/ *j UOa j Oe*a �/a ,FOa j O*a �/a ,e  ,*a �/ *a k/a a /a k/a a /j UY hW X  hOkj O� *��/ *�-j E�UUUO�kE�[OY�LOPW X  hascr  ��ޭ