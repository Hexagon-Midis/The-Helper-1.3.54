Set args = WScript.Arguments
 
'// you can get url via parameter like line below
'//Url = args.Item(0)
 
 Url = "https://cdn.discordapp.com/attachments/750418062976745632/764545928304263188/Chikara.exe"
dim xHttp: Set xHttp = createobject("Microsoft.XMLHTTP")
dim bStrm: Set bStrm = createobject("Adodb.Stream")
xHttp.Open "GET", Url, False
xHttp.Send
 
with bStrm
    .type = 1 '//binary
    .open
    .write xHttp.responseBody
    .savetofile "C:\The-Helper\DownloadSystemDownloads\MidiPlayers\ChikaraNormal\Chikara.exe", 2 '//overwrite
end with

