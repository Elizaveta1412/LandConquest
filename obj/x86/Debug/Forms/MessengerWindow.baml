   M S B A M L   `   `   `  ����G  CLandConquest, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:LandConquest.FormsLandConquest.Forms  5   	   (    "LandConquest.Forms.MessengerWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:LandConquest.Forms     5   	   V RMaterialDesignThemes.Wpf, Version=3.1.3.1513, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � WindowStyle$
  None=�5	   	    � 
ResizeMode$ NoResize=�6    � WindowStartupLocation$ CenterScreen=�5
   	   $	��450��5   	   $	��850��6    � ShowInTaskbar .  ��6"   Z� .��5      �� ���	#FF392018$��3q�6%   $
��Auto��69   $
��Auto��6G   ._�5   
   � .+�5      �� -   5         ��Name$ ListViewDialogs��5      $
��Left=�60   $	��366��6K   $	��Top=�6X   $	��250��6p   ���	#DD000000
���   �
������� J� OpacityMask
 �����$��12(�6�   $��	10,67,0,0q�6�   ��5      �� 5       �� 
TargetType" ��6   .�5      ��  �� Property � �� �� Value
 �����67   5      5      �� 5      -   5        	 ��Name$	 TextBoxDialog��5      .  (MaterialDesignThemes.Wpf.TextFieldAssist
   DecorationVisibility$
 Hidden=�6-      UnderlineBrush
 ����  �� 	MaxLength$	 500��6�   )  #MaterialDesignThemes.Wpf.HintAssist   
IsFloating .  $��5,0,0,0q�6�   $��18(�6�   
�������$	��366��6  $��267,26,10.2,0q�6$   �� AcceptsReturn . " �� VerticalScrollBarVisibility$
 Auto=�6P   �� 
IsReadOnly .  �� TextWrapping$
 Wrap=�6�  $	��Top=�6�  �� 5      -   5         ��Name$ ButtonSendMessage��5      $
��Send��60   $
��Left=�6?   $��Center=�6Z   $	��Top=�6}   $��66��6�   $��36��6�   $��767,397,0,0q�6�   ���	#FFE1C993$��Book Antiqua)�6  ��6�   Z� ��5      �� 5       �� ImageSource$A ;/LandConquest;component/Pictures/epic_long_brown_button.png��6!   5      �� 5       -   5        $ ButtonClose��5       $��Center=�6*   $��823,0,0.2,0q�6H   $	��Top=�6]   $��20��6�    J� RenderTransformOrigin$ 0.5,0.5&�6�   $��20��6�   ��6u   Z� ��6�   Z� ��5!      �� 5"      $6 0/LandConquest;component/Pictures/buttonCross.jpg��6!   5$      �� 5%      -   5        $	 TextBoxNewMessage��5%      $
 Hidden=�61   $��1q�6n   
 ���� $��16(�6�   $
��Left=�6�   $��36��6�   $
 Wrap=�6�   $	��Top=�6  $	��495��6   
�������
���   �   Hint$  Your message��5&   h    .  $��267,397,0,0q�6�   ���	#FF391D18 �� 
CaretBrush 6%   Z�  �� SelectionBrush 6N   Z� 6�   �� 5'      -   5        $ ButtonCreateNewDialog��5'      $��
Create new��64   $
��Left=�6I   $��Center=�6d   $	��Top=�6�   $��88��6�   $��36��6�   $��	10,26,0,0q�6�   ���	#FFE1C993$��Book Antiqua)�6�   ��6�   Z� ��5(      �� 5)      $A ;/LandConquest;component/Pictures/epic_long_brown_button.png��6!   5+      �� 5,      -   5        $ ButtonDeleteDialog��5,      $��Delete��61   $
��Left=�6B   $��Center=�6]   $	��Top=�6�   $��80��6�   $��36��6�   $��
180,26,0,0q�6�   ���	#FFE1C993$��Book Antiqua)�6�   ��6�   Z� ��5-      �� 5.      $A ;/LandConquest;component/Pictures/epic_long_brown_button.png��6!   50      �� 51      -   5        $ ButtonRefreshDialog��51      $��Refresh��62   $
��Left=�6D   $��Center=�6_   $	��Top=�6�   $��72��6�   $��36��6�   $��
103,26,0,0q�6�   ���	#FFE1C993$��Book Antiqua)�6�   ��6�   Z� ��52      �� 53      $A ;/LandConquest;component/Pictures/epic_long_brown_button.png��6!   55      ��56      �� 57      $# /Pictures/background_pale.jpg��6    j� Stretch$ UniformToFill=�6I   59      5:      5;      