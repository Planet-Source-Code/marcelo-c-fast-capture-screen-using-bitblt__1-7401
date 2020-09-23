Attribute VB_Name = "CaptureDesktop"
'// HAIL TO THE MASTER: Root/Marcelo
'//
'// I am sorry guys, i get really excited with stuff
'// like this, i mean, i am a geek.. and don't laugh,
'// so are you :)
'//
'// "They called us geeks and nerds for years,
'// "do they expect us to be mercyfull now?"
'//
'// Cheers guys, root@ihonline.com.br


'// I bet this code is going to be used on that BOs
'// you know, that program the guy posted at PSC...


Public Declare Function GetDesktopWindow Lib "user32" () As Long

Public Declare Function GetDC Lib "user32" (ByVal hwnd As Long) As Long

Private Declare Function BitBlt Lib "gdi32" (ByVal hDestDC As Long, ByVal x As Long, ByVal y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hSrcDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, ByVal dwRop As Long) As Long


Public Sub DumpToWindow(TargetBox As Control)
' here i supose u are dumping it to a window/control
' that actually HAS a .hdc property, i mean, tweek it at will.
Dim Desktop As Long

Desktop = GetDC(GetDesktopWindow)

ww = Screen.Width / Screen.TwipsPerPixelX
hh = Screen.Height / Screen.TwipsPerPixelY

BitBlt TargetBox.hDC, 0, 0, ww, hh, Desktop, 0, 0, &HCC0020

End Sub

