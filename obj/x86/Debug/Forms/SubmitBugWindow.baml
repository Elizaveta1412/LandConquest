   M S B A M L   `   `   `  ����G  CLandConquest, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:LandConquest.FormsLandConquest.Forms  5   	   (    "LandConquest.Forms.SubmitBugWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:LandConquest.Forms     5   	   V RMaterialDesignThemes.Wpf, Version=3.1.3.1513, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � WindowStyle$
  None=�5	   	    � 
ResizeMode$ NoResize=�6    � WindowStartupLocation$ CenterOwner=�5
   	   $	��450��5   	   $	��800��6    � ShowInTaskbar .  ��6"   Z� .��5      �� ���	#FF392018$��3q�6%   $
��Auto��69   $
��Auto��6G   ._�5   
   � .+�5      �� -   5         ��Name$ buttonSubmitBug��5      $
��Send��6.   $��Center=�6=   $	��Top=�6`   $��36��6x   $��0,404,3.2,0q�6�   ���	#FFE1C993$��Right=�6�   $��73��6  $��Book Antiqua)�6  ��6�   Z� ��5      �� 5       �� ImageSource$A ;/LandConquest;component/Pictures/epic_long_brown_button.png��6!   5      �� 5      -   5        $ buttonClose��5      $��Right=�6*   $��	0,0,0.2,0q�6F   $	��Top=�6Y   $��20��6�    J� RenderTransformOrigin$ 0.5,0.5&�6�   $��20��6�   ��6q   Z� ��6�   Z� ��5      �� 5      $6 0/LandConquest;component/Pictures/buttonCross.jpg��6!   5      �� 5      -   5         ��Name$ textBoxBugReport��5      .  (MaterialDesignThemes.Wpf.TextFieldAssist   DecorationVisibility$ Hidden=�60   )  #MaterialDesignThemes.Wpf.HintAssist	   Hint$9	 3Describe situation in a few words (500 symbols max)��6m   
   UnderlineBrush

 ����  �� 	MaxLength$	 500��6�      
IsFloating .  $��5,0,0,0q�6;  $��18(�6M  
�������$	��356��6n  $��10,43,9.6,0q�6{   �� AcceptsReturn . " �� VerticalScrollBarVisibility$
 Auto=�6�   �� TextWrapping$
 Wrap=�6�  $	��Top=�6�  �� 5      $��
Your name:��6   $��20(�6)   $��Trebuchet MS)�67   $��SemiBold"�6Q   $
��Left=�6g   $��10,4,0,0q�6�   $	��Top=�6�   �� 5      -   5         ��Name$ labelPlayerName��5      $
��Name��6-   $��20(�6<   $��Bookman Old Style)�6J   $��132,4,475.6,405.2q�6i   $
��Bold"�6�   ��5!      �� 5"      $# /Pictures/background_pale.jpg��6    j� Stretch$ UniformToFill=�6I   5$      5%      5&      