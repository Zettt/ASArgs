FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ) # ASArgs - Arguments for AppleScript     � 	 	 F   A S A r g s   -   A r g u m e n t s   f o r   A p p l e S c r i p t   
  
 l     ��  ��           �           l     ��  ��    / ) Created by Andreas Zeitler on 2011-09-14     �   R   C r e a t e d   b y   A n d r e a s   Z e i t l e r   o n   2 0 1 1 - 0 9 - 1 4      l     ��  ��    @ : Copyright 2011 Mac OS X Screencasts. All rights reserved.     �   t   C o p y r i g h t   2 0 1 1   M a c   O S   X   S c r e e n c a s t s .   A l l   r i g h t s   r e s e r v e d .      l     ��  ��           �           l     ��   !��     ? 9 This script is an attempt to make AppleScripting easier.    ! � " " r   T h i s   s c r i p t   i s   a n   a t t e m p t   t o   m a k e   A p p l e S c r i p t i n g   e a s i e r .   # $ # l     �� % &��   % N H I was rather intrigued and fascinated by the way Shell scripts are able    & � ' ' �   I   w a s   r a t h e r   i n t r i g u e d   a n d   f a s c i n a t e d   b y   t h e   w a y   S h e l l   s c r i p t s   a r e   a b l e $  ( ) ( l     �� * +��   * S M to handle arguments like $1, $2, and/or $#. So I came up with a solution for    + � , , �   t o   h a n d l e   a r g u m e n t s   l i k e   $ 1 ,   $ 2 ,   a n d / o r   $ # .   S o   I   c a m e   u p   w i t h   a   s o l u t i o n   f o r )  - . - l     �� / 0��   /   AppleScript.     0 � 1 1    A p p l e S c r i p t .   .  2 3 2 l     ��������  ��  ��   3  4 5 4 l     �� 6 7��   6 F @ Here's how it works. Call this script from another script with:    7 � 8 8 �   H e r e ' s   h o w   i t   w o r k s .   C a l l   t h i s   s c r i p t   f r o m   a n o t h e r   s c r i p t   w i t h : 5  9 : 9 l     �� ; <��   ;       < � = =    :  > ? > l     �� @ A��   @ T N set theFile to load script (POSIX file "/Users/YOU/args in applescript.scpt")    A � B B �   s e t   t h e F i l e   t o   l o a d   s c r i p t   ( P O S I X   f i l e   " / U s e r s / Y O U / a r g s   i n   a p p l e s c r i p t . s c p t " ) ?  C D C l     �� E F��   E S M set theFile's parameters to "--target \"Lorem ipsum\" -m \"dolor sit amet\"     F � G G �   s e t   t h e F i l e ' s   p a r a m e t e r s   t o   " - - t a r g e t   \ " L o r e m   i p s u m \ "   - m   \ " d o l o r   s i t   a m e t \ "   D  H I H l     �� J K��   J   run script theFile    K � L L &   r u n   s c r i p t   t h e F i l e I  M N M l     ��������  ��  ��   N  O P O l     �� Q R��   Q O I and you'll get two arrays back. One with arguments, one with parameters.    R � S S �   a n d   y o u ' l l   g e t   t w o   a r r a y s   b a c k .   O n e   w i t h   a r g u m e n t s ,   o n e   w i t h   p a r a m e t e r s . P  T U T l     �� V W��   V C = {{"target", "m"}, {"\"Lorem ipsum\"", "\"dolor sit amet\""}}    W � X X z   { { " t a r g e t " ,   " m " } ,   { " \ " L o r e m   i p s u m \ " " ,   " \ " d o l o r   s i t   a m e t \ " " } } U  Y Z Y l     �� [ \��   [       \ � ] ]    Z  ^ _ ^ l     �� ` a��   ` D > I probably don't have to explain how to work with two arrays�    a � b b |   I   p r o b a b l y   d o n ' t   h a v e   t o   e x p l a i n   h o w   t o   w o r k   w i t h   t w o   a r r a y s & _  c d c l     ��������  ��  ��   d  e f e j     �� g�� 0 
parameters   g m     ��
�� 
msng f  h i h l     ��������  ��  ��   i  j k j l     l���� l r      m n m o     ���� 0 
parameters   n o      ���� 
0 mytext  ��  ��   k  o p o l     ��������  ��  ��   p  q r q l    s���� s I   �� t��
�� .sysodlogaskr        TEXT t o    	���� 
0 mytext  ��  ��  ��   r  u v u l     ��������  ��  ��   v  w x w l    y���� y r     z { z J    ����   { o      ���� 0 args  ��  ��   x  | } | l    ~���� ~ r      �  J    ����   � o      ���� 
0 params  ��  ��   }  � � � l     ��������  ��  ��   �  � � � l     ����� � r      � � � J     � �  � � � m     � � � � �  - - �  ��� � m     � � � � �  -��   � n      � � � 1    ��
�� 
txdl � 1    ��
�� 
ascr��  ��   �  � � � l  ! & ����� � r   ! & � � � n   ! $ � � � 2  " $��
�� 
citm � o   ! "���� 
0 mytext   � o      ���� 0 mytextitems myTextItems��  ��   �  � � � l  ' . ����� � r   ' . � � � J   ' * � �  ��� � m   ' ( � � � � �  ��   � n      � � � 1   + -��
�� 
txdl � 1   * +��
�� 
ascr��  ��   �  � � � l     ��������  ��  ��   �  � � � l  / < ����� � r   / < � � � n   / : � � � 7  0 :�� � �
�� 
cobj � m   4 6����  � m   7 9������ � o   / 0���� 0 mytextitems myTextItems � o      ���� 0 mytextitems myTextItems��  ��   �  � � � l     ��������  ��  ��   �  � � � l  = � ����� � X   = � ��� � � k   M � � �  � � � l  M M�� � ���   �   display dialog arg    � � � � &   d i s p l a y   d i a l o g   a r g �  � � � l  M M��������  ��  ��   �  � � � l  M M�� � ���   � ) # repeat with every non " " argument    � � � � F   r e p e a t   w i t h   e v e r y   n o n   "   "   a r g u m e n t �  � � � Z   M � � ����� � >  M P � � � o   M N���� 0 arg   � m   N O��
�� 
msng � k   S � � �  � � � r   S [ � � � n   S W � � � 4   T W�� �
�� 
cwor � m   U V����  � o   S T���� 0 arg   � o      ���� 0 
currentarg 
currentArg �  � � � l  \ \�� � ���   �    display dialog currentArg    � � � � 4   d i s p l a y   d i a l o g   c u r r e n t A r g �  � � � l  \ \��������  ��  ��   �  � � � r   \ u � � � n   \ q � � � 7  ] q�� � �
�� 
ctxt � l  c m ����� � [   c m � � � l  d k ����� � n   d k � � � 1   g k��
�� 
leng � o   d g���� 0 
currentarg 
currentArg��  ��   � m   k l���� ��  ��   � m   n p������ � o   \ ]���� 0 arg   � o      ���� 0 currentparams currentParams �  � � � l  v v��������  ��  ��   �  � � � l  v v�� � ���   �   remove trailing space    � � � � ,   r e m o v e   t r a i l i n g   s p a c e �  � � � Z   v � � ����� � l  v � ����� � =   v � � � � n   v ~ � � � 4  y ~�� �
�� 
cha  � m   | }������ � o   v y�� 0 currentparams currentParams � m   ~ � � � � � �   ��  ��   � r   � � � � � n   � � � � � 7  � ��~ � �
�~ 
ctxt � m   � ��}�}  � l  � � ��|�{ � \   � �   l  � ��z�y n   � � 1   � ��x
�x 
leng o   � ��w�w 0 currentparams currentParams�z  �y   m   � ��v�v �|  �{   � o   � ��u�u 0 currentparams currentParams � o      �t�t 0 currentparams currentParams��  ��   �  l  � ��s�s   #  display dialog currentParams    �		 :   d i s p l a y   d i a l o g   c u r r e n t P a r a m s 
�r
 l  � ��q�p�o�q  �p  �o  �r  ��  ��   �  l  � ��n�m�l�n  �m  �l    r   � � o   � ��k�k 0 
currentarg 
currentArg n        ;   � � o   � ��j�j 0 args    r   � � o   � ��i�i 0 currentparams currentParams n        ;   � � o   � ��h�h 
0 params   �g l  � ��f�e�d�f  �e  �d  �g  �� 0 arg   � o   @ A�c�c 0 mytextitems myTextItems��  ��   �  l     �b�a�`�b  �a  �`    l  � ��_�^ L   � � J   � �   !"! o   � ��]�] 0 args  " #�\# o   � ��[�[ 
0 params  �\  �_  �^   $�Z$ l     �Y�X�W�Y  �X  �W  �Z       �V%�U&�V  % �T�S�T 0 
parameters  
�S .aevtoappnull  �   � ****
�U 
msng& �R'�Q�P()�O
�R .aevtoappnull  �   � ****' k     �**  j++  q,,  w--  |..  �//  �00  �11  �22  �33 �N�N  �Q  �P  ( �M�M 0 arg  ) �L�K�J�I � ��H�G�F�E ��D�C�B�A�@�?�>�=�<�; ��L 
0 mytext  
�K .sysodlogaskr        TEXT�J 0 args  �I 
0 params  
�H 
ascr
�G 
txdl
�F 
citm�E 0 mytextitems myTextItems
�D 
cobj
�C 
kocl
�B .corecnte****       ****
�A 
msng
�@ 
cwor�? 0 
currentarg 
currentArg
�> 
ctxt
�= 
leng�< 0 currentparams currentParams
�; 
cha �O �b   E�O�j OjvE�OjvE�O��lv��,FO��-E�O�kv��,FO�[�\[Zl\Zi2E�O ��[��l kh  �� X��k/E` O�[a \[Z_ a ,l\Zi2E` O_ a i/a    _ [a \[Zk\Z_ a ,k2E` Y hOPY hO_ �6FO_ �6FOP[OY��O��lv ascr  ��ޭ