<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.6.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="supply1">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="VCC">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="VCC" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" prefix="GND">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="VCC" prefix="P+">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="VCC" symbol="VCC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="frames">
<description>&lt;b&gt;Frames for Sheet and Layout&lt;/b&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="A5L-LOC">
<wire x1="85.09" y1="3.81" x2="85.09" y2="24.13" width="0.1016" layer="94"/>
<wire x1="85.09" y1="24.13" x2="139.065" y2="24.13" width="0.1016" layer="94"/>
<wire x1="139.065" y1="24.13" x2="180.34" y2="24.13" width="0.1016" layer="94"/>
<wire x1="170.18" y1="3.81" x2="170.18" y2="8.89" width="0.1016" layer="94"/>
<wire x1="170.18" y1="8.89" x2="180.34" y2="8.89" width="0.1016" layer="94"/>
<wire x1="170.18" y1="8.89" x2="139.065" y2="8.89" width="0.1016" layer="94"/>
<wire x1="139.065" y1="8.89" x2="139.065" y2="3.81" width="0.1016" layer="94"/>
<wire x1="139.065" y1="8.89" x2="139.065" y2="13.97" width="0.1016" layer="94"/>
<wire x1="139.065" y1="13.97" x2="180.34" y2="13.97" width="0.1016" layer="94"/>
<wire x1="139.065" y1="13.97" x2="139.065" y2="19.05" width="0.1016" layer="94"/>
<wire x1="139.065" y1="19.05" x2="180.34" y2="19.05" width="0.1016" layer="94"/>
<wire x1="139.065" y1="19.05" x2="139.065" y2="24.13" width="0.1016" layer="94"/>
<text x="140.97" y="15.24" size="2.54" layer="94">&gt;DRAWING_NAME</text>
<text x="140.97" y="10.16" size="2.286" layer="94">&gt;LAST_DATE_TIME</text>
<text x="154.305" y="5.08" size="2.54" layer="94">&gt;SHEET</text>
<text x="140.716" y="4.953" size="2.54" layer="94">Sheet:</text>
<frame x1="0" y1="0" x2="184.15" y2="133.35" columns="4" rows="4" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="DINA5_L" prefix="FRAME" uservalue="yes">
<description>&lt;b&gt;FRAME&lt;/b&gt;&lt;p&gt;
DIN A5, landscape with doc field</description>
<gates>
<gate name="G$1" symbol="A5L-LOC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="01-my-con">
<packages>
<package name="ML-6">
<wire x1="-6.35" y1="3.175" x2="6.35" y2="3.175" width="0.1524" layer="21"/>
<wire x1="6.35" y1="-3.175" x2="6.35" y2="3.175" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="3.175" x2="-6.35" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="4.445" x2="-6.35" y2="4.445" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-4.445" x2="7.62" y2="4.445" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="4.445" x2="-7.62" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="2.032" y1="-2.413" x2="2.032" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="2.032" y1="-2.413" x2="-2.032" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="-3.175" x2="-2.032" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="-3.175" x2="-6.35" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="-3.175" x2="-2.032" y2="-3.429" width="0.1524" layer="21"/>
<wire x1="6.35" y1="4.445" x2="6.35" y2="4.699" width="0.1524" layer="21"/>
<wire x1="6.35" y1="4.699" x2="5.08" y2="4.699" width="0.1524" layer="21"/>
<wire x1="5.08" y1="4.445" x2="5.08" y2="4.699" width="0.1524" layer="21"/>
<wire x1="6.35" y1="4.445" x2="7.62" y2="4.445" width="0.1524" layer="21"/>
<wire x1="0.635" y1="4.699" x2="-0.635" y2="4.699" width="0.1524" layer="21"/>
<wire x1="0.635" y1="4.699" x2="0.635" y2="4.445" width="0.1524" layer="21"/>
<wire x1="0.635" y1="4.445" x2="5.08" y2="4.445" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="4.699" x2="-0.635" y2="4.445" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="4.699" x2="-6.35" y2="4.699" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="4.699" x2="-6.35" y2="4.445" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="4.699" x2="-5.08" y2="4.445" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="4.445" x2="-0.635" y2="4.445" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-4.445" x2="2.032" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="2.032" y1="-4.445" x2="-2.032" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="6.35" y1="-3.175" x2="2.032" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="2.032" y1="-3.175" x2="2.032" y2="-3.429" width="0.1524" layer="21"/>
<wire x1="2.032" y1="-3.429" x2="2.032" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="2.032" y1="-3.429" x2="6.604" y2="-3.429" width="0.0508" layer="21"/>
<wire x1="6.604" y1="-3.429" x2="6.604" y2="3.429" width="0.0508" layer="21"/>
<wire x1="6.604" y1="3.429" x2="-6.604" y2="3.429" width="0.0508" layer="21"/>
<wire x1="-6.604" y1="3.429" x2="-6.604" y2="-3.429" width="0.0508" layer="21"/>
<wire x1="-6.604" y1="-3.429" x2="-2.032" y2="-3.429" width="0.0508" layer="21"/>
<wire x1="-2.032" y1="-3.429" x2="-2.032" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="-4.445" x2="-2.54" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-4.318" x2="-2.54" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-4.318" x2="-3.81" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-4.445" x2="-3.81" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-4.445" x2="-7.62" y2="-4.445" width="0.1524" layer="21"/>
<pad name="1" x="-2.54" y="-1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="2" x="-2.54" y="1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="3" x="0" y="-1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="4" x="0" y="1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="5" x="2.54" y="-1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="6" x="2.54" y="1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<text x="-5.08" y="-1.905" size="1.27" layer="21" ratio="10">1</text>
<text x="-5.08" y="0.635" size="1.27" layer="21" ratio="10">2</text>
<text x="-0.381" y="-4.064" size="1.27" layer="21" ratio="10">6</text>
<text x="-7.62" y="5.08" size="1.778" layer="25">&gt;NAME</text>
<text x="1.27" y="5.08" size="1.778" layer="27">&gt;VALUE</text>
</package>
<package name="JP4Q">
<wire x1="-5.08" y1="-2.159" x2="-5.08" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="2.54" x2="-2.54" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="2.159" x2="-2.159" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="2.54" x2="-0.381" y2="2.54" width="0.1524" layer="21"/>
<wire x1="0" y1="2.159" x2="-0.381" y2="2.54" width="0.1524" layer="21"/>
<wire x1="0" y1="2.159" x2="0.381" y2="2.54" width="0.1524" layer="21"/>
<wire x1="0.381" y1="2.54" x2="2.159" y2="2.54" width="0.1524" layer="21"/>
<wire x1="2.54" y1="2.159" x2="2.159" y2="2.54" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-2.54" x2="2.54" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-2.54" x2="0.381" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="0" y1="-2.159" x2="0.381" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="0" y1="-2.159" x2="-0.381" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="-2.54" x2="-2.159" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-2.159" x2="-2.159" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-2.159" x2="-2.921" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.08" y1="2.159" x2="5.08" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="2.54" y1="2.159" x2="2.921" y2="2.54" width="0.1524" layer="21"/>
<wire x1="2.921" y1="2.54" x2="4.699" y2="2.54" width="0.1524" layer="21"/>
<wire x1="5.08" y1="2.159" x2="4.699" y2="2.54" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-2.159" x2="2.921" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-2.54" x2="2.921" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-2.54" x2="5.08" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="2.159" x2="-4.699" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="2.54" x2="-2.921" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-2.159" x2="-4.699" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="-2.54" x2="-2.921" y2="-2.54" width="0.1524" layer="21"/>
<pad name="1" x="-3.81" y="-1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="2" x="-3.81" y="1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="3" x="-1.27" y="-1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="4" x="-1.27" y="1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="5" x="1.27" y="-1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="6" x="1.27" y="1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="8" x="3.81" y="1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="7" x="3.81" y="-1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<text x="-5.08" y="3.048" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-4.7625" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-4.1148" y1="0.9652" x2="-3.5052" y2="1.5748" layer="51"/>
<rectangle x1="-1.5748" y1="0.9652" x2="-0.9652" y2="1.5748" layer="51"/>
<rectangle x1="0.9652" y1="0.9652" x2="1.5748" y2="1.5748" layer="51"/>
<rectangle x1="3.5052" y1="-1.5748" x2="4.1148" y2="-0.9652" layer="51"/>
<rectangle x1="-4.1148" y1="-1.5748" x2="-3.5052" y2="-0.9652" layer="51"/>
<rectangle x1="-1.5748" y1="-1.5748" x2="-0.9652" y2="-0.9652" layer="51"/>
<rectangle x1="3.5052" y1="0.9652" x2="4.1148" y2="1.5748" layer="51"/>
<rectangle x1="0.9652" y1="-1.5748" x2="1.5748" y2="-0.9652" layer="51"/>
<wire x1="-4.7625" y1="-2.8575" x2="-2.8575" y2="-2.8575" width="0.254" layer="21"/>
</package>
<package name="JP3Q">
<wire x1="-3.81" y1="-2.159" x2="-3.81" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-1.651" y1="2.54" x2="-1.27" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="2.159" x2="-0.889" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="2.54" x2="0.889" y2="2.54" width="0.1524" layer="21"/>
<wire x1="1.27" y1="2.159" x2="0.889" y2="2.54" width="0.1524" layer="21"/>
<wire x1="1.27" y1="2.159" x2="1.651" y2="2.54" width="0.1524" layer="21"/>
<wire x1="1.651" y1="2.54" x2="3.429" y2="2.54" width="0.1524" layer="21"/>
<wire x1="3.81" y1="2.159" x2="3.429" y2="2.54" width="0.1524" layer="21"/>
<wire x1="3.429" y1="-2.54" x2="3.81" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="3.429" y1="-2.54" x2="1.651" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-2.159" x2="1.651" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-2.159" x2="0.889" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="0.889" y1="-2.54" x2="-0.889" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-2.159" x2="-0.889" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-2.159" x2="-1.651" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="3.81" y1="2.159" x2="3.81" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="2.159" x2="-3.429" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="2.54" x2="-1.651" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-2.159" x2="-3.429" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-2.54" x2="-1.651" y2="-2.54" width="0.1524" layer="21"/>
<pad name="1" x="-2.54" y="-1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="2" x="-2.54" y="1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="3" x="0" y="-1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="4" x="0" y="1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="5" x="2.54" y="-1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="6" x="2.54" y="1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<text x="-3.048" y="-4.191" size="1.27" layer="21" ratio="10">1</text>
<text x="-0.508" y="-4.191" size="1.27" layer="21" ratio="10">2</text>
<text x="2.032" y="-4.191" size="1.27" layer="21" ratio="10">3</text>
<text x="-3.81" y="3.048" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.81" y="-5.715" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="06P">
<wire x1="3.81" y1="-5.08" x2="-3.81" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="-3.81" y1="5.08" x2="-3.81" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-5.08" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-3.81" y1="5.08" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="-1.27" y2="2.54" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.27" y2="0" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-1.27" y2="-2.54" width="0.6096" layer="94"/>
<text x="-3.81" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
<text x="-3.81" y="5.842" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="-7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="3" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="-7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="5" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="6" x="-7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
</symbol>
<symbol name="J4">
<wire x1="-2.54" y1="2.54" x2="-2.54" y2="3.81" width="0.4064" layer="94"/>
<wire x1="-2.54" y1="3.81" x2="-2.54" y2="5.08" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-2.54" y2="-3.81" width="0.4064" layer="94"/>
<wire x1="-2.54" y1="-3.81" x2="-2.54" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="0" y1="2.54" x2="0" y2="3.81" width="0.4064" layer="94"/>
<wire x1="0" y1="3.81" x2="0" y2="5.08" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="0" y2="-3.81" width="0.4064" layer="94"/>
<wire x1="0" y1="-3.81" x2="0" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="2.54" y1="2.54" x2="2.54" y2="3.81" width="0.4064" layer="94"/>
<wire x1="2.54" y1="3.81" x2="2.54" y2="5.08" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="2.54" y2="-3.81" width="0.4064" layer="94"/>
<wire x1="2.54" y1="-3.81" x2="2.54" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="3.81" width="0.4064" layer="94"/>
<wire x1="5.08" y1="3.81" x2="5.08" y2="5.08" width="0.1524" layer="94"/>
<wire x1="5.08" y1="-2.54" x2="5.08" y2="-3.81" width="0.4064" layer="94"/>
<wire x1="5.08" y1="-3.81" x2="5.08" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="6.985" y1="5.08" x2="-4.445" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-4.445" y1="5.08" x2="-4.445" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="-4.445" y1="-5.08" x2="6.985" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="6.985" y1="-5.08" x2="6.985" y2="5.08" width="0.4064" layer="94"/>
<text x="-5.08" y="-5.08" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="9.525" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="1" x="-2.54" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="2" x="-2.54" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="3" x="0" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="4" x="0" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="5" x="2.54" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="6" x="2.54" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="7" x="5.08" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="8" x="5.08" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
</symbol>
<symbol name="JP2E">
<wire x1="0" y1="0" x2="0" y2="1.27" width="0.1524" layer="94"/>
<wire x1="0" y1="2.54" x2="0" y2="1.27" width="0.4064" layer="94"/>
<wire x1="2.54" y1="0" x2="2.54" y2="1.27" width="0.1524" layer="94"/>
<wire x1="2.54" y1="2.54" x2="2.54" y2="1.27" width="0.4064" layer="94"/>
<wire x1="-0.635" y1="0" x2="3.175" y2="0" width="0.4064" layer="94"/>
<wire x1="3.175" y1="0" x2="3.175" y2="0.635" width="0.4064" layer="94"/>
<wire x1="3.175" y1="0.635" x2="-0.635" y2="0.635" width="0.4064" layer="94"/>
<wire x1="-0.635" y1="0.635" x2="-0.635" y2="0" width="0.4064" layer="94"/>
<text x="-1.27" y="0" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="5.715" y="0" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="1" x="0" y="-2.54" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="2" x="2.54" y="-2.54" visible="pad" length="short" direction="pas" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ML6" prefix="SV" uservalue="yes">
<gates>
<gate name="G$1" symbol="06P" x="0" y="0"/>
</gates>
<devices>
<device name="" package="ML-6">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="JP4Q" prefix="JP" uservalue="yes">
<gates>
<gate name="G$1" symbol="J4" x="0" y="0"/>
</gates>
<devices>
<device name="" package="JP4Q">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="JP3QE" prefix="JP" uservalue="yes">
<gates>
<gate name="-1" symbol="JP2E" x="-10.16" y="2.54"/>
<gate name="-2" symbol="JP2E" x="0" y="2.54"/>
<gate name="-3" symbol="JP2E" x="10.16" y="2.54"/>
</gates>
<devices>
<device name="" package="JP3Q">
<connects>
<connect gate="-1" pin="1" pad="1"/>
<connect gate="-1" pin="2" pad="2"/>
<connect gate="-2" pin="1" pad="3"/>
<connect gate="-2" pin="2" pad="4"/>
<connect gate="-3" pin="1" pad="5"/>
<connect gate="-3" pin="2" pad="6"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="holes">
<description>&lt;b&gt;Mounting Holes and Pads&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="2,8-PAD">
<description>&lt;b&gt;MOUNTING PAD&lt;/b&gt; 2.8 mm, round</description>
<wire x1="0" y1="2.921" x2="0" y2="2.667" width="0.0508" layer="21"/>
<wire x1="0" y1="-2.667" x2="0" y2="-2.921" width="0.0508" layer="21"/>
<wire x1="-1.778" y1="0" x2="0" y2="-1.778" width="2.286" layer="51" curve="90" cap="flat"/>
<wire x1="0" y1="1.778" x2="1.778" y2="0" width="2.286" layer="51" curve="-90" cap="flat"/>
<circle x="0" y="0" radius="0.635" width="0.4572" layer="51"/>
<circle x="0" y="0" radius="2.921" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="3.175" width="0.8128" layer="39"/>
<circle x="0" y="0" radius="3.175" width="0.8128" layer="40"/>
<circle x="0" y="0" radius="3.175" width="0.8128" layer="43"/>
<circle x="0" y="0" radius="1.5" width="0.2032" layer="21"/>
<pad name="B2,8" x="0" y="0" drill="2.8" diameter="5.334"/>
</package>
<package name="3,0-PAD">
<description>&lt;b&gt;MOUNTING PAD&lt;/b&gt; 3.0 mm, round</description>
<wire x1="-2.159" y1="0" x2="0" y2="-2.159" width="2.4892" layer="51" curve="90" cap="flat"/>
<wire x1="0" y1="2.159" x2="2.159" y2="0" width="2.4892" layer="51" curve="-90" cap="flat"/>
<circle x="0" y="0" radius="3.429" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="0.762" width="0.4572" layer="51"/>
<circle x="0" y="0" radius="3.556" width="1.016" layer="39"/>
<circle x="0" y="0" radius="3.556" width="1.016" layer="40"/>
<circle x="0" y="0" radius="3.556" width="1.016" layer="43"/>
<circle x="0" y="0" radius="1.6" width="0.2032" layer="21"/>
<pad name="B3,0" x="0" y="0" drill="3" diameter="5.842"/>
<text x="-1.27" y="-3.81" size="1.27" layer="48">3,0</text>
</package>
<package name="3,2-PAD">
<description>&lt;b&gt;MOUNTING PAD&lt;/b&gt; 3.2 mm, round</description>
<wire x1="-2.159" y1="0" x2="0" y2="-2.159" width="2.4892" layer="51" curve="90" cap="flat"/>
<wire x1="0" y1="2.159" x2="2.159" y2="0" width="2.4892" layer="51" curve="-90" cap="flat"/>
<circle x="0" y="0" radius="3.429" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="0.762" width="0.4572" layer="51"/>
<circle x="0" y="0" radius="3.683" width="1.27" layer="39"/>
<circle x="0" y="0" radius="3.683" width="1.27" layer="40"/>
<circle x="0" y="0" radius="3.556" width="1.016" layer="43"/>
<circle x="0" y="0" radius="1.7" width="0.1524" layer="21"/>
<pad name="B3,2" x="0" y="0" drill="3.2" diameter="5.842"/>
<text x="-1.27" y="-3.81" size="1.27" layer="48">3,2</text>
</package>
<package name="3,3-PAD">
<description>&lt;b&gt;MOUNTING PAD&lt;/b&gt; 3.3 mm, round</description>
<wire x1="-2.159" y1="0" x2="0" y2="-2.159" width="2.4892" layer="51" curve="90" cap="flat"/>
<wire x1="0" y1="2.159" x2="2.159" y2="0" width="2.4892" layer="51" curve="-90" cap="flat"/>
<circle x="0" y="0" radius="3.429" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="0.762" width="0.4572" layer="51"/>
<circle x="0" y="0" radius="3.683" width="1.27" layer="39"/>
<circle x="0" y="0" radius="3.683" width="1.27" layer="40"/>
<circle x="0" y="0" radius="3.556" width="1.016" layer="43"/>
<circle x="0" y="0" radius="1.7" width="0.2032" layer="21"/>
<pad name="B3,3" x="0" y="0" drill="3.3" diameter="5.842"/>
</package>
<package name="3,6-PAD">
<description>&lt;b&gt;MOUNTING PAD&lt;/b&gt; 3.6 mm, round</description>
<wire x1="-2.159" y1="0" x2="0" y2="-2.159" width="2.4892" layer="51" curve="90" cap="flat"/>
<wire x1="0" y1="2.159" x2="2.159" y2="0" width="2.4892" layer="51" curve="-90" cap="flat"/>
<circle x="0" y="0" radius="3.429" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="0.762" width="0.4572" layer="51"/>
<circle x="0" y="0" radius="3.683" width="1.397" layer="39"/>
<circle x="0" y="0" radius="3.683" width="1.397" layer="40"/>
<circle x="0" y="0" radius="3.556" width="1.016" layer="43"/>
<circle x="0" y="0" radius="1.9" width="0.2032" layer="21"/>
<pad name="B3,6" x="0" y="0" drill="3.6" diameter="5.842"/>
</package>
<package name="4,1-PAD">
<description>&lt;b&gt;MOUNTING PAD&lt;/b&gt; 4.1 mm, round</description>
<wire x1="-2.54" y1="0" x2="0" y2="-2.54" width="3.9116" layer="51" curve="90" cap="flat"/>
<wire x1="0" y1="2.54" x2="2.54" y2="0" width="3.9116" layer="51" curve="-90" cap="flat"/>
<circle x="0" y="0" radius="0.762" width="0.4572" layer="51"/>
<circle x="0" y="0" radius="4.572" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="5.08" width="2" layer="43"/>
<circle x="0" y="0" radius="2.15" width="0.2032" layer="21"/>
<pad name="B4,1" x="0" y="0" drill="4.1" diameter="8"/>
</package>
<package name="4,3-PAD">
<description>&lt;b&gt;MOUNTING PAD&lt;/b&gt; 4.3 mm, round</description>
<wire x1="-2.54" y1="0" x2="0" y2="-2.54" width="3.9116" layer="51" curve="90" cap="flat"/>
<wire x1="0" y1="2.54" x2="2.54" y2="0" width="3.9116" layer="51" curve="-90" cap="flat"/>
<circle x="0" y="0" radius="4.4958" width="0.1524" layer="51"/>
<circle x="0" y="0" radius="0.762" width="0.4572" layer="51"/>
<circle x="0" y="0" radius="5.588" width="2" layer="43"/>
<circle x="0" y="0" radius="5.588" width="2" layer="39"/>
<circle x="0" y="0" radius="5.588" width="2" layer="40"/>
<circle x="0" y="0" radius="2.25" width="0.1524" layer="21"/>
<pad name="B4,3" x="0" y="0" drill="4.3" diameter="9"/>
</package>
<package name="4,5-PAD">
<description>&lt;b&gt;MOUNTING PAD&lt;/b&gt; 4.5 mm, round</description>
<wire x1="-2.54" y1="0" x2="0" y2="-2.54" width="3.9116" layer="51" curve="90" cap="flat"/>
<wire x1="0" y1="2.54" x2="2.54" y2="0" width="3.9116" layer="51" curve="-90" cap="flat"/>
<circle x="0" y="0" radius="4.4958" width="0.1524" layer="51"/>
<circle x="0" y="0" radius="0.762" width="0.4572" layer="51"/>
<circle x="0" y="0" radius="5.588" width="2" layer="43"/>
<circle x="0" y="0" radius="5.588" width="2" layer="39"/>
<circle x="0" y="0" radius="5.588" width="2" layer="40"/>
<circle x="0" y="0" radius="2.35" width="0.1524" layer="21"/>
<pad name="B4,5" x="0" y="0" drill="4.5" diameter="9"/>
</package>
<package name="5,0-PAD">
<description>&lt;b&gt;MOUNTING PAD&lt;/b&gt; 5.0 mm, round</description>
<wire x1="-2.54" y1="0" x2="0" y2="-2.54" width="3.9116" layer="51" curve="90" cap="flat"/>
<wire x1="0" y1="2.54" x2="2.54" y2="0" width="3.9116" layer="51" curve="-90" cap="flat"/>
<circle x="0" y="0" radius="4.4958" width="0.1524" layer="51"/>
<circle x="0" y="0" radius="0.762" width="0.4572" layer="51"/>
<circle x="0" y="0" radius="5.588" width="2" layer="43"/>
<circle x="0" y="0" radius="5.588" width="2" layer="39"/>
<circle x="0" y="0" radius="5.588" width="2" layer="40"/>
<circle x="0" y="0" radius="2.6" width="0.1524" layer="21"/>
<pad name="B5" x="0" y="0" drill="5" diameter="9"/>
</package>
<package name="5,5-PAD">
<description>&lt;b&gt;MOUNTING PAD&lt;/b&gt; 5.5 mm, round</description>
<wire x1="-2.54" y1="0" x2="0" y2="-2.54" width="3.9116" layer="51" curve="90" cap="flat"/>
<wire x1="0" y1="2.54" x2="2.54" y2="0" width="3.9116" layer="51" curve="-90" cap="flat"/>
<circle x="0" y="0" radius="4.4958" width="0.1524" layer="51"/>
<circle x="0" y="0" radius="0.762" width="0.4572" layer="51"/>
<circle x="0" y="0" radius="5.588" width="2" layer="43"/>
<circle x="0" y="0" radius="5.588" width="2" layer="39"/>
<circle x="0" y="0" radius="5.588" width="2" layer="40"/>
<circle x="0" y="0" radius="2.85" width="0.1524" layer="21"/>
<pad name="B5,5" x="0" y="0" drill="5.5" diameter="9"/>
</package>
</packages>
<symbols>
<symbol name="MOUNT-PAD">
<wire x1="0.254" y1="2.032" x2="2.032" y2="0.254" width="1.016" layer="94" curve="-75.749967" cap="flat"/>
<wire x1="-2.032" y1="0.254" x2="-0.254" y2="2.032" width="1.016" layer="94" curve="-75.749967" cap="flat"/>
<wire x1="-2.032" y1="-0.254" x2="-0.254" y2="-2.032" width="1.016" layer="94" curve="75.749967" cap="flat"/>
<wire x1="0.254" y1="-2.032" x2="2.032" y2="-0.254" width="1.016" layer="94" curve="75.749967" cap="flat"/>
<circle x="0" y="0" radius="1.524" width="0.0508" layer="94"/>
<text x="2.794" y="0.5842" size="1.778" layer="95">&gt;NAME</text>
<text x="2.794" y="-2.4638" size="1.778" layer="96">&gt;VALUE</text>
<pin name="MOUNT" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MOUNT-PAD-ROUND" prefix="H">
<description>&lt;b&gt;MOUNTING PAD&lt;/b&gt;, round</description>
<gates>
<gate name="G$1" symbol="MOUNT-PAD" x="0" y="0"/>
</gates>
<devices>
<device name="2.8" package="2,8-PAD">
<connects>
<connect gate="G$1" pin="MOUNT" pad="B2,8"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3.0" package="3,0-PAD">
<connects>
<connect gate="G$1" pin="MOUNT" pad="B3,0"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3.2" package="3,2-PAD">
<connects>
<connect gate="G$1" pin="MOUNT" pad="B3,2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3.3" package="3,3-PAD">
<connects>
<connect gate="G$1" pin="MOUNT" pad="B3,3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3.6" package="3,6-PAD">
<connects>
<connect gate="G$1" pin="MOUNT" pad="B3,6"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="4.1" package="4,1-PAD">
<connects>
<connect gate="G$1" pin="MOUNT" pad="B4,1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="4.3" package="4,3-PAD">
<connects>
<connect gate="G$1" pin="MOUNT" pad="B4,3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="4.5" package="4,5-PAD">
<connects>
<connect gate="G$1" pin="MOUNT" pad="B4,5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="5.0" package="5,0-PAD">
<connects>
<connect gate="G$1" pin="MOUNT" pad="B5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="5.5" package="5,5-PAD">
<connects>
<connect gate="G$1" pin="MOUNT" pad="B5,5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="GND1" library="supply1" deviceset="GND" device=""/>
<part name="P+1" library="supply1" deviceset="VCC" device=""/>
<part name="P+2" library="supply1" deviceset="VCC" device=""/>
<part name="GND2" library="supply1" deviceset="GND" device=""/>
<part name="P+3" library="supply1" deviceset="VCC" device=""/>
<part name="GND3" library="supply1" deviceset="GND" device=""/>
<part name="X1" library="01-my-con" deviceset="ML6" device="" value="A1"/>
<part name="X2" library="01-my-con" deviceset="ML6" device="" value="A2"/>
<part name="X3" library="01-my-con" deviceset="ML6" device="" value="A3"/>
<part name="FRAME1" library="frames" deviceset="DINA5_L" device=""/>
<part name="JP1" library="01-my-con" deviceset="JP4Q" device="" value="A1-A2"/>
<part name="JP2" library="01-my-con" deviceset="JP4Q" device="" value="A2-A3"/>
<part name="GND4" library="supply1" deviceset="GND" device=""/>
<part name="P+4" library="supply1" deviceset="VCC" device=""/>
<part name="P+5" library="supply1" deviceset="VCC" device=""/>
<part name="GND6" library="supply1" deviceset="GND" device=""/>
<part name="P+6" library="supply1" deviceset="VCC" device=""/>
<part name="GND7" library="supply1" deviceset="GND" device=""/>
<part name="X4" library="01-my-con" deviceset="ML6" device="" value="B1"/>
<part name="X5" library="01-my-con" deviceset="ML6" device="" value="B2"/>
<part name="X6" library="01-my-con" deviceset="ML6" device="" value="B3"/>
<part name="JP4" library="01-my-con" deviceset="JP4Q" device="" value="B1-B2"/>
<part name="JP5" library="01-my-con" deviceset="JP4Q" device="" value="B2-B3"/>
<part name="JP3" library="01-my-con" deviceset="JP3QE" device="" value="J-A3"/>
<part name="JP6" library="01-my-con" deviceset="JP3QE" device="" value="J-B3"/>
<part name="H1" library="holes" deviceset="MOUNT-PAD-ROUND" device="3.2"/>
<part name="H2" library="holes" deviceset="MOUNT-PAD-ROUND" device="3.2"/>
<part name="H3" library="holes" deviceset="MOUNT-PAD-ROUND" device="3.2"/>
<part name="H4" library="holes" deviceset="MOUNT-PAD-ROUND" device="3.2"/>
<part name="GND5" library="supply1" deviceset="GND" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="86.36" y="7.62" size="1.27" layer="97" distance="60">This documentation describes Open Hardware and is licensed 
under the CERN OHL v. 1.2. You may redistribute and modify this 
documentation under the terms of the CERN OHL v.1.2. 
(http://ohwr.org/cernohl). This documentation is distributed
WITHOUT ANY EXPRESS OR IMPLIED WARRANTY, 
INCLUDING OF MERCHANTABILITY, SATISFACTORY 
QUALITY AND FITNESS FOR A PARTICULAR PURPOSE. 
Please see the CERN OHL v.1.2 for applicable conditions</text>
<text x="140.97" y="20.32" size="2.1844" layer="94" distance="60">Copyright Oliver Krebs 2016</text>
</plain>
<instances>
<instance part="GND1" gate="1" x="78.74" y="111.76" rot="R90"/>
<instance part="P+1" gate="VCC" x="58.42" y="111.76" rot="R90"/>
<instance part="P+2" gate="VCC" x="104.14" y="111.76" rot="R90"/>
<instance part="GND2" gate="1" x="124.46" y="111.76" rot="R90"/>
<instance part="P+3" gate="VCC" x="149.86" y="111.76" rot="R90"/>
<instance part="GND3" gate="1" x="170.18" y="111.76" rot="R90"/>
<instance part="X1" gate="G$1" x="68.58" y="109.22"/>
<instance part="X2" gate="G$1" x="114.3" y="109.22"/>
<instance part="X3" gate="G$1" x="160.02" y="109.22"/>
<instance part="FRAME1" gate="G$1" x="0" y="0"/>
<instance part="JP1" gate="G$1" x="91.44" y="96.52" rot="R270"/>
<instance part="JP2" gate="G$1" x="137.16" y="96.52" rot="R270"/>
<instance part="GND4" gate="1" x="78.74" y="63.5" rot="R90"/>
<instance part="P+4" gate="VCC" x="58.42" y="63.5" rot="R90"/>
<instance part="P+5" gate="VCC" x="104.14" y="63.5" rot="R90"/>
<instance part="GND6" gate="1" x="124.46" y="63.5" rot="R90"/>
<instance part="P+6" gate="VCC" x="149.86" y="63.5" rot="R90"/>
<instance part="GND7" gate="1" x="170.18" y="63.5" rot="R90"/>
<instance part="X4" gate="G$1" x="68.58" y="60.96"/>
<instance part="X5" gate="G$1" x="114.3" y="60.96"/>
<instance part="X6" gate="G$1" x="160.02" y="60.96"/>
<instance part="JP4" gate="G$1" x="91.44" y="48.26" rot="R270"/>
<instance part="JP5" gate="G$1" x="137.16" y="48.26" rot="R270"/>
<instance part="JP3" gate="-1" x="170.18" y="88.9" rot="R180"/>
<instance part="JP3" gate="-2" x="165.1" y="86.36" rot="R180"/>
<instance part="JP3" gate="-3" x="160.02" y="83.82" rot="R180"/>
<instance part="JP6" gate="-1" x="170.18" y="40.64" rot="R180"/>
<instance part="JP6" gate="-2" x="165.1" y="38.1" rot="R180"/>
<instance part="JP6" gate="-3" x="160.02" y="35.56" rot="R180"/>
<instance part="H1" gate="G$1" x="15.24" y="25.4" rot="R90"/>
<instance part="H2" gate="G$1" x="22.86" y="25.4" rot="R90"/>
<instance part="H3" gate="G$1" x="30.48" y="25.4" rot="R90"/>
<instance part="H4" gate="G$1" x="38.1" y="25.4" rot="R90"/>
<instance part="GND5" gate="1" x="38.1" y="15.24"/>
</instances>
<busses>
</busses>
<nets>
<net name="VCC" class="0">
<segment>
<pinref part="P+1" gate="VCC" pin="VCC"/>
<pinref part="X1" gate="G$1" pin="6"/>
</segment>
<segment>
<pinref part="P+2" gate="VCC" pin="VCC"/>
<pinref part="X2" gate="G$1" pin="6"/>
</segment>
<segment>
<pinref part="P+3" gate="VCC" pin="VCC"/>
<pinref part="X3" gate="G$1" pin="6"/>
</segment>
<segment>
<pinref part="P+4" gate="VCC" pin="VCC"/>
<pinref part="X4" gate="G$1" pin="6"/>
</segment>
<segment>
<pinref part="P+5" gate="VCC" pin="VCC"/>
<pinref part="X5" gate="G$1" pin="6"/>
</segment>
<segment>
<pinref part="P+6" gate="VCC" pin="VCC"/>
<pinref part="X6" gate="G$1" pin="6"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="GND2" gate="1" pin="GND"/>
<pinref part="X2" gate="G$1" pin="5"/>
</segment>
<segment>
<pinref part="GND3" gate="1" pin="GND"/>
<pinref part="X3" gate="G$1" pin="5"/>
</segment>
<segment>
<pinref part="GND1" gate="1" pin="GND"/>
<pinref part="X1" gate="G$1" pin="5"/>
</segment>
<segment>
<pinref part="GND6" gate="1" pin="GND"/>
<pinref part="X5" gate="G$1" pin="5"/>
</segment>
<segment>
<pinref part="GND7" gate="1" pin="GND"/>
<pinref part="X6" gate="G$1" pin="5"/>
</segment>
<segment>
<pinref part="GND4" gate="1" pin="GND"/>
<pinref part="X4" gate="G$1" pin="5"/>
</segment>
<segment>
<pinref part="GND5" gate="1" pin="GND"/>
<pinref part="H4" gate="G$1" pin="MOUNT"/>
<wire x1="38.1" y1="17.78" x2="38.1" y2="20.32" width="0.1524" layer="91"/>
<pinref part="H3" gate="G$1" pin="MOUNT"/>
<wire x1="38.1" y1="20.32" x2="38.1" y2="22.86" width="0.1524" layer="91"/>
<wire x1="38.1" y1="20.32" x2="30.48" y2="20.32" width="0.1524" layer="91"/>
<wire x1="30.48" y1="20.32" x2="30.48" y2="22.86" width="0.1524" layer="91"/>
<junction x="38.1" y="20.32"/>
<pinref part="H2" gate="G$1" pin="MOUNT"/>
<wire x1="30.48" y1="20.32" x2="22.86" y2="20.32" width="0.1524" layer="91"/>
<wire x1="22.86" y1="20.32" x2="22.86" y2="22.86" width="0.1524" layer="91"/>
<junction x="30.48" y="20.32"/>
<pinref part="H1" gate="G$1" pin="MOUNT"/>
<wire x1="22.86" y1="20.32" x2="15.24" y2="20.32" width="0.1524" layer="91"/>
<wire x1="15.24" y1="20.32" x2="15.24" y2="22.86" width="0.1524" layer="91"/>
<junction x="22.86" y="20.32"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="JP1" gate="G$1" pin="1"/>
<wire x1="83.82" y1="99.06" x2="78.74" y2="99.06" width="0.1524" layer="91"/>
<wire x1="78.74" y1="99.06" x2="78.74" y2="106.68" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="1"/>
<wire x1="78.74" y1="106.68" x2="76.2" y2="106.68" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="2"/>
<wire x1="60.96" y1="106.68" x2="58.42" y2="106.68" width="0.1524" layer="91"/>
<wire x1="58.42" y1="106.68" x2="58.42" y2="96.52" width="0.1524" layer="91"/>
<pinref part="JP1" gate="G$1" pin="3"/>
<wire x1="58.42" y1="96.52" x2="83.82" y2="96.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="JP1" gate="G$1" pin="5"/>
<wire x1="83.82" y1="93.98" x2="81.28" y2="93.98" width="0.1524" layer="91"/>
<wire x1="81.28" y1="93.98" x2="81.28" y2="109.22" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="3"/>
<wire x1="81.28" y1="109.22" x2="76.2" y2="109.22" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="JP1" gate="G$1" pin="7"/>
<wire x1="83.82" y1="91.44" x2="55.88" y2="91.44" width="0.1524" layer="91"/>
<wire x1="55.88" y1="91.44" x2="55.88" y2="109.22" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="4"/>
<wire x1="55.88" y1="109.22" x2="60.96" y2="109.22" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="JP1" gate="G$1" pin="2"/>
<wire x1="99.06" y1="99.06" x2="124.46" y2="99.06" width="0.1524" layer="91"/>
<wire x1="124.46" y1="99.06" x2="124.46" y2="106.68" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="1"/>
<wire x1="124.46" y1="106.68" x2="121.92" y2="106.68" width="0.1524" layer="91"/>
<pinref part="JP2" gate="G$1" pin="1"/>
<wire x1="129.54" y1="99.06" x2="124.46" y2="99.06" width="0.1524" layer="91"/>
<junction x="124.46" y="99.06"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="JP1" gate="G$1" pin="4"/>
<wire x1="99.06" y1="96.52" x2="104.14" y2="96.52" width="0.1524" layer="91"/>
<wire x1="104.14" y1="96.52" x2="104.14" y2="106.68" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="2"/>
<wire x1="104.14" y1="106.68" x2="106.68" y2="106.68" width="0.1524" layer="91"/>
<pinref part="JP2" gate="G$1" pin="3"/>
<wire x1="129.54" y1="96.52" x2="104.14" y2="96.52" width="0.1524" layer="91"/>
<junction x="104.14" y="96.52"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="JP1" gate="G$1" pin="6"/>
<wire x1="99.06" y1="93.98" x2="127" y2="93.98" width="0.1524" layer="91"/>
<wire x1="127" y1="93.98" x2="127" y2="109.22" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="3"/>
<wire x1="127" y1="109.22" x2="121.92" y2="109.22" width="0.1524" layer="91"/>
<pinref part="JP2" gate="G$1" pin="5"/>
<wire x1="129.54" y1="93.98" x2="127" y2="93.98" width="0.1524" layer="91"/>
<junction x="127" y="93.98"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="JP1" gate="G$1" pin="8"/>
<wire x1="99.06" y1="91.44" x2="101.6" y2="91.44" width="0.1524" layer="91"/>
<wire x1="101.6" y1="91.44" x2="101.6" y2="109.22" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="4"/>
<wire x1="101.6" y1="109.22" x2="106.68" y2="109.22" width="0.1524" layer="91"/>
<pinref part="JP2" gate="G$1" pin="7"/>
<wire x1="129.54" y1="91.44" x2="101.6" y2="91.44" width="0.1524" layer="91"/>
<junction x="101.6" y="91.44"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="JP2" gate="G$1" pin="2"/>
<wire x1="144.78" y1="99.06" x2="170.18" y2="99.06" width="0.1524" layer="91"/>
<wire x1="170.18" y1="99.06" x2="170.18" y2="106.68" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="1"/>
<wire x1="170.18" y1="106.68" x2="167.64" y2="106.68" width="0.1524" layer="91"/>
<wire x1="170.18" y1="91.44" x2="170.18" y2="99.06" width="0.1524" layer="91"/>
<junction x="170.18" y="99.06"/>
<pinref part="JP3" gate="-1" pin="1"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="JP2" gate="G$1" pin="4"/>
<wire x1="144.78" y1="96.52" x2="149.86" y2="96.52" width="0.1524" layer="91"/>
<wire x1="149.86" y1="96.52" x2="149.86" y2="106.68" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="2"/>
<wire x1="149.86" y1="106.68" x2="152.4" y2="106.68" width="0.1524" layer="91"/>
<wire x1="167.64" y1="91.44" x2="167.64" y2="96.52" width="0.1524" layer="91"/>
<wire x1="167.64" y1="96.52" x2="165.1" y2="96.52" width="0.1524" layer="91"/>
<junction x="149.86" y="96.52"/>
<wire x1="165.1" y1="96.52" x2="149.86" y2="96.52" width="0.1524" layer="91"/>
<wire x1="165.1" y1="88.9" x2="165.1" y2="96.52" width="0.1524" layer="91"/>
<junction x="165.1" y="96.52"/>
<pinref part="JP3" gate="-1" pin="2"/>
<pinref part="JP3" gate="-2" pin="1"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="JP2" gate="G$1" pin="6"/>
<wire x1="144.78" y1="93.98" x2="160.02" y2="93.98" width="0.1524" layer="91"/>
<wire x1="160.02" y1="93.98" x2="162.56" y2="93.98" width="0.1524" layer="91"/>
<wire x1="162.56" y1="93.98" x2="172.72" y2="93.98" width="0.1524" layer="91"/>
<wire x1="172.72" y1="93.98" x2="172.72" y2="109.22" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="3"/>
<wire x1="172.72" y1="109.22" x2="167.64" y2="109.22" width="0.1524" layer="91"/>
<wire x1="162.56" y1="88.9" x2="162.56" y2="93.98" width="0.1524" layer="91"/>
<junction x="162.56" y="93.98"/>
<wire x1="160.02" y1="86.36" x2="160.02" y2="93.98" width="0.1524" layer="91"/>
<junction x="160.02" y="93.98"/>
<pinref part="JP3" gate="-2" pin="2"/>
<pinref part="JP3" gate="-3" pin="1"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="JP2" gate="G$1" pin="8"/>
<wire x1="144.78" y1="91.44" x2="147.32" y2="91.44" width="0.1524" layer="91"/>
<wire x1="147.32" y1="91.44" x2="147.32" y2="109.22" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="4"/>
<wire x1="147.32" y1="109.22" x2="152.4" y2="109.22" width="0.1524" layer="91"/>
<wire x1="157.48" y1="86.36" x2="157.48" y2="91.44" width="0.1524" layer="91"/>
<wire x1="157.48" y1="91.44" x2="147.32" y2="91.44" width="0.1524" layer="91"/>
<junction x="147.32" y="91.44"/>
<pinref part="JP3" gate="-3" pin="2"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="JP4" gate="G$1" pin="1"/>
<wire x1="83.82" y1="50.8" x2="78.74" y2="50.8" width="0.1524" layer="91"/>
<wire x1="78.74" y1="50.8" x2="78.74" y2="58.42" width="0.1524" layer="91"/>
<pinref part="X4" gate="G$1" pin="1"/>
<wire x1="78.74" y1="58.42" x2="76.2" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="X4" gate="G$1" pin="2"/>
<wire x1="60.96" y1="58.42" x2="58.42" y2="58.42" width="0.1524" layer="91"/>
<wire x1="58.42" y1="58.42" x2="58.42" y2="48.26" width="0.1524" layer="91"/>
<pinref part="JP4" gate="G$1" pin="3"/>
<wire x1="58.42" y1="48.26" x2="83.82" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="JP4" gate="G$1" pin="5"/>
<wire x1="83.82" y1="45.72" x2="81.28" y2="45.72" width="0.1524" layer="91"/>
<wire x1="81.28" y1="45.72" x2="81.28" y2="60.96" width="0.1524" layer="91"/>
<pinref part="X4" gate="G$1" pin="3"/>
<wire x1="81.28" y1="60.96" x2="76.2" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="JP4" gate="G$1" pin="7"/>
<wire x1="83.82" y1="43.18" x2="55.88" y2="43.18" width="0.1524" layer="91"/>
<wire x1="55.88" y1="43.18" x2="55.88" y2="60.96" width="0.1524" layer="91"/>
<pinref part="X4" gate="G$1" pin="4"/>
<wire x1="55.88" y1="60.96" x2="60.96" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="JP4" gate="G$1" pin="2"/>
<wire x1="99.06" y1="50.8" x2="124.46" y2="50.8" width="0.1524" layer="91"/>
<wire x1="124.46" y1="50.8" x2="124.46" y2="58.42" width="0.1524" layer="91"/>
<pinref part="X5" gate="G$1" pin="1"/>
<wire x1="124.46" y1="58.42" x2="121.92" y2="58.42" width="0.1524" layer="91"/>
<pinref part="JP5" gate="G$1" pin="1"/>
<wire x1="129.54" y1="50.8" x2="124.46" y2="50.8" width="0.1524" layer="91"/>
<junction x="124.46" y="50.8"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="JP4" gate="G$1" pin="4"/>
<wire x1="99.06" y1="48.26" x2="104.14" y2="48.26" width="0.1524" layer="91"/>
<wire x1="104.14" y1="48.26" x2="104.14" y2="58.42" width="0.1524" layer="91"/>
<pinref part="X5" gate="G$1" pin="2"/>
<wire x1="104.14" y1="58.42" x2="106.68" y2="58.42" width="0.1524" layer="91"/>
<pinref part="JP5" gate="G$1" pin="3"/>
<wire x1="129.54" y1="48.26" x2="104.14" y2="48.26" width="0.1524" layer="91"/>
<junction x="104.14" y="48.26"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="JP4" gate="G$1" pin="6"/>
<wire x1="99.06" y1="45.72" x2="127" y2="45.72" width="0.1524" layer="91"/>
<wire x1="127" y1="45.72" x2="127" y2="60.96" width="0.1524" layer="91"/>
<pinref part="X5" gate="G$1" pin="3"/>
<wire x1="127" y1="60.96" x2="121.92" y2="60.96" width="0.1524" layer="91"/>
<pinref part="JP5" gate="G$1" pin="5"/>
<wire x1="129.54" y1="45.72" x2="127" y2="45.72" width="0.1524" layer="91"/>
<junction x="127" y="45.72"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="JP4" gate="G$1" pin="8"/>
<wire x1="99.06" y1="43.18" x2="101.6" y2="43.18" width="0.1524" layer="91"/>
<wire x1="101.6" y1="43.18" x2="101.6" y2="60.96" width="0.1524" layer="91"/>
<pinref part="X5" gate="G$1" pin="4"/>
<wire x1="101.6" y1="60.96" x2="106.68" y2="60.96" width="0.1524" layer="91"/>
<pinref part="JP5" gate="G$1" pin="7"/>
<wire x1="129.54" y1="43.18" x2="101.6" y2="43.18" width="0.1524" layer="91"/>
<junction x="101.6" y="43.18"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="JP5" gate="G$1" pin="2"/>
<wire x1="144.78" y1="50.8" x2="170.18" y2="50.8" width="0.1524" layer="91"/>
<wire x1="170.18" y1="50.8" x2="170.18" y2="58.42" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="1"/>
<wire x1="170.18" y1="58.42" x2="167.64" y2="58.42" width="0.1524" layer="91"/>
<wire x1="170.18" y1="43.18" x2="170.18" y2="50.8" width="0.1524" layer="91"/>
<junction x="170.18" y="50.8"/>
<pinref part="JP6" gate="-1" pin="1"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="JP5" gate="G$1" pin="4"/>
<wire x1="144.78" y1="48.26" x2="149.86" y2="48.26" width="0.1524" layer="91"/>
<wire x1="149.86" y1="48.26" x2="149.86" y2="58.42" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="2"/>
<wire x1="149.86" y1="58.42" x2="152.4" y2="58.42" width="0.1524" layer="91"/>
<wire x1="167.64" y1="43.18" x2="167.64" y2="48.26" width="0.1524" layer="91"/>
<wire x1="167.64" y1="48.26" x2="165.1" y2="48.26" width="0.1524" layer="91"/>
<junction x="149.86" y="48.26"/>
<wire x1="165.1" y1="48.26" x2="149.86" y2="48.26" width="0.1524" layer="91"/>
<wire x1="165.1" y1="40.64" x2="165.1" y2="48.26" width="0.1524" layer="91"/>
<junction x="165.1" y="48.26"/>
<pinref part="JP6" gate="-1" pin="2"/>
<pinref part="JP6" gate="-2" pin="1"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="JP5" gate="G$1" pin="6"/>
<wire x1="144.78" y1="45.72" x2="160.02" y2="45.72" width="0.1524" layer="91"/>
<wire x1="160.02" y1="45.72" x2="162.56" y2="45.72" width="0.1524" layer="91"/>
<wire x1="162.56" y1="45.72" x2="172.72" y2="45.72" width="0.1524" layer="91"/>
<wire x1="172.72" y1="45.72" x2="172.72" y2="60.96" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="3"/>
<wire x1="172.72" y1="60.96" x2="167.64" y2="60.96" width="0.1524" layer="91"/>
<wire x1="162.56" y1="40.64" x2="162.56" y2="45.72" width="0.1524" layer="91"/>
<junction x="162.56" y="45.72"/>
<wire x1="160.02" y1="38.1" x2="160.02" y2="45.72" width="0.1524" layer="91"/>
<junction x="160.02" y="45.72"/>
<pinref part="JP6" gate="-2" pin="2"/>
<pinref part="JP6" gate="-3" pin="1"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="JP5" gate="G$1" pin="8"/>
<wire x1="144.78" y1="43.18" x2="147.32" y2="43.18" width="0.1524" layer="91"/>
<wire x1="147.32" y1="43.18" x2="147.32" y2="60.96" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="4"/>
<wire x1="147.32" y1="60.96" x2="152.4" y2="60.96" width="0.1524" layer="91"/>
<wire x1="157.48" y1="38.1" x2="157.48" y2="43.18" width="0.1524" layer="91"/>
<wire x1="157.48" y1="43.18" x2="147.32" y2="43.18" width="0.1524" layer="91"/>
<junction x="147.32" y="43.18"/>
<pinref part="JP6" gate="-3" pin="2"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="6.3" minversion="6.2.2" severity="warning">
Since Version 6.2.2 text objects can contain more than one line,
which will not be processed correctly with this version.
</note>
</compatibility>
</eagle>
