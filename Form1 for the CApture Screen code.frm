VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "I am sorry, this rocks. :)"
   ClientHeight    =   8220
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   11325
   LinkTopic       =   "Form1"
   ScaleHeight     =   8220
   ScaleWidth      =   11325
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "&Capture"
      Height          =   345
      Left            =   6090
      TabIndex        =   1
      Top             =   150
      Width           =   1875
   End
   Begin VB.PictureBox Picture1 
      Height          =   5475
      Left            =   315
      ScaleHeight     =   5415
      ScaleWidth      =   7605
      TabIndex        =   0
      Top             =   585
      Width           =   7665
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
DumpToWindow Picture1

End Sub

