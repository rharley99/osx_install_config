FasdUAS 1.101.10   ��   ��    k             l    . ����  O     .  	  k    - 
 
     I   	������
�� .miscactvnull��� ��� obj ��  ��        l  
 
��������  ��  ��        l  
 
��  ��    s mset fileSave to (choose folder name with prompt "Save backup to..." default location path to desktop) as text     �   � s e t   f i l e S a v e   t o   ( c h o o s e   f o l d e r   n a m e   w i t h   p r o m p t   " S a v e   b a c k u p   t o . . . "   d e f a u l t   l o c a t i o n   p a t h   t o   d e s k t o p )   a s   t e x t      l  
 
��  ��    n hset fileSave to (choose folder with prompt "Save backup to..." default location path to desktop) as text     �   � s e t   f i l e S a v e   t o   ( c h o o s e   f o l d e r   w i t h   p r o m p t   " S a v e   b a c k u p   t o . . . "   d e f a u l t   l o c a t i o n   p a t h   t o   d e s k t o p )   a s   t e x t      r   
     I  
 �� ��
�� .sysoexecTEXT���     TEXT  m   
    �   � o s a s c r i p t   - e   ' ( c h o o s e   f o l d e r   w i t h   p r o m p t   " S a v e   u t m   b a c k u p   t o . . . "   d e f a u l t   l o c a t i o n   p a t h   t o   d e s k t o p )   a s   t e x t '��    o      ���� 0 filesave fileSave     !   r     " # " n     $ % $ 1    ��
�� 
strq % n     & ' & 1    ��
�� 
psxp ' o    ���� 0 filesave fileSave # o      ���� 0 opp   !  ( ) ( r     * + * n     , - , 1    ��
�� 
psxp - o    ���� 0 filesave fileSave + o      ���� 0 
exportpath   )  . / . l     ��������  ��  ��   /  0 1 0 r     + 2 3 2 n     ) 4 5 4 1   ' )��
�� 
strq 5 n     ' 6 7 6 1   % '��
�� 
psxp 7 l    % 8���� 8 I    %�� 9��
�� .earsffdralis        afdr 9  f     !��  ��  ��   3 o      ���� 0 ptm   1  : ; : l  , ,�� < =��   < b \do shell script "export TARGZSAVEDIR=\"$(dirname " & opp & ")\"/\"$(basename " & opp & ")\""    = � > > � d o   s h e l l   s c r i p t   " e x p o r t   T A R G Z S A V E D I R = \ " $ ( d i r n a m e   "   &   o p p   &   " ) \ " / \ " $ ( b a s e n a m e   "   &   o p p   &   " ) \ " " ;  ?�� ? l  , ,�� @ A��   @  set myfile to choose file    A � B B 2 s e t   m y f i l e   t o   c h o o s e   f i l e��   	 m      C C�                                                                                  MACS  alis    @  macintosh_hd               㮑^BD ����
Finder.app                                                     ����㮑^        ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    m a c i n t o s h _ h d  &System/Library/CoreServices/Finder.app  / ��  ��  ��     D E D l     ��������  ��  ��   E  F G F l  / c H���� H O   / c I J I k   3 b K K  L M L I  3 8������
�� .miscactvnull��� ��� obj ��  ��   M  N O N I  9 >�� P��
�� .sysodelanull��� ��� nmbr P m   9 : Q Q ?�      ��   O  R�� R Z   ? b S T�� U S =  ? H V W V l  ? F X���� X I  ? F�� Y��
�� .corecnte****       **** Y 2  ? B��
�� 
cwin��  ��  ��   W m   F G����   T k   K ^ Z Z  [ \ [ I  K P������
�� .aevtrappnull��� ��� null��  ��   \  ] ^ ] I  Q V������
�� .miscactvnull��� ��� obj ��  ��   ^  _ ` _ l  W W�� a b��   a J Dtell application "System Events" to keystroke "n" using command down    b � c c � t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s "   t o   k e y s t r o k e   " n "   u s i n g   c o m m a n d   d o w n `  d�� d I  W ^�� e��
�� .sysodelanull��� ��� nmbr e m   W Z f f ?���������  ��  ��   U l  a a�� g h��   g  -    h � i i  -��   J m   / 0 j j�                                                                                      @ alis    J  macintosh_hd               㮑^BD ����Terminal.app                                                   ����㮑^        ����  
 cu             	Utilities   -/:System:Applications:Utilities:Terminal.app/     T e r m i n a l . a p p    m a c i n t o s h _ h d  *System/Applications/Utilities/Terminal.app  / ��  ��  ��   G  k l k l     ��������  ��  ��   l  m�� m l  d f n���� n L   d f o o o   d e���� 0 
exportpath  ��  ��  ��       
�� p q r s t u��������   p ����������������
�� .aevtoappnull  �   � ****�� 0 filesave fileSave�� 0 opp  �� 0 
exportpath  �� 0 ptm  ��  ��  ��   q �� v���� w x��
�� .aevtoappnull  �   � **** v k     f y y   z z  F { {  m����  ��  ��   w   x  C�� ���������������� j Q�������� f
�� .miscactvnull��� ��� obj 
�� .sysoexecTEXT���     TEXT�� 0 filesave fileSave
�� 
psxp
�� 
strq�� 0 opp  �� 0 
exportpath  
�� .earsffdralis        afdr�� 0 ptm  
�� .sysodelanull��� ��� nmbr
�� 
cwin
�� .corecnte****       ****
�� .aevtrappnull��� ��� null�� g� +*j O�j E�O��,�,E�O��,E�O)j 	�,�,E�OPUO� 1*j O�j O*�-j j  *j O*j Oa j Y hUO� r � | | ^ m a c i n t o s h _ h d : U s e r s : t o m : D e s k t o p : b a c k u p _ t e s t _ u t m : s � } } J ' / U s e r s / t o m / D e s k t o p / b a c k u p _ t e s t _ u t m / ' t � ~ ~ F / U s e r s / t o m / D e s k t o p / b a c k u p _ t e s t _ u t m / u �   � ' / U s e r s / t o m / D e s k t o p / m a c o s / d e f a u l t s _ w r i t e / _ s c r i p t s _ f i n a l / 0 7 _ b a c k u p _ a n d _ r e s t o r e _ s c r i p t / u t m _ b a c k u p / a s k _ s a v e _ t o _ u t m . s c p t '��  ��  ��  ascr  ��ޭ