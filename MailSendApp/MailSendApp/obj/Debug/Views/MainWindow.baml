   M S B A M L   `   `   `  ����T  PMahApps.Metro, Version=2.0.0.0, Culture=neutral, PublicKeyToken=51482d6f650b2b3fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls  5   	    MailSendApp"   MailSendApp.Views.MainWindow   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   NControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   Y UPrism.Unity.Wpf, Version=8.0.0.1909, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59S OPrism.Wpf, Version=8.0.0.1909, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59&prismhttp://prismlibrary.com/   5   	   !  Prism.Mvvm.ViewModelLocator    AutoWireViewModel$
  TrueX�5   	   $	��350��5   !   $	��525��6.    � Title 6	   �� *Title+.��5      � 
����  � � ColumnDefinitions 5	   
   �� 5
      $��30 �6   �� 5      $��* �6   �� 5      $��30 �6    � RowDefinitions 5   
   �� 5      $��30 �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��40 �6   �� 5      $��30 �6   .+�5   
   �� $��1��6   
�������$��メールボディ��67   $��Bottom=�5      �� 5   
   $��1��6   $��1��6    �� AcceptsReturn . $��20 20 20 20q�5   '   ��5      �� *
MailBody+ �� Mode$ TwoWay=�� 5   
   $��2��6   $��1��6    5      �� 5      $��* �6#   �� 5      $��* �6#    5       �� 5!      $��* �6    �� 5"      $��* �6    .+�5$      �� $��0��6   $��0��6(   $��Bottom=�5%      $��宛先��5&      
�������6"   �� 5'      $��1��6   $��0��6(   $��Bottom=�5(      $��	送信元��5)      
�������6#   �� 5*      $��0��6   $��1��6&   $��10 10 10 10q�63   ��5+      �� *MailTo+$ TwoWay=��� 5,      $��1��6   $��1��6&   $��10 10 10 10q�63   ��5-      �� *
MailFrom+$ TwoWay=�5/      �� 50   
   $��3��6   $��1��6   
���  ��$��送信��51      
�������$��70��52      $��35��6   $��Center=�53      $��Center=�54      ��55      �� *SendCommand+56      57      