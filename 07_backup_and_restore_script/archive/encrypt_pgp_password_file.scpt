FasdUAS 1.101.10   ��   ��    k             l    
 ����  O     
  	  I   	������
�� .miscactvnull��� ��� null��  ��   	 m     ��
�� misccura��  ��     
  
 l     ��������  ��  ��        l     ��  ��    , &display dialog "starting archiving..."     �   L d i s p l a y   d i a l o g   " s t a r t i n g   a r c h i v i n g . . . "      l     ��  ��    * $ gpg alone can only be used on files     �   H   g p g   a l o n e   c a n   o n l y   b e   u s e d   o n   f i l e s      l     ��  ��    O I if a directory shall be encrypted it has to be archived to a file before     �   �   i f   a   d i r e c t o r y   s h a l l   b e   e n c r y p t e d   i t   h a s   t o   b e   a r c h i v e d   t o   a   f i l e   b e f o r e      l     ��  ��    $ set theChoicesList to {"file"}     �   < s e t   t h e C h o i c e s L i s t   t o   { " f i l e " }     !   l     �� " #��   " � �set inputType to choose from list theChoicesList with prompt "Select if you want to archive a file or a directory:" default items {"file"}    # � $ $ s e t   i n p u t T y p e   t o   c h o o s e   f r o m   l i s t   t h e C h o i c e s L i s t   w i t h   p r o m p t   " S e l e c t   i f   y o u   w a n t   t o   a r c h i v e   a   f i l e   o r   a   d i r e c t o r y : "   d e f a u l t   i t e m s   { " f i l e " } !  % & % l    '���� ' r     ( ) ( J     * *  +�� + m     , , � - -  f i l e��   ) o      ���� 0 	inputtype 	inputType��  ��   &  . / . l     �� 0 1��   0  display dialog inputType    1 � 2 2 0 d i s p l a y   d i a l o g   i n p u t T y p e /  3 4 3 l     �� 5 6��   5 = 7if inputType is not equal to "file" or "directory" then    6 � 7 7 n i f   i n p u t T y p e   i s   n o t   e q u a l   t o   " f i l e "   o r   " d i r e c t o r y "   t h e n 4  8 9 8 l     �� : ;��   : B <	display dialog "Error: No valid input selected, exiting..."    ; � < < x 	 d i s p l a y   d i a l o g   " E r r o r :   N o   v a l i d   i n p u t   s e l e c t e d ,   e x i t i n g . . . " 9  = > = l     �� ? @��   ?  	return    @ � A A  	 r e t u r n >  B C B l     �� D E��   D  end if    E � F F  e n d   i f C  G H G l     ��������  ��  ��   H  I J I l   O K���� K Z    O L M N O L =    P Q P o    ���� 0 	inputtype 	inputType Q J     R R  S�� S m     T T � U U  f i l e��   M k    ( V V  W X W l   �� Y Z��   Y � �set inputFolder to (choose file with prompt "Select a file to be archived" default location path to desktop with multiple selections allowed)    Z � [ [ s e t   i n p u t F o l d e r   t o   ( c h o o s e   f i l e   w i t h   p r o m p t   " S e l e c t   a   f i l e   t o   b e   a r c h i v e d "   d e f a u l t   l o c a t i o n   p a t h   t o   d e s k t o p   w i t h   m u l t i p l e   s e l e c t i o n s   a l l o w e d ) X  \�� \ r    ( ] ^ ] l   & _���� _ I   &���� `
�� .sysostdfalis    ��� null��   ` �� a b
�� 
prmp a m     c c � d d 8 S e l e c t   a   f i l e   t o   b e   a r c h i v e d b �� e��
�� 
dflc e I   "�� f��
�� .earsffdralis        afdr f m    ��
�� afdrdesk��  ��  ��  ��   ^ o      ���� 0 	inputitem 	inputItem��   N  g h g =  + 0 i j i o   + ,���� 0 	inputtype 	inputType j J   , / k k  l�� l m   , - m m � n n  d i r e c t o r y��   h  o�� o k   3 B p p  q r q l  3 3�� s t��   s � �set inputItem to (choose folder with prompt "Select a directory to be archived" default location path to desktop with multiple selections allowed)    t � u u$ s e t   i n p u t I t e m   t o   ( c h o o s e   f o l d e r   w i t h   p r o m p t   " S e l e c t   a   d i r e c t o r y   t o   b e   a r c h i v e d "   d e f a u l t   l o c a t i o n   p a t h   t o   d e s k t o p   w i t h   m u l t i p l e   s e l e c t i o n s   a l l o w e d ) r  v�� v r   3 B w x w l  3 @ y���� y I  3 @���� z
�� .sysostflalis    ��� null��   z �� { |
�� 
prmp { m   5 6 } } � ~ ~ B S e l e c t   a   d i r e c t o r y   t o   b e   a r c h i v e d | �� ��
�� 
dflc  I  7 <�� ���
�� .earsffdralis        afdr � m   7 8��
�� afdrdesk��  ��  ��  ��   x o      ���� 0 	inputitem 	inputItem��  ��   O k   E O � �  � � � I  E L�� ���
�� .sysodlogaskr        TEXT � m   E H � � � � � T E r r o r :   N o   v a l i d   i n p u t   s e l e c t e d ,   e x i t i n g . . .��   �  ��� � L   M O����  ��  ��  ��   J  � � � l     ��������  ��  ��   �  � � � l  P ` ����� � O  P ` � � � r   V _ � � � n   V [ � � � 1   W [��
�� 
posx � o   V W���� 0 	inputitem 	inputItem � o      ����  0 posixinputitem posixinputItem � m   P S � ��                                                                                  sevs  alis    ^  macintosh_hd2                  BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    m a c i n t o s h _ h d 2  -System/Library/CoreServices/System Events.app   / ��  ��  ��   �  � � � l  a l ����� � r   a l � � � n   a h � � � 1   d h��
�� 
strq � o   a d����  0 posixinputitem posixinputItem � o      ���� 0 ipp  ��  ��   �  � � � l     �� � ���   �  display dialog ipp    � � � � $ d i s p l a y   d i a l o g   i p p �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � c ]set defaultSaveName to (do shell script "echo \"$(basename " & ipp & " | cut -d. -f1)\".gpg")    � � � � � s e t   d e f a u l t S a v e N a m e   t o   ( d o   s h e l l   s c r i p t   " e c h o   \ " $ ( b a s e n a m e   "   &   i p p   &   "   |   c u t   - d .   - f 1 ) \ " . g p g " ) �  � � � l  m � ����� � r   m � � � � l  m | ����� � I  m |�� ���
�� .sysoexecTEXT���     TEXT � b   m x � � � b   m t � � � m   m p � � � � � " e c h o   " $ ( b a s e n a m e   � o   p s���� 0 ipp   � m   t w � � � � �  ) " . g p g��  ��  ��   � o      ���� "0 defaultsavename defaultSaveName��  ��   �  � � � l     �� � ���   � $ display dialog defaultSaveName    � � � � < d i s p l a y   d i a l o g   d e f a u l t S a v e N a m e �  � � � l  � � ����� � r   � � � � � l  � � ����� � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � b   � � � � � m   � � � � � � �   e c h o   " $ ( d i r n a m e   � o   � ����� 0 ipp   � m   � � � � � � �  ) "��  ��  ��   � o      ���� "0 defaultsavepath defaultSavePath��  ��   �  � � � l     �� � ���   � $ display dialog defaultSavePath    � � � � < d i s p l a y   d i a l o g   d e f a u l t S a v e P a t h �  � � � l  � � ����� � r   � � � � � 4   � ��� �
�� 
psxf � o   � ����� "0 defaultsavepath defaultSavePath � o      ���� 80 defaultsavepathapplescript defaultSavePathApplescript��  ��   �  � � � l     �� � ���   � / )display dialog defaultSavePathApplescript    � � � � R d i s p l a y   d i a l o g   d e f a u l t S a v e P a t h A p p l e s c r i p t �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � , & save to same directory without asking    � � � � L   s a v e   t o   s a m e   d i r e c t o r y   w i t h o u t   a s k i n g �  � � � l     �� � ���   � = 7set fileSave to defaultSavePath & "/" & defaultSaveName    � � � � n s e t   f i l e S a v e   t o   d e f a u l t S a v e P a t h   &   " / "   &   d e f a u l t S a v e N a m e �  � � � l     �� � ���   � #  ask for directory to save to    � � � � :   a s k   f o r   d i r e c t o r y   t o   s a v e   t o �  � � � l  � � ����� � r   � � � � � I  � ����� �
�� .sysonwflfile    ��� null��   � �� � �
�� 
prmt � m   � � � � � � �  S a v e   A s � �� � �
�� 
dfnm � o   � ����� "0 defaultsavename defaultSaveName � �� ���
�� 
dflc � o   � ����� 80 defaultsavepathapplescript defaultSavePathApplescript��   � o      ���� 0 filesave fileSave��  ��   �  � � � l     �� � ���   �  display dialog fileSave    � � � � . d i s p l a y   d i a l o g   f i l e S a v e �  � � � l  � � ����� � r   � �   n   � � 1   � ���
�� 
psxp o   � ����� 0 filesave fileSave o      �� 0 filesave fileSave��  ��   �  l  � ��~�} Z  � ��|�{ H   � �		 D   � �

 o   � ��z�z 0 filesave fileSave m   � � �  . g p g r   � � b   � � o   � ��y�y 0 filesave fileSave m   � � �  . g p g o      �x�x 0 filesave fileSave�|  �{  �~  �}    l     �w�w    display dialog fileSave    � . d i s p l a y   d i a l o g   f i l e S a v e  l     �v�u�t�v  �u  �t    l  � ��s�r r   � � n   � � !  1   � ��q
�q 
strq! n   � �"#" 1   � ��p
�p 
psxp# o   � ��o�o 0 filesave fileSave o      �n�n 0 opp  �s  �r   $%$ l     �m&'�m  &  display dialog opp   ' �(( $ d i s p l a y   d i a l o g   o p p% )*) l     �l+,�l  + > 8 testing if file already exists, macos does that already   , �-- p   t e s t i n g   i f   f i l e   a l r e a d y   e x i s t s ,   m a c o s   d o e s   t h a t   a l r e a d y* ./. l     �k01�k  0 $ set testFileExists to fileSave   1 �22 < s e t   t e s t F i l e E x i s t s   t o   f i l e S a v e/ 343 l     �j56�j  5  tell application "Finder"   6 �77 2 t e l l   a p p l i c a t i o n   " F i n d e r "4 898 l     �i:;�i  : ) #	if exists file testFileExists then   ; �<< F 	 i f   e x i s t s   f i l e   t e s t F i l e E x i s t s   t h e n9 =>= l     �h?@�h  ? r l		set question to display dialog "file already exists, overwrite it?" buttons {"Yes", "No"} default button 2   @ �AA � 	 	 s e t   q u e s t i o n   t o   d i s p l a y   d i a l o g   " f i l e   a l r e a d y   e x i s t s ,   o v e r w r i t e   i t ? "   b u t t o n s   { " Y e s " ,   " N o " }   d e f a u l t   b u t t o n   2> BCB l     �gDE�g  D 1 +		set answer to button returned of question   E �FF V 	 	 s e t   a n s w e r   t o   b u t t o n   r e t u r n e d   o f   q u e s t i o nC GHG l     �fIJ�f  I ! 		if (answer is "Yes") then   J �KK 6 	 	 i f   ( a n s w e r   i s   " Y e s " )   t h e nH LML l     �eNO�e  N Z T			do shell script "cd \"$(dirname " & opp & ")\" && rm \"$(basename " & opp & ")\""   O �PP � 	 	 	 d o   s h e l l   s c r i p t   " c d   \ " $ ( d i r n a m e   "   &   o p p   &   " ) \ "   & &   r m   \ " $ ( b a s e n a m e   "   &   o p p   &   " ) \ " "M QRQ l     �dST�d  S  return true   T �UU  r e t u r n   t r u eR VWV l     �cXY�c  X  		else   Y �ZZ  	 	 e l s eW [\[ l     �b]^�b  ]  			return false   ^ �__  	 	 	 r e t u r n   f a l s e\ `a` l     �abc�a  b  		end if   c �dd  	 	 e n d   i fa efe l     �`gh�`  g  	else   h �ii 
 	 e l s ef jkj l     �_lm�_  l  return false   m �nn  r e t u r n   f a l s ek opo l     �^qr�^  q  	end if   r �ss  	 e n d   i fp tut l     �]vw�]  v  end tell   w �xx  e n d   t e l lu yzy l     �\�[�Z�\  �[  �Z  z {|{ l     �Y}~�Y  }   checking dependencies   ~ � ,   c h e c k i n g   d e p e n d e n c i e s| ��� l     �X���X  � ! set dependencycheckok to ""   � ��� 6 s e t   d e p e n d e n c y c h e c k o k   t o   " "� ��� l  ���W�V� r   ���� J   � �� ��� m   � ��� ���  p v� ��� m   � ��� ���  c o r e u t i l s� ��U� m   � ��� ��� 
 g n u p g�U  � o      �T�T 0 dependencies  �W  �V  � ��� l ��S�R� I �Q��
�Q .sysonotfnull��� ��� TEXT� m  �� ���  . . .� �P��O
�P 
appr� m  �� ��� 8 C h e c k i n g   s c r i p t   d e p e n d e n c i e s�O  �S  �R  � ��� l     �N�M�L�N  �M  �L  � ��� l f��K�J� X  f��I�� k  )a�� ��� r  )0��� m  ),�� ���  � o      �H�H 0 dependencycheckok  � ��� r  1B��� I 1>�G��F
�G .sysoexecTEXT���     TEXT� b  1:��� b  16��� m  14�� ��� b i f   [ [   $ ( $ ( $ S H E L L   - i   - c   ' w h i c h   b r e w ' )   l i s t   |   g r e p  � o  45�E�E 0 
dependency  � m  69�� ��� V )   = =   ' '   ] ] ;   t h e n   e c h o   n o ;   e l s e   e c h o   y e s ;   f i�F  � o      �D�D 0 dependencycheckok  � ��C� Z  Ca���B�� = CJ��� o  CF�A�A 0 dependencycheckok  � m  FI�� ���  n o� k  M]�� ��� I MZ�@��?
�@ .sysodlogaskr        TEXT� b  MV��� b  MR��� m  MP�� ��� " h o m e b r e w   f o r m u l a  � o  PQ�>�> 0 
dependency  � m  RU�� ��� .   i s   m i s s i n g ,   e x i t i n g . . .�?  � ��=� L  []�<�<  �=  �B  � k  ``�� ��� l ``�;���;  � " display dialog "all good..."   � ��� 8 d i s p l a y   d i a l o g   " a l l   g o o d . . . "� ��:� l ``�9���9  �  -   � ���  -�:  �C  �I 0 
dependency  � o  �8�8 0 dependencies  �K  �J  � ��� l gt��7�6� I gt�5��
�5 .sysonotfnull��� ��� TEXT� m  gj�� ���  d o n e   ; )� �4��3
�4 
appr� m  mp�� ��� 8 C h e c k i n g   s c r i p t   d e p e n d e n c i e s�3  �7  �6  � ��� l     �2�1�0�2  �1  �0  � ��� l     �/���/  � !  getting size of file/foder   � ��� 6   g e t t i n g   s i z e   o f   f i l e / f o d e r� ��� l u���.�-� r  u���� I u��,��+
�, .sysoexecTEXT���     TEXT� b  u���� b  u���� b  u���� b  u|��� m  ux�� ��� f e c h o   $ ( $ ( $ S H E L L   - i   - c   ' w h i c h   g d u ' )   - s c b   " $ ( d i r n a m e  � o  x{�*�* 0 ipp  � m  |�� ���  ) " / " $ ( b a s e n a m e  � o  ���)�) 0 ipp  � m  ���� ��� � ) "   |   t a i l   - 1   |   a w k   ' { p r i n t   $ 1 } '   |   w h i l e   r e a d   i   ;   d o   e c h o   $ ( e c h o   " $ i * 1 . 0 "   |   b c   |   c u t   - d ' . '   - f 1     )   ;   d o n e )�+  � o      �(�( 
0 pvsize  �.  �-  � � � l     �'�'    display dialog pvsize    � * d i s p l a y   d i a l o g   p v s i z e   l     �&�&    return    �  r e t u r n 	
	 l     �%�$�#�%  �$  �#  
  l ��"�! Z  ��  = �� n  �� 1  ���
� 
prun m  ���                                                                                      @ alis    L  macintosh_hd2                  BD ����Terminal.app                                                   ����            ����  
 cu             	Utilities   -/:System:Applications:Utilities:Terminal.app/     T e r m i n a l . a p p    m a c i n t o s h _ h d 2  *System/Applications/Utilities/Terminal.app  / ��   m  ���
� boovtrue O  �� k  ��  I �����
� .miscactvnull��� ��� null�  �    I ����
� .sysodelanull��� ��� nmbr m  ���� �    Z  �� !�"  = ��#$# l ��%��% I ���&�
� .corecnte****       ****& 2 ���
� 
cwin�  �  �  $ m  ����  ! k  ��'' ()( I �����
� .aevtrappnull��� ��� null�  �  ) *+* I �����
� .miscactvnull��� ��� null�  �  + ,-, l ���
./�
  . J Dtell application "System Events" to keystroke "n" using command down   / �00 � t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s "   t o   k e y s t r o k e   " n "   u s i n g   c o m m a n d   d o w n- 1�	1 I ���2�
� .sysodelanull��� ��� nmbr2 m  ��33 ?��������  �	  �  " k  ��44 565 O ��787 I ���9:
� .prcskprsnull���     ctxt9 m  ��;; �<<  n: �=�
� 
faal= J  ��>> ?@? m  ���
� eMdsKopt@ A�A m  ���
� eMdsKcmd�  �  8 m  ��BB�                                                                                  sevs  alis    ^  macintosh_hd2                  BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    m a c i n t o s h _ h d 2  -System/Library/CoreServices/System Events.app   / ��  6 C� C I ����D��
�� .sysodelanull��� ��� nmbrD m  ��EE ?���������  �    F��F I ����G��
�� .sysodelanull��� ��� nmbrG m  ��HH ?�      ��  ��   m  ��II�                                                                                      @ alis    L  macintosh_hd2                  BD ����Terminal.app                                                   ����            ����  
 cu             	Utilities   -/:System:Applications:Utilities:Terminal.app/     T e r m i n a l . a p p    m a c i n t o s h _ h d 2  *System/Applications/Utilities/Terminal.app  / ��  �    O   JKJ k  LL MNM I ������
�� .miscactvnull��� ��� null��  ��  N O��O I ��P��
�� .sysodelanull��� ��� nmbrP m  QQ ?�      ��  ��  K m   RR�                                                                                      @ alis    L  macintosh_hd2                  BD ����Terminal.app                                                   ����            ����  
 cu             	Utilities   -/:System:Applications:Utilities:Terminal.app/     T e r m i n a l . a p p    m a c i n t o s h _ h d 2  *System/Applications/Utilities/Terminal.app  / ��  �"  �!   STS l     ��������  ��  ��  T UVU l �W����W O  �XYX k  �ZZ [\[ I  ������
�� .miscactvnull��� ��� null��  ��  \ ]^] l !!��_`��  _ J Dtell application "System Events" to keystroke "t" using command down   ` �aa � t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s "   t o   k e y s t r o k e   " t "   u s i n g   c o m m a n d   d o w n^ bcb l !!��de��  d L Frepeat while contents of selected tab of window 1 starts with linefeed   e �ff � r e p e a t   w h i l e   c o n t e n t s   o f   s e l e c t e d   t a b   o f   w i n d o w   1   s t a r t s   w i t h   l i n e f e e dc ghg l !!��ij��  i  
	delay 1.5   j �kk  	 d e l a y   1 . 5h lml l !!��no��  n  
end repeat   o �pp  e n d   r e p e a tm qrq l !!��������  ��  ��  r sts I !(��u��
�� .sysodelanull��� ��� nmbru m  !$vv ?�      ��  t wxw l ))��������  ��  ��  x yzy I )���{|
�� .coredoscnull��� ��� ctxt{ b  )t}~} b  )p� b  )l��� b  )h��� b  )d��� b  )`��� b  )\��� b  )X��� b  )T��� b  )P��� b  )L��� b  )H��� b  )D��� b  )@��� b  )<��� b  )8��� b  )4��� b  )0��� m  ),�� ���� p r i n t f   ' \ e c '   & &   e c h o   ' '   & &   e c h o   - e   ' \ 0 3 3 [ 1 m s t a r t i n g   e n c r y p t i o n . . . \ 0 3 3 [ 0 m ' ;   e c h o   ' '   & &   e c h o   ' p l e a s e   s e t   e n c r y p t i o n   p a s s w o r d . . . '   & &   G P G _ P A S S W O R D = '         '   & &   w h i l e   [ [   $ G P G _ P A S S W O R D   ! =   $ G P G _ P A S S W O R D 2   ] ]   | |   [ [   $ G P G _ P A S S W O R D   = =   ' '   ] ] ;   d o   s t t y   - e c h o   & &   t r a p   ' s t t y   e c h o '   E X I T   & &   p r i n t f   ' g p g   p a s s w o r d :   '   & &   r e a d   - r   $ @   G P G _ P A S S W O R D   & &   p r i n t f   '   '   & &   e c h o   ' '   & &   p r i n t f   ' r e - e n t e r   g p g   p a s s w o r d :   '   & &   r e a d   - r   $ @   G P G _ P A S S W O R D 2   & &   s t t y   e c h o   & &   t r a p   -   E X I T   & &   e c h o   ' ' ;   d o n e   & &   e c h o   ' ' ;   e c h o   e n c r y p t i n g   " $ ( d i r n a m e  � o  ,/���� 0 ipp  � m  03�� ���  ) " / " $ ( b a s e n a m e  � o  47���� 0 ipp  � m  8;�� ��� > ) " ; p r i n t f   ' % - 1 1 s '   ' t o '   " $ ( e c h o  � o  <?���� 0 opp  � m  @C�� ��� @ ) "   & &   e c h o   ' ' ;   p u s h d   " $ ( d i r n a m e  � o  DG���� 0 ipp  � m  HK�� ��� B ) "   1 >   / d e v / n u l l ;   c a t   " $ ( b a s e n a m e  � o  LO���� 0 ipp  � m  PS�� ���  ) "   |   p v   - s  � o  TW���� 
0 pvsize  � m  X[�� ���P   |   g p g   - c   - - b a t c h   - - y e s   - - q u i e t   - - s y m m e t r i c   - - p a s s p h r a s e = $ G P G _ P A S S W O R D   - - s 2 k - c i p h e r - a l g o   A E S 2 5 6   - - s 2 k - d i g e s t - a l g o   S H A 5 1 2   - - s 2 k - c o u n t   6 5 5 3 6   - - c o m p r e s s - a l g o   0   - o   " $ ( e c h o  � o  \_���� 0 opp  � m  `c�� ��� � ) " ;   p o p d   1 >   / d e v / n u l l   & &   e c h o   ' '   & &   e c h o   ' t e s t i n g   i n t e g r i t y   o f   f i l e ( s ) '   & &   e c h o   - n   " $ ( b a s e n a m e  � o  dg���� 0 opp  � m  hk�� ��� � ) " ' . . .   '   & &   b u i l t i n   e c h o   $ G P G _ P A S S W O R D   |   g p g   - - q u i e t   - - b a t c h   - - n o - t t y   - - y e s   - - p a s s p h r a s e - f d   0   - - d r y - r u n   - d   " $ ( e c h o  � o  lo���� 0 opp  ~ m  ps�� ��� ) "   > / d e v / n u l l   2 > & 1   & &   e c h o   - e   ' f i l e   i s   \ 0 3 3 [ 1 ; 3 2 m O K \ 0 3 3 [ 0 m '   | |   e c h o   - e   ' f i l e   i s   \ 0 3 3 [ 1 ; 3 1 m I N V A L I D \ 0 3 3 [ 0 m ' ;   e c h o   ' ' ;   e c h o   ' d o n e   ; ) ' ;   e c h o   ' '| �����
�� 
kfil� n  w���� 1  }���
�� 
tcnt� 4 w}���
�� 
cwin� m  {|���� ��  z ���� l ����������  ��  ��  ��  Y m  ���                                                                                      @ alis    L  macintosh_hd2                  BD ����Terminal.app                                                   ����            ����  
 cu             	Utilities   -/:System:Applications:Utilities:Terminal.app/     T e r m i n a l . a p p    m a c i n t o s h _ h d 2  *System/Applications/Utilities/Terminal.app  / ��  ��  ��  V ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  �  ## documentation   � ���   # #   d o c u m e n t a t i o n� ��� l     ������  � !  \" keeping spaces alive \"   � ��� 6   \ "   k e e p i n g   s p a c e s   a l i v e   \ "� ��� l     ��������  ��  ��  � ��� l     ������  � E ? using which to detect the install path of the homebrew command   � ��� ~   u s i n g   w h i c h   t o   d e t e c t   t h e   i n s t a l l   p a t h   o f   t h e   h o m e b r e w   c o m m a n d� ��� l     ��������  ��  ��  � ��� l     ������  � ? 9 use SHELL -i -c in do shell script (sources config file)   � ��� r   u s e   S H E L L   - i   - c   i n   d o   s h e l l   s c r i p t   ( s o u r c e s   c o n f i g   f i l e )� ��� l     ������  � y s use SHELL -l -c or just the command in do script (as it is run in terminal and sources config files automatically)   � ��� �   u s e   S H E L L   - l   - c   o r   j u s t   t h e   c o m m a n d   i n   d o   s c r i p t   ( a s   i t   i s   r u n   i n   t e r m i n a l   a n d   s o u r c e s   c o n f i g   f i l e s   a u t o m a t i c a l l y )� ��� l     ��������  ��  ��  � ���� l     ��������  ��  ��  ��       ������  � ��
�� .aevtoappnull  �   � ****� �����������
�� .aevtoappnull  �   � ****� k    ���  ��  %��  I��  ���  ���  ���  ���  ���  ���  ��� �� �� ��� ��� ��� ��� ��� �� U����  ��  ��  � ���� 0 
dependency  � \���� ,�� T�� c������������ m }�� ��� ��������� � ����� � ��������� �����������������������������������������������������3;��������Hv���������������
�� misccura
�� .miscactvnull��� ��� null�� 0 	inputtype 	inputType
�� 
prmp
�� 
dflc
�� afdrdesk
�� .earsffdralis        afdr�� 
�� .sysostdfalis    ��� null�� 0 	inputitem 	inputItem
�� .sysostflalis    ��� null
�� .sysodlogaskr        TEXT
�� 
posx��  0 posixinputitem posixinputItem
�� 
strq�� 0 ipp  
�� .sysoexecTEXT���     TEXT�� "0 defaultsavename defaultSaveName�� "0 defaultsavepath defaultSavePath
�� 
psxf�� 80 defaultsavepathapplescript defaultSavePathApplescript
�� 
prmt
�� 
dfnm�� 
�� .sysonwflfile    ��� null�� 0 filesave fileSave
�� 
psxp�� 0 opp  �� 0 dependencies  
�� 
appr
�� .sysonotfnull��� ��� TEXT
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 0 dependencycheckok  �� 
0 pvsize  
�� 
prun
�� .sysodelanull��� ��� nmbr
�� 
cwin
�� .aevtrappnull��� ��� null
�� 
faal
�� eMdsKopt
�� eMdsKcmd
�� .prcskprsnull���     ctxt
�� 
kfil
�� 
tcnt
� .coredoscnull��� ��� ctxt���� *j UO�kvE�O��kv  *����j 	� E�Y &��kv  *����j 	� E�Y a j OhOa  �a ,E` UO_ a ,E` Oa _ %a %j E` Oa _ %a %j E` O*a _ /E` O*a  a !a "_ �_ a # $E` %O_ %a &,E` %O_ %a ' _ %a (%E` %Y hO_ %a &,a ,E` )Oa *a +a ,mvE` -Oa .a /a 0l 1O R_ -[a 2a 3l 4kh  a 5E` 6Oa 7�%a 8%j E` 6O_ 6a 9  a :�%a ;%j OhY h[OY��Oa <a /a =l 1Oa >_ %a ?%_ %a @%j E` AOa Ba C,e  ea B [*j Okj DO*a E-j 4j  *j FO*j Oa Gj DY #a  a Ha Ia Ja Klvl LUOa Gj DOa Mj DUY a B *j Oa Mj DUOa B n*j Oa Nj DOa O_ %a P%_ %a Q%_ )%a R%_ %a S%_ %a T%_ A%a U%_ )%a V%_ )%a W%_ )%a X%a Y*a Ek/a Z,l [OPU ascr  ��ޭ