VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00C0C000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "barcode hunt"
   ClientHeight    =   12555
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   15390
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   12555
   ScaleWidth      =   15390
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer dog_hide 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   4080
      Top             =   11040
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   120
      TabIndex        =   0
      Top             =   12120
      Width           =   1455
   End
   Begin VB.Timer target_mover 
      Interval        =   1
      Left            =   7320
      Top             =   2160
   End
   Begin VB.Timer random_shooter 
      Interval        =   500
      Left            =   7560
      Top             =   1560
   End
   Begin VB.Image dog 
      Height          =   2175
      Left            =   3360
      Picture         =   "Form1.frx":0000
      Stretch         =   -1  'True
      Top             =   10440
      Visible         =   0   'False
      Width           =   1635
   End
   Begin VB.Image target 
      Height          =   525
      Index           =   2
      Left            =   2280
      Picture         =   "Form1.frx":0624
      Top             =   1920
      Visible         =   0   'False
      Width           =   1875
   End
   Begin VB.Image target 
      Height          =   510
      Index           =   1
      Left            =   2280
      Picture         =   "Form1.frx":10DD
      Top             =   1320
      Visible         =   0   'False
      Width           =   1890
   End
   Begin VB.Image target 
      Height          =   510
      Index           =   0
      Left            =   2280
      Picture         =   "Form1.frx":1986
      Top             =   720
      Visible         =   0   'False
      Width           =   1875
   End
   Begin VB.Image Image1 
      Height          =   3075
      Left            =   1080
      Picture         =   "Form1.frx":2207
      Top             =   9480
      Width           =   1155
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   725
      Left            =   5280
      Picture         =   "Form1.frx":379B
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   724
      Left            =   4800
      Picture         =   "Form1.frx":3CFC
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   723
      Left            =   4320
      Picture         =   "Form1.frx":425D
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   722
      Left            =   3840
      Picture         =   "Form1.frx":47BE
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   721
      Left            =   3360
      Picture         =   "Form1.frx":4D1F
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   720
      Left            =   2880
      Picture         =   "Form1.frx":5280
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   719
      Left            =   8160
      Picture         =   "Form1.frx":57E1
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   718
      Left            =   7680
      Picture         =   "Form1.frx":5D42
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   717
      Left            =   7200
      Picture         =   "Form1.frx":62A3
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   716
      Left            =   6720
      Picture         =   "Form1.frx":6804
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   715
      Left            =   6240
      Picture         =   "Form1.frx":6D65
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   714
      Left            =   5760
      Picture         =   "Form1.frx":72C6
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   713
      Left            =   11040
      Picture         =   "Form1.frx":7827
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   712
      Left            =   10560
      Picture         =   "Form1.frx":7D88
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   711
      Left            =   10080
      Picture         =   "Form1.frx":82E9
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   710
      Left            =   9600
      Picture         =   "Form1.frx":884A
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   709
      Left            =   9120
      Picture         =   "Form1.frx":8DAB
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   708
      Left            =   8640
      Picture         =   "Form1.frx":930C
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   707
      Left            =   15000
      Picture         =   "Form1.frx":986D
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   706
      Left            =   14520
      Picture         =   "Form1.frx":9DCE
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   705
      Left            =   14040
      Picture         =   "Form1.frx":A32F
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   704
      Left            =   12480
      Picture         =   "Form1.frx":A890
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   703
      Left            =   12000
      Picture         =   "Form1.frx":ADF1
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   702
      Left            =   11520
      Picture         =   "Form1.frx":B352
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   701
      Left            =   13560
      Picture         =   "Form1.frx":B8B3
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   700
      Left            =   13080
      Picture         =   "Form1.frx":BE14
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   699
      Left            =   12600
      Picture         =   "Form1.frx":C375
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   698
      Left            =   12120
      Picture         =   "Form1.frx":C8D6
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   697
      Left            =   11640
      Picture         =   "Form1.frx":CE37
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   696
      Left            =   11160
      Picture         =   "Form1.frx":D398
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   695
      Left            =   13560
      Picture         =   "Form1.frx":D8F9
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   694
      Left            =   13080
      Picture         =   "Form1.frx":DE5A
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   693
      Left            =   12600
      Picture         =   "Form1.frx":E3BB
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   692
      Left            =   12120
      Picture         =   "Form1.frx":E91C
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   691
      Left            =   11640
      Picture         =   "Form1.frx":EE7D
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   690
      Left            =   11160
      Picture         =   "Form1.frx":F3DE
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   689
      Left            =   13560
      Picture         =   "Form1.frx":F93F
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   688
      Left            =   13080
      Picture         =   "Form1.frx":FEA0
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   687
      Left            =   12600
      Picture         =   "Form1.frx":10401
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   686
      Left            =   12120
      Picture         =   "Form1.frx":10962
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   685
      Left            =   11640
      Picture         =   "Form1.frx":10EC3
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   684
      Left            =   11160
      Picture         =   "Form1.frx":11424
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   683
      Left            =   13560
      Picture         =   "Form1.frx":11985
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   682
      Left            =   13080
      Picture         =   "Form1.frx":11EE6
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   681
      Left            =   12600
      Picture         =   "Form1.frx":12447
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   680
      Left            =   12120
      Picture         =   "Form1.frx":129A8
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   679
      Left            =   11640
      Picture         =   "Form1.frx":12F09
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   678
      Left            =   11160
      Picture         =   "Form1.frx":1346A
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   677
      Left            =   13560
      Picture         =   "Form1.frx":139CB
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   676
      Left            =   13080
      Picture         =   "Form1.frx":13F2C
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   675
      Left            =   12600
      Picture         =   "Form1.frx":1448D
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   674
      Left            =   12120
      Picture         =   "Form1.frx":149EE
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   673
      Left            =   11640
      Picture         =   "Form1.frx":14F4F
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   672
      Left            =   11160
      Picture         =   "Form1.frx":154B0
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   671
      Left            =   13560
      Picture         =   "Form1.frx":15A11
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   670
      Left            =   13080
      Picture         =   "Form1.frx":15F72
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   669
      Left            =   12600
      Picture         =   "Form1.frx":164D3
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   668
      Left            =   12120
      Picture         =   "Form1.frx":16A34
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   667
      Left            =   11640
      Picture         =   "Form1.frx":16F95
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   666
      Left            =   11160
      Picture         =   "Form1.frx":174F6
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   665
      Left            =   13560
      Picture         =   "Form1.frx":17A57
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   664
      Left            =   13080
      Picture         =   "Form1.frx":17FB8
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   663
      Left            =   12600
      Picture         =   "Form1.frx":18519
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   662
      Left            =   12120
      Picture         =   "Form1.frx":18A7A
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   661
      Left            =   11640
      Picture         =   "Form1.frx":18FDB
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   660
      Left            =   11160
      Picture         =   "Form1.frx":1953C
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   659
      Left            =   13560
      Picture         =   "Form1.frx":19A9D
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   658
      Left            =   13080
      Picture         =   "Form1.frx":19FFE
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   657
      Left            =   12600
      Picture         =   "Form1.frx":1A55F
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   656
      Left            =   12120
      Picture         =   "Form1.frx":1AAC0
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   655
      Left            =   11640
      Picture         =   "Form1.frx":1B021
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   654
      Left            =   11160
      Picture         =   "Form1.frx":1B582
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   653
      Left            =   13560
      Picture         =   "Form1.frx":1BAE3
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   652
      Left            =   13080
      Picture         =   "Form1.frx":1C044
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   651
      Left            =   12600
      Picture         =   "Form1.frx":1C5A5
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   650
      Left            =   12120
      Picture         =   "Form1.frx":1CB06
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   649
      Left            =   11640
      Picture         =   "Form1.frx":1D067
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   648
      Left            =   11160
      Picture         =   "Form1.frx":1D5C8
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   647
      Left            =   13560
      Picture         =   "Form1.frx":1DB29
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   646
      Left            =   13080
      Picture         =   "Form1.frx":1E08A
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   645
      Left            =   12600
      Picture         =   "Form1.frx":1E5EB
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   644
      Left            =   12120
      Picture         =   "Form1.frx":1EB4C
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   643
      Left            =   11640
      Picture         =   "Form1.frx":1F0AD
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   642
      Left            =   11160
      Picture         =   "Form1.frx":1F60E
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   641
      Left            =   13560
      Picture         =   "Form1.frx":1FB6F
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   640
      Left            =   13080
      Picture         =   "Form1.frx":200D0
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   639
      Left            =   12600
      Picture         =   "Form1.frx":20631
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   638
      Left            =   12120
      Picture         =   "Form1.frx":20B92
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   637
      Left            =   11640
      Picture         =   "Form1.frx":210F3
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   636
      Left            =   11160
      Picture         =   "Form1.frx":21654
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   635
      Left            =   13560
      Picture         =   "Form1.frx":21BB5
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   634
      Left            =   13080
      Picture         =   "Form1.frx":22116
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   633
      Left            =   12600
      Picture         =   "Form1.frx":22677
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   632
      Left            =   12120
      Picture         =   "Form1.frx":22BD8
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   631
      Left            =   11640
      Picture         =   "Form1.frx":23139
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   630
      Left            =   11160
      Picture         =   "Form1.frx":2369A
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   629
      Left            =   13560
      Picture         =   "Form1.frx":23BFB
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   628
      Left            =   13080
      Picture         =   "Form1.frx":2415C
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   627
      Left            =   12600
      Picture         =   "Form1.frx":246BD
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   626
      Left            =   12120
      Picture         =   "Form1.frx":24C1E
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   625
      Left            =   11640
      Picture         =   "Form1.frx":2517F
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   624
      Left            =   11160
      Picture         =   "Form1.frx":256E0
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   623
      Left            =   13560
      Picture         =   "Form1.frx":25C41
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   622
      Left            =   13080
      Picture         =   "Form1.frx":261A2
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   621
      Left            =   12600
      Picture         =   "Form1.frx":26703
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   620
      Left            =   12120
      Picture         =   "Form1.frx":26C64
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   619
      Left            =   11640
      Picture         =   "Form1.frx":271C5
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   618
      Left            =   11160
      Picture         =   "Form1.frx":27726
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   617
      Left            =   13560
      Picture         =   "Form1.frx":27C87
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   616
      Left            =   13080
      Picture         =   "Form1.frx":281E8
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   615
      Left            =   12600
      Picture         =   "Form1.frx":28749
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   614
      Left            =   12120
      Picture         =   "Form1.frx":28CAA
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   613
      Left            =   11640
      Picture         =   "Form1.frx":2920B
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   612
      Left            =   11160
      Picture         =   "Form1.frx":2976C
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   611
      Left            =   13560
      Picture         =   "Form1.frx":29CCD
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   610
      Left            =   13080
      Picture         =   "Form1.frx":2A22E
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   609
      Left            =   12600
      Picture         =   "Form1.frx":2A78F
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   608
      Left            =   12120
      Picture         =   "Form1.frx":2ACF0
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   607
      Left            =   11640
      Picture         =   "Form1.frx":2B251
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   606
      Left            =   11160
      Picture         =   "Form1.frx":2B7B2
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   605
      Left            =   13560
      Picture         =   "Form1.frx":2BD13
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   604
      Left            =   13080
      Picture         =   "Form1.frx":2C274
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   603
      Left            =   12600
      Picture         =   "Form1.frx":2C7D5
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   602
      Left            =   12120
      Picture         =   "Form1.frx":2CD36
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   601
      Left            =   11640
      Picture         =   "Form1.frx":2D297
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   600
      Left            =   11160
      Picture         =   "Form1.frx":2D7F8
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   599
      Left            =   13560
      Picture         =   "Form1.frx":2DD59
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   598
      Left            =   13080
      Picture         =   "Form1.frx":2E2BA
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   597
      Left            =   12600
      Picture         =   "Form1.frx":2E81B
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   596
      Left            =   12120
      Picture         =   "Form1.frx":2ED7C
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   595
      Left            =   11640
      Picture         =   "Form1.frx":2F2DD
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   594
      Left            =   11160
      Picture         =   "Form1.frx":2F83E
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   593
      Left            =   13560
      Picture         =   "Form1.frx":2FD9F
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   592
      Left            =   13080
      Picture         =   "Form1.frx":30300
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   591
      Left            =   12600
      Picture         =   "Form1.frx":30861
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   590
      Left            =   12120
      Picture         =   "Form1.frx":30DC2
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   589
      Left            =   11640
      Picture         =   "Form1.frx":31323
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   588
      Left            =   11160
      Picture         =   "Form1.frx":31884
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   587
      Left            =   13560
      Picture         =   "Form1.frx":31DE5
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   586
      Left            =   13080
      Picture         =   "Form1.frx":32346
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   585
      Left            =   12600
      Picture         =   "Form1.frx":328A7
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   584
      Left            =   12120
      Picture         =   "Form1.frx":32E08
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   583
      Left            =   11640
      Picture         =   "Form1.frx":33369
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   582
      Left            =   11160
      Picture         =   "Form1.frx":338CA
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   581
      Left            =   13560
      Picture         =   "Form1.frx":33E2B
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   580
      Left            =   13080
      Picture         =   "Form1.frx":3438C
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   579
      Left            =   12600
      Picture         =   "Form1.frx":348ED
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   578
      Left            =   12120
      Picture         =   "Form1.frx":34E4E
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   577
      Left            =   11640
      Picture         =   "Form1.frx":353AF
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   576
      Left            =   11160
      Picture         =   "Form1.frx":35910
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   575
      Left            =   13560
      Picture         =   "Form1.frx":35E71
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   574
      Left            =   13080
      Picture         =   "Form1.frx":363D2
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   573
      Left            =   12600
      Picture         =   "Form1.frx":36933
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   572
      Left            =   12120
      Picture         =   "Form1.frx":36E94
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   571
      Left            =   11640
      Picture         =   "Form1.frx":373F5
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   570
      Left            =   11160
      Picture         =   "Form1.frx":37956
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   569
      Left            =   13560
      Picture         =   "Form1.frx":37EB7
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   568
      Left            =   13080
      Picture         =   "Form1.frx":38418
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   567
      Left            =   12600
      Picture         =   "Form1.frx":38979
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   566
      Left            =   12120
      Picture         =   "Form1.frx":38EDA
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   565
      Left            =   11640
      Picture         =   "Form1.frx":3943B
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   564
      Left            =   11160
      Picture         =   "Form1.frx":3999C
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   563
      Left            =   13560
      Picture         =   "Form1.frx":39EFD
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   562
      Left            =   13080
      Picture         =   "Form1.frx":3A45E
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   561
      Left            =   12600
      Picture         =   "Form1.frx":3A9BF
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   560
      Left            =   12120
      Picture         =   "Form1.frx":3AF20
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   559
      Left            =   11640
      Picture         =   "Form1.frx":3B481
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   558
      Left            =   11160
      Picture         =   "Form1.frx":3B9E2
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   557
      Left            =   13560
      Picture         =   "Form1.frx":3BF43
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   556
      Left            =   13080
      Picture         =   "Form1.frx":3C4A4
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   555
      Left            =   12600
      Picture         =   "Form1.frx":3CA05
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   554
      Left            =   12120
      Picture         =   "Form1.frx":3CF66
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   553
      Left            =   11640
      Picture         =   "Form1.frx":3D4C7
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   552
      Left            =   11160
      Picture         =   "Form1.frx":3DA28
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   551
      Left            =   13560
      Picture         =   "Form1.frx":3DF89
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   550
      Left            =   13080
      Picture         =   "Form1.frx":3E4EA
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   549
      Left            =   12600
      Picture         =   "Form1.frx":3EA4B
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   548
      Left            =   12120
      Picture         =   "Form1.frx":3EFAC
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   547
      Left            =   11640
      Picture         =   "Form1.frx":3F50D
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   546
      Left            =   11160
      Picture         =   "Form1.frx":3FA6E
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   545
      Left            =   13560
      Picture         =   "Form1.frx":3FFCF
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   544
      Left            =   13080
      Picture         =   "Form1.frx":40530
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   543
      Left            =   12600
      Picture         =   "Form1.frx":40A91
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   542
      Left            =   12120
      Picture         =   "Form1.frx":40FF2
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   541
      Left            =   11640
      Picture         =   "Form1.frx":41553
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   540
      Left            =   11160
      Picture         =   "Form1.frx":41AB4
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   539
      Left            =   13560
      Picture         =   "Form1.frx":42015
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   538
      Left            =   13080
      Picture         =   "Form1.frx":42576
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   537
      Left            =   12600
      Picture         =   "Form1.frx":42AD7
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   536
      Left            =   12120
      Picture         =   "Form1.frx":43038
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   535
      Left            =   11640
      Picture         =   "Form1.frx":43599
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   534
      Left            =   11160
      Picture         =   "Form1.frx":43AFA
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   533
      Left            =   13560
      Picture         =   "Form1.frx":4405B
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   532
      Left            =   13080
      Picture         =   "Form1.frx":445BC
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   531
      Left            =   12600
      Picture         =   "Form1.frx":44B1D
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   530
      Left            =   12120
      Picture         =   "Form1.frx":4507E
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   529
      Left            =   11640
      Picture         =   "Form1.frx":455DF
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   528
      Left            =   11160
      Picture         =   "Form1.frx":45B40
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   527
      Left            =   13560
      Picture         =   "Form1.frx":460A1
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   526
      Left            =   13080
      Picture         =   "Form1.frx":46602
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   525
      Left            =   12600
      Picture         =   "Form1.frx":46B63
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   524
      Left            =   12120
      Picture         =   "Form1.frx":470C4
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   523
      Left            =   11640
      Picture         =   "Form1.frx":47625
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   522
      Left            =   11160
      Picture         =   "Form1.frx":47B86
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   521
      Left            =   13560
      Picture         =   "Form1.frx":480E7
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   520
      Left            =   13080
      Picture         =   "Form1.frx":48648
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   519
      Left            =   12600
      Picture         =   "Form1.frx":48BA9
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   518
      Left            =   12120
      Picture         =   "Form1.frx":4910A
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   517
      Left            =   11640
      Picture         =   "Form1.frx":4966B
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   516
      Left            =   11160
      Picture         =   "Form1.frx":49BCC
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   515
      Left            =   13560
      Picture         =   "Form1.frx":4A12D
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   514
      Left            =   13080
      Picture         =   "Form1.frx":4A68E
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   513
      Left            =   12600
      Picture         =   "Form1.frx":4ABEF
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   512
      Left            =   12120
      Picture         =   "Form1.frx":4B150
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   511
      Left            =   11640
      Picture         =   "Form1.frx":4B6B1
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   510
      Left            =   11160
      Picture         =   "Form1.frx":4BC12
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   509
      Left            =   13560
      Picture         =   "Form1.frx":4C173
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   508
      Left            =   13080
      Picture         =   "Form1.frx":4C6D4
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   507
      Left            =   12600
      Picture         =   "Form1.frx":4CC35
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   506
      Left            =   12120
      Picture         =   "Form1.frx":4D196
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   505
      Left            =   11640
      Picture         =   "Form1.frx":4D6F7
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   504
      Left            =   11160
      Picture         =   "Form1.frx":4DC58
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   503
      Left            =   13560
      Picture         =   "Form1.frx":4E1B9
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   502
      Left            =   13080
      Picture         =   "Form1.frx":4E71A
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   501
      Left            =   12600
      Picture         =   "Form1.frx":4EC7B
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   500
      Left            =   12120
      Picture         =   "Form1.frx":4F1DC
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   499
      Left            =   11640
      Picture         =   "Form1.frx":4F73D
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   498
      Left            =   11160
      Picture         =   "Form1.frx":4FC9E
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   497
      Left            =   13560
      Picture         =   "Form1.frx":501FF
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   496
      Left            =   13080
      Picture         =   "Form1.frx":50760
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   495
      Left            =   12600
      Picture         =   "Form1.frx":50CC1
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   494
      Left            =   12120
      Picture         =   "Form1.frx":51222
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   493
      Left            =   11640
      Picture         =   "Form1.frx":51783
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   492
      Left            =   11160
      Picture         =   "Form1.frx":51CE4
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   491
      Left            =   13560
      Picture         =   "Form1.frx":52245
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   490
      Left            =   13080
      Picture         =   "Form1.frx":527A6
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   489
      Left            =   12600
      Picture         =   "Form1.frx":52D07
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   488
      Left            =   12120
      Picture         =   "Form1.frx":53268
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   487
      Left            =   11640
      Picture         =   "Form1.frx":537C9
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   486
      Left            =   11160
      Picture         =   "Form1.frx":53D2A
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   485
      Left            =   13560
      Picture         =   "Form1.frx":5428B
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   484
      Left            =   13080
      Picture         =   "Form1.frx":547EC
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   483
      Left            =   12600
      Picture         =   "Form1.frx":54D4D
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   482
      Left            =   12120
      Picture         =   "Form1.frx":552AE
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   481
      Left            =   11640
      Picture         =   "Form1.frx":5580F
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   480
      Left            =   11160
      Picture         =   "Form1.frx":55D70
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   479
      Left            =   13560
      Picture         =   "Form1.frx":562D1
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   478
      Left            =   13080
      Picture         =   "Form1.frx":56832
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   477
      Left            =   12600
      Picture         =   "Form1.frx":56D93
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   476
      Left            =   12120
      Picture         =   "Form1.frx":572F4
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   475
      Left            =   11640
      Picture         =   "Form1.frx":57855
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   474
      Left            =   11160
      Picture         =   "Form1.frx":57DB6
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   473
      Left            =   13560
      Picture         =   "Form1.frx":58317
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   472
      Left            =   13080
      Picture         =   "Form1.frx":58878
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   471
      Left            =   12600
      Picture         =   "Form1.frx":58DD9
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   470
      Left            =   12120
      Picture         =   "Form1.frx":5933A
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   469
      Left            =   11640
      Picture         =   "Form1.frx":5989B
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   468
      Left            =   11160
      Picture         =   "Form1.frx":59DFC
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   467
      Left            =   13560
      Picture         =   "Form1.frx":5A35D
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   466
      Left            =   13080
      Picture         =   "Form1.frx":5A8BE
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   465
      Left            =   12600
      Picture         =   "Form1.frx":5AE1F
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   464
      Left            =   12120
      Picture         =   "Form1.frx":5B380
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   463
      Left            =   11640
      Picture         =   "Form1.frx":5B8E1
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   462
      Left            =   11160
      Picture         =   "Form1.frx":5BE42
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   461
      Left            =   13560
      Picture         =   "Form1.frx":5C3A3
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   460
      Left            =   13080
      Picture         =   "Form1.frx":5C904
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   459
      Left            =   12600
      Picture         =   "Form1.frx":5CE65
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   458
      Left            =   12120
      Picture         =   "Form1.frx":5D3C6
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   457
      Left            =   11640
      Picture         =   "Form1.frx":5D927
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   456
      Left            =   11160
      Picture         =   "Form1.frx":5DE88
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   455
      Left            =   13560
      Picture         =   "Form1.frx":5E3E9
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   454
      Left            =   13080
      Picture         =   "Form1.frx":5E94A
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   453
      Left            =   12600
      Picture         =   "Form1.frx":5EEAB
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   452
      Left            =   12120
      Picture         =   "Form1.frx":5F40C
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   451
      Left            =   11640
      Picture         =   "Form1.frx":5F96D
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   450
      Left            =   11160
      Picture         =   "Form1.frx":5FECE
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   449
      Left            =   13560
      Picture         =   "Form1.frx":6042F
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   448
      Left            =   13080
      Picture         =   "Form1.frx":60990
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   447
      Left            =   12600
      Picture         =   "Form1.frx":60EF1
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   446
      Left            =   12120
      Picture         =   "Form1.frx":61452
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   445
      Left            =   11640
      Picture         =   "Form1.frx":619B3
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   444
      Left            =   11160
      Picture         =   "Form1.frx":61F14
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   443
      Left            =   13560
      Picture         =   "Form1.frx":62475
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   442
      Left            =   13080
      Picture         =   "Form1.frx":629D6
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   441
      Left            =   12600
      Picture         =   "Form1.frx":62F37
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   440
      Left            =   12120
      Picture         =   "Form1.frx":63498
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   439
      Left            =   11640
      Picture         =   "Form1.frx":639F9
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   438
      Left            =   11160
      Picture         =   "Form1.frx":63F5A
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   437
      Left            =   13560
      Picture         =   "Form1.frx":644BB
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   436
      Left            =   13080
      Picture         =   "Form1.frx":64A1C
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   435
      Left            =   12600
      Picture         =   "Form1.frx":64F7D
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   434
      Left            =   12120
      Picture         =   "Form1.frx":654DE
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   433
      Left            =   11640
      Picture         =   "Form1.frx":65A3F
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   432
      Left            =   11160
      Picture         =   "Form1.frx":65FA0
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   431
      Left            =   13560
      Picture         =   "Form1.frx":66501
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   430
      Left            =   13080
      Picture         =   "Form1.frx":66A62
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   429
      Left            =   12600
      Picture         =   "Form1.frx":66FC3
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   428
      Left            =   12120
      Picture         =   "Form1.frx":67524
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   427
      Left            =   11640
      Picture         =   "Form1.frx":67A85
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   426
      Left            =   11160
      Picture         =   "Form1.frx":67FE6
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   425
      Left            =   13560
      Picture         =   "Form1.frx":68547
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   424
      Left            =   13080
      Picture         =   "Form1.frx":68AA8
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   423
      Left            =   12600
      Picture         =   "Form1.frx":69009
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   422
      Left            =   12120
      Picture         =   "Form1.frx":6956A
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   421
      Left            =   11640
      Picture         =   "Form1.frx":69ACB
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   420
      Left            =   11160
      Picture         =   "Form1.frx":6A02C
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   419
      Left            =   13560
      Picture         =   "Form1.frx":6A58D
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   418
      Left            =   13080
      Picture         =   "Form1.frx":6AAEE
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   417
      Left            =   12600
      Picture         =   "Form1.frx":6B04F
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   416
      Left            =   12120
      Picture         =   "Form1.frx":6B5B0
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   415
      Left            =   11640
      Picture         =   "Form1.frx":6BB11
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   414
      Left            =   11160
      Picture         =   "Form1.frx":6C072
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   413
      Left            =   13560
      Picture         =   "Form1.frx":6C5D3
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   412
      Left            =   13080
      Picture         =   "Form1.frx":6CB34
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   411
      Left            =   12600
      Picture         =   "Form1.frx":6D095
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   410
      Left            =   12120
      Picture         =   "Form1.frx":6D5F6
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   409
      Left            =   11640
      Picture         =   "Form1.frx":6DB57
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   408
      Left            =   11160
      Picture         =   "Form1.frx":6E0B8
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   407
      Left            =   13560
      Picture         =   "Form1.frx":6E619
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   406
      Left            =   13080
      Picture         =   "Form1.frx":6EB7A
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   405
      Left            =   12600
      Picture         =   "Form1.frx":6F0DB
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   404
      Left            =   12120
      Picture         =   "Form1.frx":6F63C
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   403
      Left            =   11640
      Picture         =   "Form1.frx":6FB9D
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   402
      Left            =   11160
      Picture         =   "Form1.frx":700FE
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   401
      Left            =   13560
      Picture         =   "Form1.frx":7065F
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   400
      Left            =   13080
      Picture         =   "Form1.frx":70BC0
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   399
      Left            =   12600
      Picture         =   "Form1.frx":71121
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   398
      Left            =   12120
      Picture         =   "Form1.frx":71682
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   397
      Left            =   11640
      Picture         =   "Form1.frx":71BE3
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   396
      Left            =   11160
      Picture         =   "Form1.frx":72144
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   395
      Left            =   13560
      Picture         =   "Form1.frx":726A5
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   394
      Left            =   13080
      Picture         =   "Form1.frx":72C06
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   393
      Left            =   12600
      Picture         =   "Form1.frx":73167
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   392
      Left            =   12120
      Picture         =   "Form1.frx":736C8
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   391
      Left            =   11640
      Picture         =   "Form1.frx":73C29
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   390
      Left            =   11160
      Picture         =   "Form1.frx":7418A
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   389
      Left            =   13560
      Picture         =   "Form1.frx":746EB
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   388
      Left            =   13080
      Picture         =   "Form1.frx":74C4C
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   387
      Left            =   12600
      Picture         =   "Form1.frx":751AD
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   386
      Left            =   12120
      Picture         =   "Form1.frx":7570E
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   385
      Left            =   11640
      Picture         =   "Form1.frx":75C6F
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   384
      Left            =   11160
      Picture         =   "Form1.frx":761D0
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   383
      Left            =   13560
      Picture         =   "Form1.frx":76731
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   382
      Left            =   13080
      Picture         =   "Form1.frx":76C92
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   381
      Left            =   12600
      Picture         =   "Form1.frx":771F3
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   380
      Left            =   12120
      Picture         =   "Form1.frx":77754
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   379
      Left            =   11640
      Picture         =   "Form1.frx":77CB5
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   378
      Left            =   11160
      Picture         =   "Form1.frx":78216
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   377
      Left            =   13560
      Picture         =   "Form1.frx":78777
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   376
      Left            =   13080
      Picture         =   "Form1.frx":78CD8
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   375
      Left            =   12600
      Picture         =   "Form1.frx":79239
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   374
      Left            =   12120
      Picture         =   "Form1.frx":7979A
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   373
      Left            =   11640
      Picture         =   "Form1.frx":79CFB
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   372
      Left            =   11160
      Picture         =   "Form1.frx":7A25C
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   371
      Left            =   13560
      Picture         =   "Form1.frx":7A7BD
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   370
      Left            =   13080
      Picture         =   "Form1.frx":7AD1E
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   369
      Left            =   12600
      Picture         =   "Form1.frx":7B27F
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   368
      Left            =   12120
      Picture         =   "Form1.frx":7B7E0
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   367
      Left            =   11640
      Picture         =   "Form1.frx":7BD41
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   366
      Left            =   11160
      Picture         =   "Form1.frx":7C2A2
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   365
      Left            =   13560
      Picture         =   "Form1.frx":7C803
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   364
      Left            =   13080
      Picture         =   "Form1.frx":7CD64
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   363
      Left            =   12600
      Picture         =   "Form1.frx":7D2C5
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   362
      Left            =   12120
      Picture         =   "Form1.frx":7D826
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   361
      Left            =   11640
      Picture         =   "Form1.frx":7DD87
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   360
      Left            =   11160
      Picture         =   "Form1.frx":7E2E8
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   359
      Left            =   13560
      Picture         =   "Form1.frx":7E849
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   358
      Left            =   13080
      Picture         =   "Form1.frx":7EDAA
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   357
      Left            =   12600
      Picture         =   "Form1.frx":7F30B
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   356
      Left            =   12120
      Picture         =   "Form1.frx":7F86C
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   355
      Left            =   11640
      Picture         =   "Form1.frx":7FDCD
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   354
      Left            =   11160
      Picture         =   "Form1.frx":8032E
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   353
      Left            =   13560
      Picture         =   "Form1.frx":8088F
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   352
      Left            =   13080
      Picture         =   "Form1.frx":80DF0
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   351
      Left            =   12600
      Picture         =   "Form1.frx":81351
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   350
      Left            =   12120
      Picture         =   "Form1.frx":818B2
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   349
      Left            =   11640
      Picture         =   "Form1.frx":81E13
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   348
      Left            =   11160
      Picture         =   "Form1.frx":82374
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   347
      Left            =   13560
      Picture         =   "Form1.frx":828D5
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   346
      Left            =   13080
      Picture         =   "Form1.frx":82E36
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   345
      Left            =   12600
      Picture         =   "Form1.frx":83397
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   344
      Left            =   12120
      Picture         =   "Form1.frx":838F8
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   343
      Left            =   11640
      Picture         =   "Form1.frx":83E59
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   342
      Left            =   11160
      Picture         =   "Form1.frx":843BA
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   341
      Left            =   13560
      Picture         =   "Form1.frx":8491B
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   340
      Left            =   13080
      Picture         =   "Form1.frx":84E7C
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   339
      Left            =   12600
      Picture         =   "Form1.frx":853DD
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   338
      Left            =   12120
      Picture         =   "Form1.frx":8593E
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   337
      Left            =   11640
      Picture         =   "Form1.frx":85E9F
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   336
      Left            =   11160
      Picture         =   "Form1.frx":86400
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   335
      Left            =   13560
      Picture         =   "Form1.frx":86961
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   334
      Left            =   13080
      Picture         =   "Form1.frx":86EC2
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   333
      Left            =   12600
      Picture         =   "Form1.frx":87423
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   332
      Left            =   12120
      Picture         =   "Form1.frx":87984
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   331
      Left            =   11640
      Picture         =   "Form1.frx":87EE5
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   330
      Left            =   11160
      Picture         =   "Form1.frx":88446
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   329
      Left            =   13560
      Picture         =   "Form1.frx":889A7
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   328
      Left            =   13080
      Picture         =   "Form1.frx":88F08
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   327
      Left            =   12600
      Picture         =   "Form1.frx":89469
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   326
      Left            =   12120
      Picture         =   "Form1.frx":899CA
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   325
      Left            =   11640
      Picture         =   "Form1.frx":89F2B
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   324
      Left            =   11160
      Picture         =   "Form1.frx":8A48C
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   323
      Left            =   13560
      Picture         =   "Form1.frx":8A9ED
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   322
      Left            =   13080
      Picture         =   "Form1.frx":8AF4E
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   321
      Left            =   12600
      Picture         =   "Form1.frx":8B4AF
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   320
      Left            =   12120
      Picture         =   "Form1.frx":8BA10
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   319
      Left            =   11640
      Picture         =   "Form1.frx":8BF71
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   318
      Left            =   11160
      Picture         =   "Form1.frx":8C4D2
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   317
      Left            =   13560
      Picture         =   "Form1.frx":8CA33
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   316
      Left            =   13080
      Picture         =   "Form1.frx":8CF94
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   315
      Left            =   12600
      Picture         =   "Form1.frx":8D4F5
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   314
      Left            =   12120
      Picture         =   "Form1.frx":8DA56
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   313
      Left            =   11640
      Picture         =   "Form1.frx":8DFB7
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   312
      Left            =   11160
      Picture         =   "Form1.frx":8E518
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   311
      Left            =   13560
      Picture         =   "Form1.frx":8EA79
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   310
      Left            =   13080
      Picture         =   "Form1.frx":8EFDA
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   309
      Left            =   12600
      Picture         =   "Form1.frx":8F53B
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   308
      Left            =   12120
      Picture         =   "Form1.frx":8FA9C
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   307
      Left            =   11640
      Picture         =   "Form1.frx":8FFFD
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   306
      Left            =   11160
      Picture         =   "Form1.frx":9055E
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   305
      Left            =   13560
      Picture         =   "Form1.frx":90ABF
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   304
      Left            =   13080
      Picture         =   "Form1.frx":91020
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   303
      Left            =   12600
      Picture         =   "Form1.frx":91581
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   302
      Left            =   12120
      Picture         =   "Form1.frx":91AE2
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   301
      Left            =   11640
      Picture         =   "Form1.frx":92043
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   300
      Left            =   11160
      Picture         =   "Form1.frx":925A4
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   299
      Left            =   13560
      Picture         =   "Form1.frx":92B05
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   298
      Left            =   13080
      Picture         =   "Form1.frx":93066
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   297
      Left            =   12600
      Picture         =   "Form1.frx":935C7
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   296
      Left            =   12120
      Picture         =   "Form1.frx":93B28
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   295
      Left            =   11640
      Picture         =   "Form1.frx":94089
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   294
      Left            =   11160
      Picture         =   "Form1.frx":945EA
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   293
      Left            =   13560
      Picture         =   "Form1.frx":94B4B
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   292
      Left            =   13080
      Picture         =   "Form1.frx":950AC
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   291
      Left            =   12600
      Picture         =   "Form1.frx":9560D
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   290
      Left            =   12120
      Picture         =   "Form1.frx":95B6E
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   289
      Left            =   11640
      Picture         =   "Form1.frx":960CF
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   288
      Left            =   11160
      Picture         =   "Form1.frx":96630
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   287
      Left            =   13560
      Picture         =   "Form1.frx":96B91
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   286
      Left            =   13080
      Picture         =   "Form1.frx":970F2
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   285
      Left            =   12600
      Picture         =   "Form1.frx":97653
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   284
      Left            =   12120
      Picture         =   "Form1.frx":97BB4
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   283
      Left            =   11640
      Picture         =   "Form1.frx":98115
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   282
      Left            =   11160
      Picture         =   "Form1.frx":98676
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   281
      Left            =   13560
      Picture         =   "Form1.frx":98BD7
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   280
      Left            =   13080
      Picture         =   "Form1.frx":99138
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   279
      Left            =   12600
      Picture         =   "Form1.frx":99699
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   278
      Left            =   12120
      Picture         =   "Form1.frx":99BFA
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   277
      Left            =   11640
      Picture         =   "Form1.frx":9A15B
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   276
      Left            =   11160
      Picture         =   "Form1.frx":9A6BC
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   275
      Left            =   13560
      Picture         =   "Form1.frx":9AC1D
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   274
      Left            =   13080
      Picture         =   "Form1.frx":9B17E
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   273
      Left            =   12600
      Picture         =   "Form1.frx":9B6DF
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   272
      Left            =   12120
      Picture         =   "Form1.frx":9BC40
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   271
      Left            =   11640
      Picture         =   "Form1.frx":9C1A1
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   270
      Left            =   11160
      Picture         =   "Form1.frx":9C702
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   269
      Left            =   13560
      Picture         =   "Form1.frx":9CC63
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   268
      Left            =   13080
      Picture         =   "Form1.frx":9D1C4
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   267
      Left            =   12600
      Picture         =   "Form1.frx":9D725
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   266
      Left            =   12120
      Picture         =   "Form1.frx":9DC86
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   265
      Left            =   11640
      Picture         =   "Form1.frx":9E1E7
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   264
      Left            =   11160
      Picture         =   "Form1.frx":9E748
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   263
      Left            =   13560
      Picture         =   "Form1.frx":9ECA9
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   262
      Left            =   13080
      Picture         =   "Form1.frx":9F20A
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   261
      Left            =   12600
      Picture         =   "Form1.frx":9F76B
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   260
      Left            =   12120
      Picture         =   "Form1.frx":9FCCC
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   259
      Left            =   11640
      Picture         =   "Form1.frx":A022D
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   258
      Left            =   11160
      Picture         =   "Form1.frx":A078E
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   257
      Left            =   13560
      Picture         =   "Form1.frx":A0CEF
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   256
      Left            =   13080
      Picture         =   "Form1.frx":A1250
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   255
      Left            =   12600
      Picture         =   "Form1.frx":A17B1
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   254
      Left            =   12120
      Picture         =   "Form1.frx":A1D12
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   253
      Left            =   11640
      Picture         =   "Form1.frx":A2273
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   252
      Left            =   11160
      Picture         =   "Form1.frx":A27D4
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   251
      Left            =   13560
      Picture         =   "Form1.frx":A2D35
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   250
      Left            =   13080
      Picture         =   "Form1.frx":A3296
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   249
      Left            =   12600
      Picture         =   "Form1.frx":A37F7
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   248
      Left            =   12120
      Picture         =   "Form1.frx":A3D58
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   247
      Left            =   11640
      Picture         =   "Form1.frx":A42B9
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   246
      Left            =   11160
      Picture         =   "Form1.frx":A481A
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   245
      Left            =   13560
      Picture         =   "Form1.frx":A4D7B
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   244
      Left            =   13080
      Picture         =   "Form1.frx":A52DC
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   243
      Left            =   12600
      Picture         =   "Form1.frx":A583D
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   242
      Left            =   12120
      Picture         =   "Form1.frx":A5D9E
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   241
      Left            =   11640
      Picture         =   "Form1.frx":A62FF
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   240
      Left            =   11160
      Picture         =   "Form1.frx":A6860
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   239
      Left            =   13560
      Picture         =   "Form1.frx":A6DC1
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   238
      Left            =   13080
      Picture         =   "Form1.frx":A7322
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   237
      Left            =   12600
      Picture         =   "Form1.frx":A7883
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   236
      Left            =   12120
      Picture         =   "Form1.frx":A7DE4
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   235
      Left            =   11640
      Picture         =   "Form1.frx":A8345
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   234
      Left            =   11160
      Picture         =   "Form1.frx":A88A6
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   233
      Left            =   13560
      Picture         =   "Form1.frx":A8E07
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   232
      Left            =   13080
      Picture         =   "Form1.frx":A9368
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   231
      Left            =   12600
      Picture         =   "Form1.frx":A98C9
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   230
      Left            =   12120
      Picture         =   "Form1.frx":A9E2A
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   229
      Left            =   11640
      Picture         =   "Form1.frx":AA38B
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   228
      Left            =   11160
      Picture         =   "Form1.frx":AA8EC
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   227
      Left            =   13560
      Picture         =   "Form1.frx":AAE4D
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   226
      Left            =   13080
      Picture         =   "Form1.frx":AB3AE
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   225
      Left            =   12600
      Picture         =   "Form1.frx":AB90F
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   224
      Left            =   12120
      Picture         =   "Form1.frx":ABE70
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   223
      Left            =   11640
      Picture         =   "Form1.frx":AC3D1
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   222
      Left            =   11160
      Picture         =   "Form1.frx":AC932
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   221
      Left            =   13560
      Picture         =   "Form1.frx":ACE93
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   220
      Left            =   13080
      Picture         =   "Form1.frx":AD3F4
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   219
      Left            =   12600
      Picture         =   "Form1.frx":AD955
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   218
      Left            =   12120
      Picture         =   "Form1.frx":ADEB6
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   217
      Left            =   11640
      Picture         =   "Form1.frx":AE417
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   216
      Left            =   11160
      Picture         =   "Form1.frx":AE978
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   215
      Left            =   13560
      Picture         =   "Form1.frx":AEED9
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   214
      Left            =   13080
      Picture         =   "Form1.frx":AF43A
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   213
      Left            =   12600
      Picture         =   "Form1.frx":AF99B
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   212
      Left            =   12120
      Picture         =   "Form1.frx":AFEFC
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   211
      Left            =   11640
      Picture         =   "Form1.frx":B045D
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   210
      Left            =   11160
      Picture         =   "Form1.frx":B09BE
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   209
      Left            =   13560
      Picture         =   "Form1.frx":B0F1F
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   208
      Left            =   13080
      Picture         =   "Form1.frx":B1480
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   207
      Left            =   12600
      Picture         =   "Form1.frx":B19E1
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   206
      Left            =   12120
      Picture         =   "Form1.frx":B1F42
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   205
      Left            =   11640
      Picture         =   "Form1.frx":B24A3
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   204
      Left            =   11160
      Picture         =   "Form1.frx":B2A04
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   203
      Left            =   13560
      Picture         =   "Form1.frx":B2F65
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   202
      Left            =   13080
      Picture         =   "Form1.frx":B34C6
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   201
      Left            =   12600
      Picture         =   "Form1.frx":B3A27
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   200
      Left            =   12120
      Picture         =   "Form1.frx":B3F88
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   199
      Left            =   11640
      Picture         =   "Form1.frx":B44E9
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   198
      Left            =   11160
      Picture         =   "Form1.frx":B4A4A
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   197
      Left            =   13560
      Picture         =   "Form1.frx":B4FAB
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   196
      Left            =   13080
      Picture         =   "Form1.frx":B550C
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   195
      Left            =   12600
      Picture         =   "Form1.frx":B5A6D
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   194
      Left            =   12120
      Picture         =   "Form1.frx":B5FCE
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   193
      Left            =   11640
      Picture         =   "Form1.frx":B652F
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   192
      Left            =   11160
      Picture         =   "Form1.frx":B6A90
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   191
      Left            =   13560
      Picture         =   "Form1.frx":B6FF1
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   190
      Left            =   13080
      Picture         =   "Form1.frx":B7552
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   189
      Left            =   12600
      Picture         =   "Form1.frx":B7AB3
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   188
      Left            =   12120
      Picture         =   "Form1.frx":B8014
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   187
      Left            =   11640
      Picture         =   "Form1.frx":B8575
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   186
      Left            =   11160
      Picture         =   "Form1.frx":B8AD6
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   185
      Left            =   13560
      Picture         =   "Form1.frx":B9037
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   184
      Left            =   13080
      Picture         =   "Form1.frx":B9598
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   183
      Left            =   12600
      Picture         =   "Form1.frx":B9AF9
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   182
      Left            =   12120
      Picture         =   "Form1.frx":BA05A
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   181
      Left            =   11640
      Picture         =   "Form1.frx":BA5BB
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   180
      Left            =   11160
      Picture         =   "Form1.frx":BAB1C
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   179
      Left            =   13560
      Picture         =   "Form1.frx":BB07D
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   178
      Left            =   13080
      Picture         =   "Form1.frx":BB5DE
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   177
      Left            =   12600
      Picture         =   "Form1.frx":BBB3F
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   176
      Left            =   12120
      Picture         =   "Form1.frx":BC0A0
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   175
      Left            =   11640
      Picture         =   "Form1.frx":BC601
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   174
      Left            =   11160
      Picture         =   "Form1.frx":BCB62
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   173
      Left            =   13560
      Picture         =   "Form1.frx":BD0C3
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   172
      Left            =   13080
      Picture         =   "Form1.frx":BD624
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   171
      Left            =   12600
      Picture         =   "Form1.frx":BDB85
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   170
      Left            =   12120
      Picture         =   "Form1.frx":BE0E6
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   169
      Left            =   11640
      Picture         =   "Form1.frx":BE647
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   168
      Left            =   11160
      Picture         =   "Form1.frx":BEBA8
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   167
      Left            =   13560
      Picture         =   "Form1.frx":BF109
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   166
      Left            =   13080
      Picture         =   "Form1.frx":BF66A
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   165
      Left            =   12600
      Picture         =   "Form1.frx":BFBCB
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   164
      Left            =   12120
      Picture         =   "Form1.frx":C012C
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   163
      Left            =   11640
      Picture         =   "Form1.frx":C068D
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   162
      Left            =   11160
      Picture         =   "Form1.frx":C0BEE
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   161
      Left            =   13560
      Picture         =   "Form1.frx":C114F
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   160
      Left            =   13080
      Picture         =   "Form1.frx":C16B0
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   159
      Left            =   12600
      Picture         =   "Form1.frx":C1C11
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   158
      Left            =   12120
      Picture         =   "Form1.frx":C2172
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   157
      Left            =   11640
      Picture         =   "Form1.frx":C26D3
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   156
      Left            =   11160
      Picture         =   "Form1.frx":C2C34
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   155
      Left            =   13560
      Picture         =   "Form1.frx":C3195
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   154
      Left            =   13080
      Picture         =   "Form1.frx":C36F6
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   153
      Left            =   12600
      Picture         =   "Form1.frx":C3C57
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   152
      Left            =   12120
      Picture         =   "Form1.frx":C41B8
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   151
      Left            =   11640
      Picture         =   "Form1.frx":C4719
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   150
      Left            =   11160
      Picture         =   "Form1.frx":C4C7A
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   149
      Left            =   13560
      Picture         =   "Form1.frx":C51DB
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   148
      Left            =   13080
      Picture         =   "Form1.frx":C573C
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   147
      Left            =   12600
      Picture         =   "Form1.frx":C5C9D
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   146
      Left            =   12120
      Picture         =   "Form1.frx":C61FE
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   145
      Left            =   11640
      Picture         =   "Form1.frx":C675F
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   144
      Left            =   11160
      Picture         =   "Form1.frx":C6CC0
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   143
      Left            =   13560
      Picture         =   "Form1.frx":C7221
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   142
      Left            =   13080
      Picture         =   "Form1.frx":C7782
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   141
      Left            =   12600
      Picture         =   "Form1.frx":C7CE3
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   140
      Left            =   12120
      Picture         =   "Form1.frx":C8244
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   139
      Left            =   11640
      Picture         =   "Form1.frx":C87A5
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   138
      Left            =   11160
      Picture         =   "Form1.frx":C8D06
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   137
      Left            =   13560
      Picture         =   "Form1.frx":C9267
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   136
      Left            =   13080
      Picture         =   "Form1.frx":C97C8
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   135
      Left            =   12600
      Picture         =   "Form1.frx":C9D29
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   134
      Left            =   12120
      Picture         =   "Form1.frx":CA28A
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   133
      Left            =   11640
      Picture         =   "Form1.frx":CA7EB
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   132
      Left            =   11160
      Picture         =   "Form1.frx":CAD4C
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   131
      Left            =   13560
      Picture         =   "Form1.frx":CB2AD
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   130
      Left            =   13080
      Picture         =   "Form1.frx":CB80E
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   129
      Left            =   12600
      Picture         =   "Form1.frx":CBD6F
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   128
      Left            =   12120
      Picture         =   "Form1.frx":CC2D0
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   127
      Left            =   11640
      Picture         =   "Form1.frx":CC831
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   126
      Left            =   11160
      Picture         =   "Form1.frx":CCD92
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   125
      Left            =   13560
      Picture         =   "Form1.frx":CD2F3
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   124
      Left            =   13080
      Picture         =   "Form1.frx":CD854
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   123
      Left            =   12600
      Picture         =   "Form1.frx":CDDB5
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   122
      Left            =   12120
      Picture         =   "Form1.frx":CE316
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   121
      Left            =   11640
      Picture         =   "Form1.frx":CE877
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   120
      Left            =   11160
      Picture         =   "Form1.frx":CEDD8
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   119
      Left            =   13560
      Picture         =   "Form1.frx":CF339
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   118
      Left            =   13080
      Picture         =   "Form1.frx":CF89A
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   117
      Left            =   12600
      Picture         =   "Form1.frx":CFDFB
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   116
      Left            =   12120
      Picture         =   "Form1.frx":D035C
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   115
      Left            =   11640
      Picture         =   "Form1.frx":D08BD
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   114
      Left            =   11160
      Picture         =   "Form1.frx":D0E1E
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   113
      Left            =   13560
      Picture         =   "Form1.frx":D137F
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   112
      Left            =   13080
      Picture         =   "Form1.frx":D18E0
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   111
      Left            =   12600
      Picture         =   "Form1.frx":D1E41
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   110
      Left            =   12120
      Picture         =   "Form1.frx":D23A2
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   109
      Left            =   11640
      Picture         =   "Form1.frx":D2903
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   108
      Left            =   11160
      Picture         =   "Form1.frx":D2E64
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   107
      Left            =   13560
      Picture         =   "Form1.frx":D33C5
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   106
      Left            =   13080
      Picture         =   "Form1.frx":D3926
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   105
      Left            =   12600
      Picture         =   "Form1.frx":D3E87
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   104
      Left            =   12120
      Picture         =   "Form1.frx":D43E8
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   103
      Left            =   11640
      Picture         =   "Form1.frx":D4949
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   102
      Left            =   11160
      Picture         =   "Form1.frx":D4EAA
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   101
      Left            =   13560
      Picture         =   "Form1.frx":D540B
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   100
      Left            =   13080
      Picture         =   "Form1.frx":D596C
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   99
      Left            =   12600
      Picture         =   "Form1.frx":D5ECD
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   98
      Left            =   12120
      Picture         =   "Form1.frx":D642E
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   97
      Left            =   11640
      Picture         =   "Form1.frx":D698F
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   96
      Left            =   11160
      Picture         =   "Form1.frx":D6EF0
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   95
      Left            =   13560
      Picture         =   "Form1.frx":D7451
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   94
      Left            =   13080
      Picture         =   "Form1.frx":D79B2
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   93
      Left            =   12600
      Picture         =   "Form1.frx":D7F13
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   92
      Left            =   12120
      Picture         =   "Form1.frx":D8474
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   91
      Left            =   11640
      Picture         =   "Form1.frx":D89D5
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   90
      Left            =   11160
      Picture         =   "Form1.frx":D8F36
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   89
      Left            =   13560
      Picture         =   "Form1.frx":D9497
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   88
      Left            =   13080
      Picture         =   "Form1.frx":D99F8
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   87
      Left            =   12600
      Picture         =   "Form1.frx":D9F59
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   86
      Left            =   12120
      Picture         =   "Form1.frx":DA4BA
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   85
      Left            =   11640
      Picture         =   "Form1.frx":DAA1B
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   84
      Left            =   11160
      Picture         =   "Form1.frx":DAF7C
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   83
      Left            =   13560
      Picture         =   "Form1.frx":DB4DD
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   82
      Left            =   13080
      Picture         =   "Form1.frx":DBA3E
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   81
      Left            =   12600
      Picture         =   "Form1.frx":DBF9F
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   80
      Left            =   12120
      Picture         =   "Form1.frx":DC500
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   79
      Left            =   11640
      Picture         =   "Form1.frx":DCA61
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   78
      Left            =   11160
      Picture         =   "Form1.frx":DCFC2
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   77
      Left            =   13560
      Picture         =   "Form1.frx":DD523
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   76
      Left            =   13080
      Picture         =   "Form1.frx":DDA84
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   75
      Left            =   12600
      Picture         =   "Form1.frx":DDFE5
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   74
      Left            =   12120
      Picture         =   "Form1.frx":DE546
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   73
      Left            =   11640
      Picture         =   "Form1.frx":DEAA7
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   72
      Left            =   11160
      Picture         =   "Form1.frx":DF008
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   71
      Left            =   13560
      Picture         =   "Form1.frx":DF569
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   70
      Left            =   13080
      Picture         =   "Form1.frx":DFACA
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   69
      Left            =   12600
      Picture         =   "Form1.frx":E002B
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   68
      Left            =   12120
      Picture         =   "Form1.frx":E058C
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   67
      Left            =   11640
      Picture         =   "Form1.frx":E0AED
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   66
      Left            =   11160
      Picture         =   "Form1.frx":E104E
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   65
      Left            =   13560
      Picture         =   "Form1.frx":E15AF
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   64
      Left            =   13080
      Picture         =   "Form1.frx":E1B10
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   63
      Left            =   12600
      Picture         =   "Form1.frx":E2071
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   62
      Left            =   12120
      Picture         =   "Form1.frx":E25D2
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   61
      Left            =   11640
      Picture         =   "Form1.frx":E2B33
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   60
      Left            =   11160
      Picture         =   "Form1.frx":E3094
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   59
      Left            =   13560
      Picture         =   "Form1.frx":E35F5
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   58
      Left            =   13080
      Picture         =   "Form1.frx":E3B56
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   57
      Left            =   12600
      Picture         =   "Form1.frx":E40B7
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   56
      Left            =   12120
      Picture         =   "Form1.frx":E4618
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   55
      Left            =   11640
      Picture         =   "Form1.frx":E4B79
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   54
      Left            =   11160
      Picture         =   "Form1.frx":E50DA
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   53
      Left            =   13560
      Picture         =   "Form1.frx":E563B
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   52
      Left            =   13080
      Picture         =   "Form1.frx":E5B9C
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   51
      Left            =   12600
      Picture         =   "Form1.frx":E60FD
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   50
      Left            =   12120
      Picture         =   "Form1.frx":E665E
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   49
      Left            =   11640
      Picture         =   "Form1.frx":E6BBF
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   48
      Left            =   11160
      Picture         =   "Form1.frx":E7120
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   47
      Left            =   13560
      Picture         =   "Form1.frx":E7681
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   46
      Left            =   13080
      Picture         =   "Form1.frx":E7BE2
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   45
      Left            =   12600
      Picture         =   "Form1.frx":E8143
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   44
      Left            =   12120
      Picture         =   "Form1.frx":E86A4
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   43
      Left            =   11640
      Picture         =   "Form1.frx":E8C05
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   42
      Left            =   11160
      Picture         =   "Form1.frx":E9166
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   41
      Left            =   13560
      Picture         =   "Form1.frx":E96C7
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   40
      Left            =   13080
      Picture         =   "Form1.frx":E9C28
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   39
      Left            =   12600
      Picture         =   "Form1.frx":EA189
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   38
      Left            =   12120
      Picture         =   "Form1.frx":EA6EA
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   37
      Left            =   11640
      Picture         =   "Form1.frx":EAC4B
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   36
      Left            =   11160
      Picture         =   "Form1.frx":EB1AC
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   35
      Left            =   13560
      Picture         =   "Form1.frx":EB70D
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   34
      Left            =   13080
      Picture         =   "Form1.frx":EBC6E
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   33
      Left            =   12600
      Picture         =   "Form1.frx":EC1CF
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   32
      Left            =   12120
      Picture         =   "Form1.frx":EC730
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   31
      Left            =   11640
      Picture         =   "Form1.frx":ECC91
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   30
      Left            =   11160
      Picture         =   "Form1.frx":ED1F2
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   29
      Left            =   13560
      Picture         =   "Form1.frx":ED753
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   28
      Left            =   13080
      Picture         =   "Form1.frx":EDCB4
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   27
      Left            =   12600
      Picture         =   "Form1.frx":EE215
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   26
      Left            =   12120
      Picture         =   "Form1.frx":EE776
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   25
      Left            =   11640
      Picture         =   "Form1.frx":EECD7
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   24
      Left            =   11160
      Picture         =   "Form1.frx":EF238
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   23
      Left            =   13560
      Picture         =   "Form1.frx":EF799
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   22
      Left            =   13080
      Picture         =   "Form1.frx":EFCFA
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   21
      Left            =   12600
      Picture         =   "Form1.frx":F025B
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   20
      Left            =   12120
      Picture         =   "Form1.frx":F07BC
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   19
      Left            =   11640
      Picture         =   "Form1.frx":F0D1D
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   18
      Left            =   11160
      Picture         =   "Form1.frx":F127E
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   17
      Left            =   13560
      Picture         =   "Form1.frx":F17DF
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   16
      Left            =   13080
      Picture         =   "Form1.frx":F1D40
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   15
      Left            =   12600
      Picture         =   "Form1.frx":F22A1
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   14
      Left            =   12120
      Picture         =   "Form1.frx":F2802
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   13
      Left            =   11640
      Picture         =   "Form1.frx":F2D63
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   12
      Left            =   11160
      Picture         =   "Form1.frx":F32C4
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   11
      Left            =   13560
      Picture         =   "Form1.frx":F3825
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   10
      Left            =   13080
      Picture         =   "Form1.frx":F3D86
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   9
      Left            =   12600
      Picture         =   "Form1.frx":F42E7
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   8
      Left            =   12120
      Picture         =   "Form1.frx":F4848
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   7
      Left            =   11640
      Picture         =   "Form1.frx":F4DA9
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   6
      Left            =   11160
      Picture         =   "Form1.frx":F530A
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   5
      Left            =   2400
      Picture         =   "Form1.frx":F586B
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   4
      Left            =   1920
      Picture         =   "Form1.frx":F5DCC
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   3
      Left            =   1440
      Picture         =   "Form1.frx":F632D
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   2
      Left            =   960
      Picture         =   "Form1.frx":F688E
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   1
      Left            =   480
      Picture         =   "Form1.frx":F6DEF
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image grid_foreground 
      Height          =   1290
      Index           =   0
      Left            =   0
      Picture         =   "Form1.frx":F7350
      Top             =   11280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Shape Shape1 
      Height          =   1095
      Left            =   6480
      Shape           =   4  'Rounded Rectangle
      Top             =   120
      Width           =   1575
   End
   Begin VB.Image img_dogs 
      Height          =   615
      Index           =   2
      Left            =   6600
      Picture         =   "Form1.frx":F78B1
      Top             =   600
      Visible         =   0   'False
      Width           =   435
   End
   Begin VB.Image img_dogs 
      Height          =   615
      Index           =   1
      Left            =   7080
      Picture         =   "Form1.frx":F7ED5
      Top             =   600
      Visible         =   0   'False
      Width           =   435
   End
   Begin VB.Image img_dogs 
      Height          =   615
      Index           =   0
      Left            =   7560
      Picture         =   "Form1.frx":F84F9
      Top             =   600
      Visible         =   0   'False
      Width           =   435
   End
   Begin VB.Label score 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "0000"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   6600
      TabIndex        =   1
      Top             =   120
      Width           =   1455
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim fails As Integer

Private Sub dog_hide_Timer()
dog.Visible = False
dog_hide.Enabled = False
End Sub

Private Sub Form_Load()
fails = 0
'render screen
Me.BackColor = RGB(100, 176, 255)
teller = 0
teller_left = 0
Do
    grid_foreground(teller).Left = teller_left
    grid_foreground(teller).Top = (Me.Height - (grid_foreground(teller).Height + 500))

    grid_foreground(teller).Visible = True
    teller_left = teller_left + grid_foreground(teller).Width
    teller = teller + 1
Loop Until teller_left > Me.Width
End Sub

Private Sub random_shooter_Timer()
Randomize Timer
randnr = Int(Rnd * 10) + 1
If randnr = 5 Then
    'shoot one!
    
    teller = 0
    Do
        If target(teller).Visible = False Then
            Randomize Timer
            intleft = Int(Rnd * (Me.Width - target(teller).Width))
            
            Randomize Timer
            linksrechts = Int(Rnd * 2) + 1
            
            If linksrechts = 1 Then
                target(teller).Tag = 1
            Else
                target(teller).Tag = 2
            End If
            
            
            target(teller).Left = intleft
            target(teller).Top = Me.Height
            target(teller).Visible = True
            Exit Sub
        End If
        teller = teller + 1
    Loop Until teller = target.Count
End If
    

End Sub

Private Sub target_mover_Timer()
Text1.SetFocus
teller = 0
Do
    If target(teller).Visible = True Then
        target(teller).Top = target(teller).Top - 100

        If target(teller).Tag = 1 Then
            If target(teller).Left > 100 Then
                target(teller).Left = target(teller).Left - 70
            Else
                target(teller).Tag = 2
            End If
        Else
            If (target(teller).Left + target(teller).Width) < (Me.Width - 200) Then
                target(teller).Left = target(teller).Left + 70
            Else
                target(teller).Tag = 1
            End If
        End If
    
        
        
        If target(teller).Top < 0 Then
            failed (teller)
        End If
    End If
    teller = teller + 1
Loop Until teller = target.Count
End Sub

Sub failed(number As Integer)
target(number).Visible = False
dog.Visible = True
dog_hide.Enabled = True
If fails = 3 Then
    MsgBox "game over"
    End
Else
    img_dogs(fails).Visible = True
End If
fails = fails + 1
    
End Sub

Private Sub Text1_Change()
If (Right(Text1.Text, 1) = 1) Then
    target(0).Visible = False
    Text1.Text = ""
    score.Caption = score.Caption + 10
End If
If (Right(Text1.Text, 1) = 2) Then
    target(1).Visible = False
    Text1.Text = ""
    score.Caption = score.Caption + 20
End If
If (Right(Text1.Text, 1) = 3) Then
    target(2).Visible = False
    Text1.Text = ""
    score.Caption = score.Caption + 30
End If



End Sub
