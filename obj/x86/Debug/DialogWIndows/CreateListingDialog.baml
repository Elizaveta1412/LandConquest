   M S B A M L   `   `   `  ����G  CLandConquest, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:LandConquest.DialogWIndowsLandConquest.DialogWIndows  5   	   4    .LandConquest.DialogWIndows.CreateListingDialog   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   :local(clr-namespace:LandConquest.DialogWIndows     5   	   V RMaterialDesignThemes.Wpf, Version=3.1.3.1513, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   -   5          � WindowStyle$
  None=�5	   	    � 
ResizeMode$ NoResize=�6    � Title$ MarketWindow��5
   	   $	��200��6   $	��510��6+    � ShowInTaskbar .  .��5      �� ���	#FF392018$��3q�6%   $
��Auto��69   $
��Auto��6G   ._�5   
   � ��5      �� 5       �� ImageSource$# /Pictures/background_pale.jpg��6    j� Stretch$ UniformToFill=�6I   .+�5      �� -   5         ��Name$ 
woodButton��5      $
��Left=�6(   $��31��6C   $��	16,15,0,0q�6O   $	��Top=�6b   $��33��6z   $/��)/LandConquest;component/Pictures/wood.png��6�    � Cursor$
 Hand��6�   6�   �� 5      -   5        $ stoneButton��5      $
��Left=�6)   $��27��6D   $��	78,19,0,0q�6P   $	��Top=�6c   $��48��6{   $1��+/LandConquest;component/Pictures/stones.png��6�   $
 Hand��6�   6�   �� 5      -   5        $ 
foodButton��5      $
��Left=�6(   $��31��6C   $��
141,15,0,0q�6O   $	��Top=�6c   $��39��6{   $/��)/LandConquest;component/Pictures/food.png��6�    J� RenderTransformOrigin$ -1.55,0.548&�6�   $
 Hand��6�   6�   �� 5      -   5        $ copperButton��5      $
��Left=�6*   $��42��6E   $��	78,68,0,0q�6Q   $	��Top=�6d   $��48��6|   $1��+/LandConquest;component/Pictures/copper.png��6�   $
 Hand��6�   6�   �� 5      -   5        $ 
gemsButton��5      $
��Left=�6(   $��26��6C   $��
141,74,0,0q�6O   $	��Top=�6c   $��37��6{   $/��)/LandConquest;component/Pictures/gems.png��6�   $ -1.55,0.548&�6�   $
 Hand��6�   6�   �� 5      -   5        $ metalButton��5      $
��Left=�6)   $��31��6D   $��
200,15,0,0q�6P   $	��Top=�6d   $��33��6|   $/��)/LandConquest;component/Pictures/iron.png��6�   $ -1.55,0.548&�6�   	 J� OpacityMask
	 �   �$
 Hand��6�   6   �� 5      -   5        $ leatherButton��5      $
��Left=�6+   $��27��6F   $��
200,74,0,0q�6R   $	��Top=�6f   $��32��6~   $2��,/LandConquest;component/Pictures/leather.png��6�   $ -1.55,0.548&�6�   $
 Hand��6�   6�   �� 5      -	   5        
 ��Name$
 labelWoodAmount��5      $��0��6-   ���	#FF94735A$��16(�6P   $
��Bold"�6^   $
��Left=�6q   $��	16,46,0,0q�6�   $	��Top=�6�   $��57��6�   $��27��6�   �� 5      -
   5        $
 labelStoneAmount��5      $��0��6.   ���#696969$��16(�6O   $
��Bold"�6]   $
��Left=�6p   $��	78,46,0,0q�6�   $	��Top=�6�   $��58��6�   $��27��6�   �� 5      -   5        $
 labelFoodAmount��5      $��0��6-   
���**��$��16(�6L   $
��Bold"�6Z   $
��Left=�6m   $��
141,46,0,0q�6�   $	��Top=�6�   $��54��6�   $��27��6�   �� 5      -   5        $
 labelCopperAmount��5      $��0��6/   ���	#FF7B5D42$��16(�6R   $
��Bold"�6`   $
��Left=�6s   $��	78,99,0,0q�6�   $	��Top=�6�   $��58��6�   $��27��6�   �� 5      -   5        $
 labelGemsAmount��5      $��0��6-   ���	#FF6EA8A3$��16(�6P   $
��Bold"�6^   $
��Left=�6q   $��
141,99,0,0q�6�   $	��Top=�6�   $��54��6�   $��27��6�   ��6�   Z� �� 5       -   5        $
 labelIronAmount��5       $��0��6-   
�����p�$��16(�6P   $
��Bold"�6^   $
��Left=�6q   $��
200,46,0,0q�6�   $	��Top=�6�   $��58��6�   $��27��6�   ��6�   Z� �� 5!      -   5        $
 labelLeatherAmount��5!      $��0��60   ���	#FF914C2B$��16(�6S   $
��Bold"�6a   $
��Left=�6t   $��
200,99,0,0q�6�   $	��Top=�6�   $��58��6�   $��27��6�   �� 5"      $��Choose resource��6   $��24(�6.   $��Trebuchet MS)�6<   $��SemiBold"�6V   $
��Left=�6l   $��	258,8,0,0q�6�   $	��Top=�6�   ���	#FF573916$	��246��6�   ��6�   Z� 6�   �� 5$      -   5         ��Name$ buttonClose��5$      $��	484,0,0,0q�6*   $	��Top=�6=   $��20��6U   $
��Left=�6�   $��20��6�   ��6a   Z� ��6w   Z� ��5%      �� 5&      $6 0/LandConquest;component/Pictures/buttonCross.jpg��6!   $ Uniform=�6`   5(      �� 5*      -   5         ��Name$ textBoxAmount��5*      .  (MaterialDesignThemes.Wpf.TextFieldAssist   DecorationVisibility$ Hidden=�6-   $��1q�6j      UnderlineBrush
 ���� $
��Left=�6�   $��23��6�   $��263,160,0,0q�6�    �� TextWrapping$
 Wrap=�6�   $��0��6
  $	��Top=�6  $	��161��6+  ���	#7F966B52���	#FF391D18 �� 
CaretBrush 6f  Z�  �� SelectionBrush 6|  Z� 6�  �� 5+      -   5        $
 labelSetPrice��5+      $��Set price (each)��6+   $��24(�6F   $��Trebuchet MS)�6T   $��SemiBold"�6n   $
��Left=�6�   $��
258,51,0,0q�6�   $	��Top=�6�   ���	#FF573916$	��246��6�   ��6�   Z� 6�   �� 5,      -   5        $
 labelSetAmount��5,      $��
Set amount��6,   $��24(�6A   $��Trebuchet MS)�6O   $��SemiBold"�6i   $
��Left=�6   $��258,122,0,0q�6�   $	��Top=�6�   ���	#FF573916$ 0.307,-1.365&�6�   $	��246��6  ��6�   Z� 6  �� 5-      -   5        $ buttonPlace��5-      $��Place��6*   $
��Left=�6:   $��
55,148,0,0q�6U   $	��Top=�6i   $	��151��6�   ���	#FFE8CD9C$��35��6�   $��Book Antiqua)�6�   ��6�   Z� ��5.      �� 5/      $A ;/LandConquest;component/Pictures/epic_long_brown_button.png��6!   51      �� 52      -   5        $ textBoxPrice��52      $ Hidden=�6,   $��1q�6i   
 ���� $
��Left=�6�   $��23��6�   $��
263,94,0,0q�6�   $
 Wrap=�6�   $��0��6  $	��Top=�6  $	��163��6)  ���	#7F966B52���	#FF391D18 6d  Z�  6z  Z� 6�  54      55      56      