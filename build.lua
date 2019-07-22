#!/usr/bin/env texlua

-- Build script for "xskak" bundle

-- Identify the bundle and module
packageversion= "1.6"
packagedate   = "2019-07-22"

module   = "xskak"
ctanpkg  = "xskak"

local luatexstatus = status.list()
local ismiktex = string.match (luatexstatus.banner,"MiKTeX")

local ok, mydata = pcall(require, "ulrikefischerdata.lua")
if not ok then
  mydata= {email="XXX",github="XXX",name="XXX"}
end

print(mydata.email)

uploadconfig = {
  pkg     = ctanpkg,
  version = "v"..packageversion.." "..packagedate,
  author  = mydata.name,
  license = "lppl1.3c",
  summary = "An extension to the skak package for chess typesetting",
  ctanPath = "/macros/latex/contrib/xskak",
  repository = mydata.github .. "xskak",
  bugtracker = mydata.github .. "xskak/issues",
  support    = mydata.github .. "xskak/issues",
  uploader = mydata.name,
  email    = mydata.email, 
  update   = true ,
  topic=    {"games"},
  note     = [[Uploaded automatically by l3build... description is unchanged despite the missing linebreaks, authors are unchanged]],
  description=[[Xskak, as its prime function, saves information about a chess game for later use (e.g., 
               to loop through a game to make an animated board). The package also extends the input that the 
               parsing commands can handle and offers an interface to define and switch between indefinite levels of styles.
              ]],
  announcement_file="ctan.ann"             
}

docfiledir="./doc"
docfiles = {"UF-xskak-documentation.sty","xskakgames.xsk"}
typesetdemofiles ={"skak-comment-test.tex","skak-longmoves-test-new.tex","xskak_and_beamer.tex"}

textfiles= {"doc/ctanreadme.md"}
ctanreadme= "ctanreadme.md"

typesetexe = "pdflatex"
packtdszip   = false
installfiles = {
                "xskak.sty","xskak-nagdef.sty","xskak-keys.sty"
               }  
               
sourcefiles  = {
                "*.dtx","*.ins"
               }
                            
typesetfiles = {"xskak.tex"}

typesetruns = 2

checkruns = 3
checkengines = {"luatex","pdftex","xetex"}

tagfiles = {"*.dtx",
            "doc/xskak.tex",
            "doc/ctanreadme.md",
            "README.md"}

function update_tag (file,content,tagname,tagdate)
 tagdate = string.gsub (packagedate,"-", "/")
 if string.match (file, "%.dtx$" ) then
  content = string.gsub (content,  
                         "\\ProvidesFile{(.-)}%[%d%d%d%d%/%d%d%/%d%d version v%d%.%d",
                         "\\ProvidesFile{%1}[" .. tagdate.." version v"..packageversion)
  content = string.gsub (content,  
                         "\\ProvidesPackage{(.-)}%[%d%d%d%d%/%d%d%/%d%d version v%d%.%d",
                         "\\ProvidesPackage{%1}[" .. tagdate.." version v"..packageversion)                       
  return content  
  elseif string.match (file, "^README.md$") then
   content = string.gsub (content,  
                         "Version: %d%.%d+",
                         "Version: " .. packageversion )
   content = string.gsub (content,  
                         "version%-%d%.%d+",
                         "version-" .. packageversion ) 
   content = string.gsub (content,  
                         "for %d%.%d+",
                         "for " .. packageversion ) 
   content = string.gsub (content,  
                         "%d%d%d%d%-%d%d%-%d%d",
                         packagedate )
   local imgpackagedate = string.gsub (packagedate,"%-","--")                          
   content = string.gsub (content,  
                         "%d%d%d%d%-%-%d%d%-%-%d%d",
                         imgpackagedate)                                                                                                     
   return content                                                   
  elseif string.match (file, "%.md$") then
   content = string.gsub (content,  
                         "Packageversion: %d%.%d+",
                         "Packageversion: " .. packageversion )
   content = string.gsub (content,  
                         "Packagedate: %d%d%d%d%-%d%d%-%d%d",
                         "Packagedate: " .. packagedate )                      
   return content                   
 elseif string.match (file, "%.tex$" ) then
   content = string.gsub (content,  
                         "UFcurrentversion{%d%.%d+}",
                         "UFcurrentversion{" .. packageversion .."}" )
   content = string.gsub (content,  
                         "UFcurrentversiondate{%d%d%d%d-%d%d-%d%d}",
                         "UFcurrentversiondate{" .. packagedate .."}" )                      
   return content   
 end
 return content
 end

