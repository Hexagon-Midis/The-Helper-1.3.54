
Set args = WScript.Arguments
 
'// you can get url via parameter like line below
'//Url = args.Item(0)
 
 Url = "https://cdn.discordapp.com/attachments/555258580547141641/606417703418200064/BPFA_V2_Beta_6.exe"
dim xHttp: Set xHttp = createobject("Microsoft.XMLHTTP")
dim bStrm: Set bStrm = createobject("Adodb.Stream")
xHttp.Open "GET", Url, False
xHttp.Send
 
with bStrm
    .type = 1 '//binary
    .open
    .write xHttp.responseBody
    .savetofile "C:\The-Helper\DownloadSystemDownloads\MidiPlayers\BPFA_V2_Beta_6.exe", 2 '//overwrite
end with

