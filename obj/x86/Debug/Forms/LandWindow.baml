   M S B A M L   `   `   `  ����G  CLandConquest, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:LandConquest.FormsLandConquest.Forms  5   	   #    LandConquest.Forms.LandWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:LandConquest.Forms     5   	     � 
ResizeMode$  NoResize=�5       � WindowStyle$
 None=�60    � Title$ 
LandWindow��5   	   $	��450��6   $	��800��6)   .��5	      �� ���	#FF392018$��3q�6%   $
��Auto��69   $
��Auto��6G   ._�5
   
   � .+�5      �� -   5         ��Name$ 
buttonExit��5      $��Center=�6)   $��Center=�6N   $��	0,1,1.6,0q�6�    J� RenderTransformOrigin$ 
0.541,0.51&�6�   $��Right=�6�   $��20��6  $��20��6  $	��Top=�6&  $��1��6>  ��6�   Z� ��6�   Z� ��5      �� 5       �� ImageSource$6 0/LandConquest;component/Pictures/buttonCross.jpg��6!   5      �� 5      -   5        $ buttonCastleManagement��5      $��Castle management��65   $��24(�6Q   $��Center=�6_   $
��Left=�6�   $��66��6�   $��
23,248,0,0q�6�   $	��Top=�6�   $	��260��6�   ���	#FFDFC58E$��Book Antiqua)�6  ��6�   Z� ��5      �� 5      $A ;/LandConquest;component/Pictures/epic_long_brown_button.png��6!   5      �� 5      $
��Left=�6   $��29��63   $��59,7,0,0q�6?   ���#311818$��1��6b   $	��Top=�6v   $	��177��6�   �� 5      -   5         ��Name$ landNamelbl��5      $��24(�6)   ���#76143c$
��Bold"�6L   $��/Fonts/#Harrington)�6^   $��	Land name��6~   $
��Left=�6�   $��66,1,0,0q�6�   $	��Top=�6�   $	��172��6�   �� 5      $
��Left=�6   $2��,/Pictures/Experimental/cityForLandWindow.jpg��6/   $	��302��6e   $��
367,26,0,0q�6r   $	��Top=�6�   $	��397��6�   �� 5      $
��Left=�6   $��79��63   $��	22,55,0,0q�6?   ���#F7CAA6���#311818$��2��6r   $	��Top=�6�   $��79��6�   �� 5      $
��Left=�6   $��75��6/   $��	23,57,0,0q�6;   $	��Top=�6N   $��75��6f   $%��/Pictures/LandWindow/castle.png��6q   �� 5      ���#F7CAA6$
��Left=�6'   $��25��6B   $��	99,55,0,0q�6N   ���#311818$��2��6r   $	��Top=�6�   $��44��6�   �� 5      $	��lvl��6   $��/Fonts/#Harrington)�6"   $
��Left=�6B   $��
100,56,0,0q�6]   $	��Top=�6q   �� 5       ���#F7CAA6$
��Left=�6'   $��25��6B   $��	99,77,0,0q�6N   ���#311818$��2��6r   $	��Top=�6�   $��44��6�   �� 5!      $��harris��6   $��/Fonts/#Harrington)�6%   $
��Left=�6E   $��
100,77,0,0q�6`   $	��Top=�6t   �� 5"      ���#F7CAA6$
��Left=�6'   $��25��6B   $��
141,55,0,0q�6N   ���#311818$��2��6s   $	��Top=�6�   $��44��6�   �� 5#      ���#F7CAA6$
��Left=�6'   $��25��6B   $��
141,77,0,0q�6N   ���#311818$��2��6s   $	��Top=�6�   $��44��6�   �� 5$      -   5        $ castleLvlLBL��5$      $��0��6*   $��/Fonts/#Harrington)�66   $
��Left=�6V   $��
141,56,0,0q�6q   $	��Top=�6�   �� 5%      -   5        $ harrisonCountLBL��5%      $��0��6.   $��/Fonts/#Harrington)�6:   $
��Left=�6Z   $��
141,77,0,0q�6u   $	��Top=�6�   �� 5&      -   5        $ harrisonBtn��5&      ���	#FFDFC58E$��Manage��6A   $��/Fonts/#Harrington)�6R   $
��Left=�6r   $��35��6�   $��98.7,100,0,0q�6�   $	��Top=�6�   $
��86.8��6�   ��5'      �� 5(      $A ;/LandConquest;component/Pictures/epic_long_brown_button.png��6!   5*      �� 5+      -   5        $ buttonLandResources��5+      $��Land resources��62   $��24(�6K   $��Center=�6Y   $
��Left=�6{   $��66��6�   $��
22,334,0,0q�6�   $	��Top=�6�   $	��260��6�   ���	#FFDFC58E$��Book Antiqua)�6  ��6�   Z� ��5,      �� 5-      $A ;/LandConquest;component/Pictures/epic_long_brown_button.png��6!   5/      ��51      �� 52      $# /Pictures/background_pale.jpg��6    j� Stretch$ UniformToFill=�6I   54      55      56      