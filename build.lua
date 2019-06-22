#!/usr/bin/env texlua

-- Build script for "xskak" bundle

-- Identify the bundle and module
packageversion= "1.4"
packagedate   = "2015-01-02"

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



installfiles = {"*.sty"}
sourcefiles =  {"*.dtx","*.sty"}

checkruns = 3
checkengines = {"luatex","pdftex","xetex"}

