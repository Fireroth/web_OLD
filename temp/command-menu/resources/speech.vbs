Dim p 
p=inputbox("Enter text") 
set sapi = wscript.createobject("SAPI.SPvoice") 
Sapi.speak p 
