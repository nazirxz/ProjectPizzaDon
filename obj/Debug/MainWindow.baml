   M S B A M L   `   `   `  ����J  FProjectDonPizza, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:Multi_LoginMulti_Login  5   	       Multi_Login.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   V RMaterialDesignThemes.Wpf, Version=3.1.0.1244, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   %localclr-namespace:Multi_Login  5   	     � Title$  
MainWindow��5	   	   $	��450��6   $	��800��6)    � WindowStartupLocation$ CenterScreen=�65    � WindowStyle$
 None=�6Z    � 
ResizeMode$ NoResize=�6m   .��5
      � ��5   
   �� 5       �� 
StartPoint$ 0.1,1&�6"    �� EndPoint$ 0.9,1&�65   .��5      �  � Color$ #c42400��6    � Offset$ 1Q�6/   � 5      $ 	#FFFE8704��6   $ 0Q�61   5      .+�5   
   �� $	��390��6   $	��Top=�6    �� CornerRadius$ 	0 0 180 0��66   ���#100E175      �� 5   
   	 �� Orientation$	 
Horizontal=�6   .+�5      �� $	��350��6   .+�5      �� $��Images/donpizza.png��6   $	��300��65   $	��253��6A   $	��Top=�6N   $��30,30,20,30q�6f   $
��Fill=�6{   5      �� 5      $	��350��6   .+�5      �� $��20 40q�6   $	��336��6,   .+�5      �� $��	Pizza Don��6    
�������
 �� TextAlignment$
 Center=�6E   $��36(�6\   $��Adobe Garamond Pro Bold)�6j   6�   �� 5      $��Login��6    $��20q�6-   
�������$
 Center=�6L   $��30(�6c   $��Adobe Garamond Pro Bold)�6q   �� 5      $	 
Horizontal=�6!   $��10q�6:   .+�5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$
 User=�62   $��25��6>   $��25��6I   
�������6U   �� 5      -   5         ��Name$ txtUsername��5   "   $
��10 0q�67   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Masukkan Username��6E   
�������$	��250��6�   
������� �� 
CaretBrush �	#FFD94448 �� SelectionBrush �	#FFD944486�   5      �� 5      $	 
Horizontal=�6!   $��10q�6:   .+�5         $
 Lock=�62   $��25��6>   $��25��6I   
�������6U   G� 5!      -   5         G�Name$ txtPassword��5!   &   $
��10 0q�6;   $ ********��6I   
�������$	��250��6�   
������� G� 
CaretBrush �	#FFD94448 G� SelectionBrush �	#FFD944486�   5"      �� 5#      $��center=�6!   $��10q�6>   .+�5$      �� 
�������Belum Mempunyai akun?5&      �� 5'      -   5         ��Name$ btnreg��5)   W   $��86��5'   !   $��29��6,      MaterialDesignRaisedButton#��[  68   +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 10��5(      $��2q�6H   ���	#FFD94448 � ToolTip$ Login��5)   G   $��Register��6y   ��5(   \   Z� ��5)      Z� 5*      5+      �� 5,      $��10q�6!   $��Center=�6-   .+�5-      �� -   5        $ btnLogin��5/   R   $	��100��5-   !   $��40��6-   #��[  69   $ 10��5.      $��2q�6H   ���#D94448���#D94448
�������$ Login��5/   B   $��Login��6{   50      51      53      54      �� 55      $	��100��6   .+�56      �� -   5        $ btnExit��57   "   $��10 20q�56       & "MaterialDesignFloatingActionButton#��[ 6(   $ Close��57      ��56   d   Z� .��58        $ Close=�6.   
�������$��30��6N   $��30��6Y   59      5:      5;      5<      5=      