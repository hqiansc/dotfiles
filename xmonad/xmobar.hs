Config { font = "-*-Fixed-Bold-R-Normal-*-13-*-*-*-*-*-*-*"
       , bgColor = "black"
       , fgColor = "grey"
       , position = TopW L 110
       , commands = [ Run Weather "LJLJ" ["-t"," C","-L","64","-H","77","--normal","green","--high","red","--low","lightblue"] 36000
                    , Run Cpu ["-L","3","-H","50","--normal","green","--high","red"] 10
                    , Run Network "eth0" ["-L","0","-H","32","--normal","green","--high","red"] 10
                    , Run Memory [ "--template" ,"Mem: <usedratio>%"
                                 , "--Low"      , "20"        -- units: %
                                 , "--High"     , "90"        -- units: %
                                 , "--low"      , "darkgreen"
                                 , "--normal"   , "darkorange"
                                 , "--high"     , "darkred"
                                 ] 10
                    , Run Swap [] 10
                    , Run Date "%a %b %_d %l:%M" "date" 10
                    , Run StdinReader
                    , Run CommandReader "/usr/bin/ledmon" "LED"
                    ]
       , sepChar = "%"
       , alignSep = "}{"
       , template = "%StdinReader% }{ %cpu% | %memory% * %swap% | %eth0%   %date% | %LJLJ%"
       }
