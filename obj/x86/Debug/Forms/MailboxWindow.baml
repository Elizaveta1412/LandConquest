   M S B A M L   `   `   `  ����G  CLandConquest, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:LandConquest.FormsLandConquest.Forms  5   	   &     LandConquest.Forms.MailboxWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:LandConquest.Forms     5   	   V RMaterialDesignThemes.Wpf, Version=3.1.3.1513, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � WindowStyle$
  None=�5	   	    � 
ResizeMode$ NoResize=�6    � WindowStartupLocation$ CenterOwner=�5
   	   $��414.8��5   	   $��543.2��6    � ShowInTaskbar .  ��6&   Z� .��5      �� ���	#FF392018$��3q�6%   $
��Auto��69   $
��Auto��6G   ._�5   
   � .+�5      �� -   5         ��Name$ buttonSendMessage��5      $
��Send��60   $��Center=�6?   $	��Top=�6b   $��36��6z   $��	400,5,0,0q�6�   ���	#FFE1C993$
��Left=�6�   $	��113��6  $��Book Antiqua)�6  $��14(�6)  ��6�   Z� ��5      �� 5       �� ImageSource$A ;/LandConquest;component/Pictures/epic_long_brown_button.png��6!   5      �� 5      -   5        $ buttonClose��5      $
��Left=�6*   $��517,0,-0.2,0q�6E   $	��Top=�6[   $��20��6�    J� RenderTransformOrigin$ 0.5,0.5&�6�   $��20��6�   ��6s   Z� ��6�   Z� ��5      �� 5      $6 0/LandConquest;component/Pictures/buttonCross.jpg��6!   5      �� 5      -   5         ��Name$ TextBoxMessage��5      .  (MaterialDesignThemes.Wpf.TextFieldAssist   DecorationVisibility$ Hidden=�6.   )  #MaterialDesignThemes.Wpf.HintAssist	   Hint$$	 Your message (500 symbols max)��6l   
   UnderlineBrush

 ����  �� 	MaxLength$	 500��6�      
IsFloating .  $��5,0,0,0q�6%  $��18(�67  
�������$	��356��6X  $��	10,43,0,0q�6e   �� AcceptsReturn . " �� VerticalScrollBarVisibility$
 Auto=�6�   �� TextWrapping$
 Wrap=�6�  $	��Top=�6�  $
��Left=�6�  $	��503��6�  �� 5      $��Recipient name:��6   $��20(�6.   $��Trebuchet MS)�6<   $��SemiBold"�6V   $
��Left=�6l   $��10,4,0,0q�6�   $	��Top=�6�   $	��180��6�   �� 5!      -   5        $ TextBoxReceiver��5!      $ 16��6/   $ Hidden=�6>   $��1q�6{   

 ���� $��16(�6�   $
��Left=�6�   $��36��6�   $
 Wrap=�6   $	��Top=�6  $	��222��6-  
�������
���   �$	  Player name��5"   h    .  $��	173,5,0,0q�6�   ���	#FF391D18 �� 
CaretBrush 6%   Z�  �� SelectionBrush 6N   Z� 6�   ��5$      �� 5%      $# /Pictures/background_pale.jpg��6    j� Stretch$ UniformToFill=�6I   5'      5(      5)      