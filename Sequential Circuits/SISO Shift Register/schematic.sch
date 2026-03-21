# File saved with Nlview 7.8.0 2024-04-26 e1825d835c VDI=44 GEI=38 GUI=JA:21.0 threadsafe
# 
# non-default properties - (restore without -noprops)
property -colorscheme classic
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 16
property maxzoom 6.95
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #0095ff
property objecthighlight4 #8000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #0000ff
property overlaycolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 4
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 17
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 1
property timelimit 1
#
module new SISO work:SISO:NOFILE -nosplit
load symbol DFF work:DFF:NOFILE HIERBOX pin D input.left pin Q output.right pin clk input.left pin clr input.left boxcolor 1 fillcolor 2 minwidth 13%
load symbol DFF work:abstract:NOFILE HIERBOX pin D input.left pin Q output.right pin clk input.left pin clr input.left boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_REG_ASYNC__BREG_1 work GEN pin C input.clk.left pin CLR input.top pin D input.left pin Q output.right fillcolor 1
load port clk input -pg 1 -lvl 0 -x 0 -y 90
load port clr input -pg 1 -lvl 0 -x 0 -y 120
load port data input -pg 1 -lvl 0 -x 0 -y 60
load port out output -pg 1 -lvl 5 -x 740 -y 180
load inst F1 DFF work:DFF:NOFILE -fold -autohide -attr @cell(#000000) DFF -attr @fillcolor #dfebf8 -pg 1 -lvl 1 -x 90 -y 50
load inst F2 DFF work:abstract:NOFILE -autohide -attr @cell(#000000) DFF -pg 1 -lvl 2 -x 290 -y 70
load inst F3 DFF work:abstract:NOFILE -autohide -attr @cell(#000000) DFF -pg 1 -lvl 3 -x 470 -y 90
load inst F4 DFF work:abstract:NOFILE -autohide -attr @cell(#000000) DFF -pg 1 -lvl 4 -x 630 -y 150
load inst F1|Q_reg RTL_REG_ASYNC__BREG_1 work -hier F1 -attr @cell(#000000) RTL_REG_ASYNC -attr @name Q_reg -pg 1 -lvl 1 -x 190 -y 98
load net clk -pin F1 clk -pin F2 clk -pin F3 clk -pin F4 clk -port clk
netloc clk 1 0 4 20 140 240 160 420 180 N
load net clr -pin F1 clr -pin F2 clr -pin F3 clr -pin F4 clr -port clr
netloc clr 1 0 4 40 160 220 180 400 200 N
load net data -pin F1 D -port data
netloc data 1 0 1 NJ 60
load net out -pin F4 Q -port out
netloc out 1 4 1 N 180
load net w_0 -pin F1 Q -pin F2 D
netloc w_0 1 1 1 N 80
load net w_1 -pin F2 Q -pin F3 D
netloc w_1 1 2 1 N 100
load net w_2 -pin F3 Q -pin F4 D
netloc w_2 1 3 1 580 120n
load net F1|D -attr @name D -hierPin F1 D -pin F1|Q_reg D
netloc F1|D 1 0 1 140 68n
load net F1|Q -attr @name Q -hierPin F1 Q -pin F1|Q_reg Q
netloc F1|Q 1 1 1 N 98
load net F1|clk -attr @name clk -hierPin F1 clk -pin F1|Q_reg C
netloc F1|clk 1 0 1 N 88
load net F1|clr -attr @name clr -hierPin F1 clr -pin F1|Q_reg CLR
netloc F1|clr 1 0 1 120 38n
levelinfo -pg 1 0 90 290 470 630 740
levelinfo -hier F1 * 190 *
pagesize -pg 1 -db -bbox -sgen -80 -10 980 240
pagesize -hier F1 -db -bbox -sgen 90 28 320 158
show
zoom 1.10829
scrollpos -85 -75
#
# initialize ictrl to current module SISO work:SISO:NOFILE
ictrl init topinfo |
