FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ) # ASArgs - Arguments for AppleScript     � 	 	 F   A S A r g s   -   A r g u m e n t s   f o r   A p p l e S c r i p t   
  
 l     ��  ��           �           l     ��  ��    / ) Created by Andreas Zeitler on 2011-09-14     �   R   C r e a t e d   b y   A n d r e a s   Z e i t l e r   o n   2 0 1 1 - 0 9 - 1 4      l     ��  ��    @ : Copyright 2011 Mac OS X Screencasts. All rights reserved.     �   t   C o p y r i g h t   2 0 1 1   M a c   O S   X   S c r e e n c a s t s .   A l l   r i g h t s   r e s e r v e d .      l     ��  ��           �           l     ��   !��     ? 9 This script is an attempt to make AppleScripting easier.    ! � " " r   T h i s   s c r i p t   i s   a n   a t t e m p t   t o   m a k e   A p p l e S c r i p t i n g   e a s i e r .   # $ # l     �� % &��   % N H I was rather intrigued and fascinated by the way Shell scripts are able    & � ' ' �   I   w a s   r a t h e r   i n t r i g u e d   a n d   f a s c i n a t e d   b y   t h e   w a y   S h e l l   s c r i p t s   a r e   a b l e $  ( ) ( l     �� * +��   * S M to handle arguments like $1, $2, and/or $#. So I came up with a solution for    + � , , �   t o   h a n d l e   a r g u m e n t s   l i k e   $ 1 ,   $ 2 ,   a n d / o r   $ # .   S o   I   c a m e   u p   w i t h   a   s o l u t i o n   f o r )  - . - l     �� / 0��   /   AppleScript.     0 � 1 1    A p p l e S c r i p t .   .  2 3 2 l     ��������  ��  ��   3  4 5 4 l     �� 6 7��   6 F @ Here's how it works. Call this script from another script with:    7 � 8 8 �   H e r e ' s   h o w   i t   w o r k s .   C a l l   t h i s   s c r i p t   f r o m   a n o t h e r   s c r i p t   w i t h : 5  9 : 9 l     �� ; <��   ;       < � = =    :  > ? > l     �� @ A��   @ T N set theFile to load script (POSIX file "/Users/YOU/args in applescript.scpt")    A � B B �   s e t   t h e F i l e   t o   l o a d   s c r i p t   ( P O S I X   f i l e   " / U s e r s / Y O U / a r g s   i n   a p p l e s c r i p t . s c p t " ) ?  C D C l     �� E F��   E S M set theFile's parameters to "--target \"Lorem ipsum\" -m \"dolor sit amet\"     F � G G �   s e t   t h e F i l e ' s   p a r a m e t e r s   t o   " - - t a r g e t   \ " L o r e m   i p s u m \ "   - m   \ " d o l o r   s i t   a m e t \ "   D  H I H l     �� J K��   J   run script theFile    K � L L &   r u n   s c r i p t   t h e F i l e I  M N M l     ��������  ��  ��   N  O P O l     �� Q R��   Q O I and you'll get two arrays back. One with arguments, one with parameters.    R � S S �   a n d   y o u ' l l   g e t   t w o   a r r a y s   b a c k .   O n e   w i t h   a r g u m e n t s ,   o n e   w i t h   p a r a m e t e r s . P  T U T l     �� V W��   V C = {{"target", "m"}, {"\"Lorem ipsum\"", "\"dolor sit amet\""}}    W � X X z   { { " t a r g e t " ,   " m " } ,   { " \ " L o r e m   i p s u m \ " " ,   " \ " d o l o r   s i t   a m e t \ " " } } U  Y Z Y l     �� [ \��   [       \ � ] ]    Z  ^ _ ^ l     �� ` a��   ` D > I probably don't have to explain how to work with two arrays�    a � b b |   I   p r o b a b l y   d o n ' t   h a v e   t o   e x p l a i n   h o w   t o   w o r k   w i t h   t w o   a r r a y s & _  c d c l     ��������  ��  ��   d  e f e j     �� g�� 0 
parameters   g m     ��
�� 
msng f  h i h l     ��������  ��  ��   i  j k j l     l���� l Z     m n���� m =     o p o o     ���� 0 
parameters   p m    ��
�� 
msng n L   
  q q J   
  r r  s t s m   
  u u � v v * S o m e t h i n g   w e n t   w r o n g . t  w�� w m     x x � y y  ��  ��  ��  ��  ��   k  z { z l     ��������  ��  ��   {  | } | l     �� ~ ��   ~ : 4 setup empty args and params arrays for return later     � � � h   s e t u p   e m p t y   a r g s   a n d   p a r a m s   a r r a y s   f o r   r e t u r n   l a t e r }  � � � l    ����� � r     � � � J    ����   � o      ���� 0 args  ��  ��   �  � � � l    ����� � r     � � � J    ����   � o      ���� 
0 params  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   split args and params    � � � � ,   s p l i t   a r g s   a n d   p a r a m s �  � � � l   & ����� � r    & � � � J    " � �  � � � m     � � � � �  - - �  ��� � m      � � � � �  -��   � n      � � � 1   # %��
�� 
txdl � 1   " #��
�� 
ascr��  ��   �  � � � l  ' 0 ����� � r   ' 0 � � � n   ' . � � � 2  , .��
�� 
citm � o   ' ,���� 0 
parameters   � o      ���� "0 parametersitems parametersItems��  ��   �  � � � l  1 8 ����� � r   1 8 � � � J   1 4 � �  ��� � m   1 2 � � � � �  ��   � n      � � � 1   5 7��
�� 
txdl � 1   4 5��
�� 
ascr��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � C = the first splitted item is always empty, so we can remove it    � � � � z   t h e   f i r s t   s p l i t t e d   i t e m   i s   a l w a y s   e m p t y ,   s o   w e   c a n   r e m o v e   i t �  � � � l  9 F ����� � r   9 F � � � n   9 D � � � 7  : D�� � �
�� 
cobj � m   > @����  � m   A C������ � o   9 :���� "0 parametersitems parametersItems � o      ���� "0 parametersitems parametersItems��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   iterate args and params    � � � � 0   i t e r a t e   a r g s   a n d   p a r a m s �  � � � l  G � ����� � X   G � ��� � � k   W � � �  � � � l  W W��������  ��  ��   �  � � � l  W W�� � ���   � ) # repeat with every non " " argument    � � � � F   r e p e a t   w i t h   e v e r y   n o n   "   "   a r g u m e n t �  � � � Z   W � � ����� � >  W Z � � � o   W X���� 0 arg   � m   X Y��
�� 
msng � k   ] � � �  � � � l  ] ]�� � ���   �   setting arg    � � � �    s e t t i n g   a r g �  � � � r   ] e � � � n   ] a � � � 4   ^ a�� �
�� 
cwor � m   _ `����  � o   ] ^���� 0 arg   � o      ���� 0 
currentarg 
currentArg �  � � � l  f f��������  ��  ��   �  � � � l  f f�� � ���   � ; 5 setting params, which sometimes have trailing spaces    � � � � j   s e t t i n g   p a r a m s ,   w h i c h   s o m e t i m e s   h a v e   t r a i l i n g   s p a c e s �  � � � r   f  � � � n   f { � � � 7  g {�� � �
�� 
ctxt � l  m w ����� � [   m w � � � l  n u ����� � n   n u � � � 1   q u��
�� 
leng � o   n q���� 0 
currentarg 
currentArg��  ��   � m   u v���� ��  ��   � m   x z������ � o   f g���� 0 arg   � o      ���� 0 currentparams currentParams �  �  � l  � �����     remove trailing space    � ,   r e m o v e   t r a i l i n g   s p a c e   Z   � ����� l  � ����� =   � �	
	 n   � � 4  � ���
�� 
cha  m   � ������� o   � ����� 0 currentparams currentParams
 m   � � �   ��  ��   r   � � n   � � 7  � ���
�� 
ctxt m   � �����  l  � ���� \   � � l  � ��~�} n   � � 1   � ��|
�| 
leng o   � ��{�{ 0 currentparams currentParams�~  �}   m   � ��z�z ��  �   o   � ��y�y 0 currentparams currentParams o      �x�x 0 currentparams currentParams��  ��   �w l  � ��v�u�t�v  �u  �t  �w  ��  ��   �  l  � ��s�r�q�s  �r  �q     r   � �!"! o   � ��p�p 0 
currentarg 
currentArg" n      #$#  ;   � �$ o   � ��o�o 0 args    %&% r   � �'(' o   � ��n�n 0 currentparams currentParams( n      )*)  ;   � �* o   � ��m�m 
0 params  & +�l+ l  � ��k�j�i�k  �j  �i  �l  �� 0 arg   � o   J K�h�h "0 parametersitems parametersItems��  ��   � ,-, l     �g�f�e�g  �f  �e  - .�d. l  � �/�c�b/ L   � �00 J   � �11 232 o   � ��a�a 0 args  3 4�`4 o   � ��_�_ 
0 params  �`  �c  �b  �d       �^5�]6�^  5 �\�[�\ 0 
parameters  
�[ .aevtoappnull  �   � ****
�] 
msng6 �Z7�Y�X89�W
�Z .aevtoappnull  �   � ****7 k     �::  j;;  �<<  �==  �>>  �??  �@@  �AA  �BB .�V�V  �Y  �X  8 �U�U 0 arg  9 �T u x�S�R � ��Q�P�O�N ��M�L�K�J�I�H�G�F�E
�T 
msng�S 0 args  �R 
0 params  
�Q 
ascr
�P 
txdl
�O 
citm�N "0 parametersitems parametersItems
�M 
cobj
�L 
kocl
�K .corecnte****       ****
�J 
cwor�I 0 
currentarg 
currentArg
�H 
ctxt
�G 
leng�F 0 currentparams currentParams
�E 
cha �W �b   �  
��lvY hOjvE�OjvE�O��lv��,FOb   �-E�O�kv��,FO�[�\[Zl\Zi2E�O ��[��l kh  �� X��k/E` O�[a \[Z_ a ,l\Zi2E` O_ a i/a    _ [a \[Zk\Z_ a ,k2E` Y hOPY hO_ �6FO_ �6FOP[OY��O��lv ascr  ��ޭ