   M S B A M L   `   `   `  ����J  FProjectDonPizza, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:Multi_LoginMulti_Login  5   	       Multi_Login.Register   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   V RMaterialDesignThemes.Wpf, Version=3.1.0.1244, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   %localclr-namespace:Multi_Login  5   	     � Title$  Register��5	   	   $	��450��6   $	��800��6'    � WindowStartupLocation$ CenterScreen=�63    � WindowStyle$
 None=�6X    � 
ResizeMode$ NoResize=�6k   .��5
      � ��5   
   �� 5       �� 
StartPoint$ 0.1,0&�6"    �� EndPoint$ 0.9,1&�65   .��5      �  � Color$ #c42400��6    � Offset$ 1Q�6-   � 5      $ 	#FFFE8704��6   $ 0Q�61   5      .+�5   
   �� $	��390��6   $	��Top=�6    �� CornerRadius$ 	0 0 180 0��66   ���#100E175      �� 5   
   	 �� Orientation$	 
Horizontal=�6   .+�5      �� $	��350��6   .+�5      �� $��Images/donpizza.png��6   $	��300��65   $	��253��6A   $	��Top=�6N   $��30,30,20,30q�6f   $
��Fill=�6{   5      �� 5      $	��350��6   .+�5      �� $��20 40q�6   $	��349��6,   .+�5      �� $��	Pizza Don��6    
�������
 �� TextAlignment$
 Center=�6E   $��25(�6\   $��Adobe Garamond Pro Bold)�6j   6�   �� 5      $��Register��6    $��0q�60   
�������$
 Center=�6N   $��25(�6e   $��Adobe Garamond Pro Bold)�6s   6�   �� 5      $	 
Horizontal=�6!   $��5q�6:   .+�5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ AssignmentInd=�62   $��25��6G   $��25��6R   
�������6^   �� 5      -   5         ��Name$ txtNama��5   "   $	��5 0q�63   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Masukkan Nama Lengkap��6@   
�������$	��250��6�   
������� �� 
CaretBrush �	#FFD94448 �� SelectionBrush �	#FFD944486�   5      �� 5      $	 
Horizontal=�6!   $��5q�6:   .+�5         $
 User=�62   $��25��6>   $��25��6I   
�������6U   �� 5!      -   5        $ txtUsername��5!   "   $	��5 0q�67   $ Masukkan Username��6D   
�������$	��250��6�   
������� �	#FFD94448 �	#FFD944486�   5"      �� 5#      $	 
Horizontal=�6!   $��5q�6:   .+�5$        $
 Lock=�62   $��25��6>   $��25��6I   
�������6U   G� 5%      -   5         G�Name$ txtPassword��5%   &   $	��5 0q�6;   $ ********��6H   
�������$	��250��6�   
������� G� 
CaretBrush �	#FFD94448 G� SelectionBrush �	#FFD944486�   5&      �� 5'      $	 
Horizontal=�6!   $��5q�6:   .+�5(        $
 Home=�62   $��25��6>   $��25��6I   
�������6U   �� 5)      -   5        $ 	txtAlamat��5)   "   $	��5 0q�65   $ Masukkan Alamat��6B   
�������$	��250��6�   
������� �	#FFD94448 �	#FFD944486�   5*      �� 5+      $	 
Horizontal=�6!   $��5q�6:   .+�5,        $ Phone=�62   $��25��6?   $��25��6J   
�������6V   �� 5-      -   5        $ txtNohp��5-   "   $	��5 0q�63   $ Masukkan Nomor Hp��6@   
�������$	��250��6�   
������� �	#FFD94448 �	#FFD944486�   5.      �� 5/      $��5q�6!   $��center=�6,   .+�50      �� 
�������Sudah Mempunyai Akun?52      �� 53      -   5         ��Name$ btnLog��55   W   $��86��53   !   $��29��6,      MaterialDesignRaisedButton#��[  68   +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 10��54      $��2q�6H   ���	#FFD94448 � ToolTip$ Login��55   G   $��Login��6y   ��54   \   Z� ��55      Z� 56      57      �� 58      $��10q�6!   $��Center=�6-   .+�59      �� -   5        $ btnLogin��5;   R   $	��100��59   !   $��40��6-   #��[  69   $ 10��5:      $��2q�6H   ���#D94448���#D94448
�������$ Login��5;   B   $��Register��6~   5<      5=      5>      �� 5?      $	��100��6   .+�5@      �� -   5        $ btnExit��5A   "   $��10 20q�5@       & "MaterialDesignFloatingActionButton#��[ 6(   $ Close��5A      ��5@   d   Z� .��5B        $ Close=�6.   
�������$��30��6N   $��30��6Y   5C      5D      5E      5F      5G      