<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="8.3.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting keepoldvectorfont="yes"/>
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
<package name="DIL40-3">
<pad name="1" x="-24.13" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-21.59" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-19.05" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="-16.51" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="-13.97" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="-11.43" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="-8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="-6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="9" x="-3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="10" x="-1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="11" x="1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="12" x="3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="13" x="6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="14" x="8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="15" x="11.43" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="16" x="13.97" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="17" x="16.51" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="18" x="19.05" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="19" x="21.59" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="20" x="24.13" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="21" x="24.13" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="22" x="21.59" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="23" x="19.05" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="24" x="16.51" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="25" x="13.97" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="26" x="11.43" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="27" x="8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="28" x="6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="29" x="3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="30" x="1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="31" x="-1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="32" x="-3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="33" x="-6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="34" x="-8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="35" x="-11.43" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="36" x="-13.97" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="37" x="-16.51" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="38" x="-19.05" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="39" x="-21.59" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="40" x="-24.13" y="3.81" drill="0.8128" shape="long" rot="R90"/>
</package>
<package name="DIL40-6">
<pad name="1" x="-24.13" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-21.59" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-19.05" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="-16.51" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="-13.97" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="-11.43" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="-8.89" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="-6.35" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="9" x="-3.81" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="10" x="-1.27" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="11" x="1.27" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="12" x="3.81" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="13" x="6.35" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="14" x="8.89" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="15" x="11.43" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="16" x="13.97" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="17" x="16.51" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="18" x="19.05" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="19" x="21.59" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="20" x="24.13" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="21" x="24.13" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="22" x="21.59" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="23" x="19.05" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="24" x="16.51" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="25" x="13.97" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="26" x="11.43" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="27" x="8.89" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="28" x="6.35" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="29" x="3.81" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="30" x="1.27" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="31" x="-1.27" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="32" x="-3.81" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="33" x="-6.35" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="34" x="-8.89" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="35" x="-11.43" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="36" x="-13.97" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="37" x="-16.51" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="38" x="-19.05" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="39" x="-21.59" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="40" x="-24.13" y="7.62" drill="0.8128" shape="long" rot="R90"/>
</package>
<package name="JP20Q">
<wire x1="-25.4" y1="-2.159" x2="-25.4" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-23.241" y1="2.54" x2="-22.86" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="2.159" x2="-22.479" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-22.479" y1="2.54" x2="-20.701" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="2.159" x2="-20.701" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="2.159" x2="-19.939" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-19.939" y1="2.54" x2="-18.161" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="2.159" x2="-18.161" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-18.161" y1="-2.54" x2="-17.78" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="-18.161" y1="-2.54" x2="-19.939" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="-2.159" x2="-19.939" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="-2.159" x2="-20.701" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-20.701" y1="-2.54" x2="-22.479" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="-2.159" x2="-22.479" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="-2.159" x2="-23.241" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="2.159" x2="-17.399" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-17.399" y1="2.54" x2="-15.621" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="2.159" x2="-15.621" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-2.159" x2="-17.399" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-15.621" y1="-2.54" x2="-17.399" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-15.621" y1="-2.54" x2="-15.24" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="2.159" x2="-25.019" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-25.019" y1="2.54" x2="-23.241" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="-2.159" x2="-25.019" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-25.019" y1="-2.54" x2="-23.241" y2="-2.54" width="0.1524" layer="21"/>
<pad name="1" x="-24.13" y="-1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="2" x="-24.13" y="1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="3" x="-21.59" y="-1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="4" x="-21.59" y="1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="5" x="-19.05" y="-1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="6" x="-19.05" y="1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="8" x="-16.51" y="1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="7" x="-16.51" y="-1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<text x="-25.4" y="3.048" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-25.4" y="-4.7625" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<wire x1="-25.0825" y1="-2.8575" x2="-23.1775" y2="-2.8575" width="0.254" layer="21"/>
<wire x1="-13.081" y1="2.54" x2="-12.7" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="2.159" x2="-12.319" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-12.319" y1="2.54" x2="-10.541" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="2.159" x2="-10.541" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="2.159" x2="-9.779" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-9.779" y1="2.54" x2="-8.001" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="2.159" x2="-8.001" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-8.001" y1="-2.54" x2="-7.62" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="-8.001" y1="-2.54" x2="-9.779" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-2.159" x2="-9.779" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-2.159" x2="-10.541" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-10.541" y1="-2.54" x2="-12.319" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-2.159" x2="-12.319" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-2.159" x2="-13.081" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="2.159" x2="-7.239" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-7.239" y1="2.54" x2="-5.461" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="2.159" x2="-5.461" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-2.159" x2="-7.239" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-5.461" y1="-2.54" x2="-7.239" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-5.461" y1="-2.54" x2="-5.08" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="2.159" x2="-14.859" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-14.859" y1="2.54" x2="-13.081" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="-2.159" x2="-14.859" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-14.859" y1="-2.54" x2="-13.081" y2="-2.54" width="0.1524" layer="21"/>
<pad name="9" x="-13.97" y="-1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="10" x="-13.97" y="1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="11" x="-11.43" y="-1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="12" x="-11.43" y="1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="13" x="-8.89" y="-1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="14" x="-8.89" y="1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="16" x="-6.35" y="1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="15" x="-6.35" y="-1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
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
<pad name="17" x="-3.81" y="-1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="18" x="-3.81" y="1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="19" x="-1.27" y="-1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="20" x="-1.27" y="1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="21" x="1.27" y="-1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="22" x="1.27" y="1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="24" x="3.81" y="1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="23" x="3.81" y="-1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<wire x1="7.239" y1="2.54" x2="7.62" y2="2.159" width="0.1524" layer="21"/>
<wire x1="7.62" y1="2.159" x2="8.001" y2="2.54" width="0.1524" layer="21"/>
<wire x1="15.24" y1="2.159" x2="14.859" y2="2.54" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-2.159" x2="14.859" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-2.159" x2="8.001" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-2.159" x2="7.239" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.08" y1="2.159" x2="5.461" y2="2.54" width="0.1524" layer="21"/>
<wire x1="5.461" y1="2.54" x2="7.239" y2="2.54" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-2.159" x2="5.461" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.461" y1="-2.54" x2="7.239" y2="-2.54" width="0.1524" layer="21"/>
<pad name="25" x="6.35" y="-1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="26" x="6.35" y="1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="27" x="8.89" y="-1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="28" x="8.89" y="1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="29" x="11.43" y="-1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="30" x="11.43" y="1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="31" x="13.97" y="-1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="32" x="13.97" y="1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<wire x1="8.001" y1="2.54" x2="9.779" y2="2.54" width="0.1524" layer="21"/>
<wire x1="10.541" y1="2.54" x2="12.319" y2="2.54" width="0.1524" layer="21"/>
<wire x1="13.081" y1="2.54" x2="14.859" y2="2.54" width="0.1524" layer="21"/>
<wire x1="13.081" y1="-2.54" x2="14.859" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="10.541" y1="-2.54" x2="12.319" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="8.001" y1="-2.54" x2="9.779" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-2.159" x2="9.779" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="12.7" y1="-2.159" x2="12.319" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-2.159" x2="10.541" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="12.7" y1="-2.159" x2="13.081" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="10.16" y1="2.159" x2="10.541" y2="2.54" width="0.1524" layer="21"/>
<wire x1="12.7" y1="2.159" x2="13.081" y2="2.54" width="0.1524" layer="21"/>
<wire x1="9.779" y1="2.54" x2="10.16" y2="2.159" width="0.1524" layer="21"/>
<wire x1="12.319" y1="2.54" x2="12.7" y2="2.159" width="0.1524" layer="21"/>
<wire x1="25.4" y1="-2.159" x2="25.4" y2="2.159" width="0.1524" layer="21"/>
<pad name="33" x="16.51" y="-1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="34" x="16.51" y="1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<wire x1="15.621" y1="2.54" x2="17.399" y2="2.54" width="0.1524" layer="21"/>
<wire x1="15.621" y1="-2.54" x2="17.399" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="17.78" y1="-2.159" x2="17.399" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-2.159" x2="15.621" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="15.24" y1="2.159" x2="15.621" y2="2.54" width="0.1524" layer="21"/>
<wire x1="17.399" y1="2.54" x2="17.78" y2="2.159" width="0.1524" layer="21"/>
<pad name="35" x="19.05" y="-1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="36" x="19.05" y="1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<wire x1="18.161" y1="2.54" x2="19.939" y2="2.54" width="0.1524" layer="21"/>
<wire x1="18.161" y1="-2.54" x2="19.939" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="20.32" y1="-2.159" x2="19.939" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="17.78" y1="-2.159" x2="18.161" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="17.78" y1="2.159" x2="18.161" y2="2.54" width="0.1524" layer="21"/>
<wire x1="19.939" y1="2.54" x2="20.32" y2="2.159" width="0.1524" layer="21"/>
<pad name="37" x="21.59" y="-1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="38" x="21.59" y="1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<wire x1="20.701" y1="2.54" x2="22.479" y2="2.54" width="0.1524" layer="21"/>
<wire x1="20.701" y1="-2.54" x2="22.479" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="22.86" y1="-2.159" x2="22.479" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="20.32" y1="-2.159" x2="20.701" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="20.32" y1="2.159" x2="20.701" y2="2.54" width="0.1524" layer="21"/>
<wire x1="22.479" y1="2.54" x2="22.86" y2="2.159" width="0.1524" layer="21"/>
<pad name="39" x="24.13" y="-1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="40" x="24.13" y="1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<wire x1="23.241" y1="2.54" x2="25.019" y2="2.54" width="0.1524" layer="21"/>
<wire x1="23.241" y1="-2.54" x2="25.019" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="25.4" y1="-2.159" x2="25.019" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="22.86" y1="-2.159" x2="23.241" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="22.86" y1="2.159" x2="23.241" y2="2.54" width="0.1524" layer="21"/>
<wire x1="25.019" y1="2.54" x2="25.4" y2="2.159" width="0.1524" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="06DP">
<wire x1="5.08" y1="-7.62" x2="-5.08" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="5.08" x2="-5.08" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="5.08" y1="-7.62" x2="5.08" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="5.08" x2="5.08" y2="5.08" width="0.4064" layer="94"/>
<text x="-3.81" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<text x="-3.81" y="5.842" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="-7.62" y="2.54" visible="pad" length="short" direction="pas" swaplevel="1"/>
<pin name="2" x="-7.62" y="0" visible="pad" length="short" direction="pas" swaplevel="1"/>
<pin name="3" x="-7.62" y="-2.54" visible="pad" length="short" direction="pas" swaplevel="1"/>
<pin name="4" x="-7.62" y="-5.08" visible="pad" length="short" direction="pas" swaplevel="1"/>
<pin name="5" x="7.62" y="-5.08" visible="pad" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="6" x="7.62" y="2.54" visible="pad" length="short" direction="pas" swaplevel="1" rot="R180"/>
<text x="1.27" y="2.54" size="1.016" layer="94">VCC</text>
<text x="1.27" y="-5.08" size="1.016" layer="94">GND</text>
<text x="-3.81" y="2.54" size="1.016" layer="94">D1</text>
<text x="-3.81" y="-2.54" size="1.016" layer="94">D3</text>
<text x="-3.81" y="-5.08" size="1.016" layer="94">D4</text>
<text x="-3.81" y="0" size="1.016" layer="94">D2</text>
</symbol>
<symbol name="CON-20">
<pin name="P$1" x="0" y="22.86" visible="pad" length="short"/>
<pin name="P$2" x="0" y="20.32" visible="pad" length="short"/>
<pin name="P$3" x="0" y="17.78" visible="pad" length="short"/>
<pin name="P$4" x="0" y="15.24" visible="pad" length="short"/>
<pin name="P$5" x="0" y="12.7" visible="pad" length="short"/>
<pin name="P$6" x="0" y="10.16" visible="pad" length="short"/>
<pin name="P$7" x="0" y="7.62" visible="pad" length="short"/>
<pin name="P$8" x="0" y="5.08" visible="pad" length="short"/>
<pin name="P$9" x="0" y="2.54" visible="pad" length="short"/>
<pin name="P$10" x="0" y="0" visible="pad" length="short"/>
<pin name="P$11" x="0" y="-2.54" visible="pad" length="short"/>
<pin name="P$12" x="0" y="-5.08" visible="pad" length="short"/>
<pin name="P$13" x="0" y="-7.62" visible="pad" length="short"/>
<pin name="P$14" x="0" y="-10.16" visible="pad" length="short"/>
<wire x1="2.54" y1="22.86" x2="5.08" y2="22.86" width="0.6096" layer="94"/>
<wire x1="2.54" y1="20.32" x2="5.08" y2="20.32" width="0.6096" layer="94"/>
<wire x1="2.54" y1="17.78" x2="5.08" y2="17.78" width="0.6096" layer="94"/>
<wire x1="2.54" y1="15.24" x2="5.08" y2="15.24" width="0.6096" layer="94"/>
<wire x1="2.54" y1="12.7" x2="5.08" y2="12.7" width="0.6096" layer="94"/>
<wire x1="2.54" y1="10.16" x2="5.08" y2="10.16" width="0.6096" layer="94"/>
<wire x1="2.54" y1="7.62" x2="5.08" y2="7.62" width="0.6096" layer="94"/>
<wire x1="2.54" y1="5.08" x2="5.08" y2="5.08" width="0.6096" layer="94"/>
<wire x1="2.54" y1="2.54" x2="5.08" y2="2.54" width="0.6096" layer="94"/>
<wire x1="2.54" y1="0" x2="5.08" y2="0" width="0.6096" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="5.08" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="2.54" y1="-5.08" x2="5.08" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="2.54" y1="-7.62" x2="5.08" y2="-7.62" width="0.6096" layer="94"/>
<wire x1="2.54" y1="-10.16" x2="5.08" y2="-10.16" width="0.6096" layer="94"/>
<pin name="P$15" x="0" y="-12.7" visible="pad" length="short"/>
<pin name="P$16" x="0" y="-15.24" visible="pad" length="short"/>
<wire x1="2.54" y1="-12.7" x2="5.08" y2="-12.7" width="0.6096" layer="94"/>
<wire x1="2.54" y1="-15.24" x2="5.08" y2="-15.24" width="0.6096" layer="94"/>
<pin name="P$17" x="0" y="-17.78" visible="pad" length="short"/>
<wire x1="2.54" y1="-17.78" x2="5.08" y2="-17.78" width="0.6096" layer="94"/>
<pin name="P$18" x="0" y="-20.32" visible="pad" length="short"/>
<wire x1="2.54" y1="-20.32" x2="5.08" y2="-20.32" width="0.6096" layer="94"/>
<pin name="P$19" x="0" y="-22.86" visible="pad" length="short"/>
<wire x1="2.54" y1="-22.86" x2="5.08" y2="-22.86" width="0.6096" layer="94"/>
<pin name="P$20" x="0" y="-25.4" visible="pad" length="short"/>
<wire x1="2.54" y1="-25.4" x2="5.08" y2="-25.4" width="0.6096" layer="94"/>
</symbol>
<symbol name="J20X2">
<wire x1="-22.86" y1="2.54" x2="-22.86" y2="3.81" width="0.4064" layer="94"/>
<wire x1="-22.86" y1="3.81" x2="-22.86" y2="5.08" width="0.1524" layer="94"/>
<wire x1="-22.86" y1="-2.54" x2="-22.86" y2="-3.81" width="0.4064" layer="94"/>
<wire x1="-22.86" y1="-3.81" x2="-22.86" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="-20.32" y1="2.54" x2="-20.32" y2="3.81" width="0.4064" layer="94"/>
<wire x1="-20.32" y1="3.81" x2="-20.32" y2="5.08" width="0.1524" layer="94"/>
<wire x1="-20.32" y1="-2.54" x2="-20.32" y2="-3.81" width="0.4064" layer="94"/>
<wire x1="-20.32" y1="-3.81" x2="-20.32" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="-17.78" y1="2.54" x2="-17.78" y2="3.81" width="0.4064" layer="94"/>
<wire x1="-17.78" y1="3.81" x2="-17.78" y2="5.08" width="0.1524" layer="94"/>
<wire x1="-17.78" y1="-2.54" x2="-17.78" y2="-3.81" width="0.4064" layer="94"/>
<wire x1="-17.78" y1="-3.81" x2="-17.78" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="-15.24" y1="2.54" x2="-15.24" y2="3.81" width="0.4064" layer="94"/>
<wire x1="-15.24" y1="3.81" x2="-15.24" y2="5.08" width="0.1524" layer="94"/>
<wire x1="-15.24" y1="-2.54" x2="-15.24" y2="-3.81" width="0.4064" layer="94"/>
<wire x1="-15.24" y1="-3.81" x2="-15.24" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="22.86" y1="5.08" x2="20.32" y2="5.08" width="0.4064" layer="94"/>
<wire x1="15.24" y1="5.08" x2="12.7" y2="5.08" width="0.4064" layer="94"/>
<wire x1="12.7" y1="5.08" x2="10.16" y2="5.08" width="0.4064" layer="94"/>
<wire x1="10.16" y1="5.08" x2="-24.765" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-24.765" y1="5.08" x2="-24.765" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="-24.765" y1="-5.08" x2="10.16" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="10.16" y1="-5.08" x2="12.7" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="12.7" y1="-5.08" x2="15.24" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="20.32" y1="-5.08" x2="22.86" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="27.305" y1="-5.08" x2="27.305" y2="5.08" width="0.4064" layer="94"/>
<text x="-25.4" y="-5.08" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="29.845" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="1" x="-22.86" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="2" x="-22.86" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="3" x="-20.32" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="4" x="-20.32" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="5" x="-17.78" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="6" x="-17.78" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="7" x="-15.24" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="8" x="-15.24" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<wire x1="-12.7" y1="2.54" x2="-12.7" y2="3.81" width="0.4064" layer="94"/>
<wire x1="-12.7" y1="3.81" x2="-12.7" y2="5.08" width="0.1524" layer="94"/>
<wire x1="-12.7" y1="-2.54" x2="-12.7" y2="-3.81" width="0.4064" layer="94"/>
<wire x1="-12.7" y1="-3.81" x2="-12.7" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="-10.16" y1="2.54" x2="-10.16" y2="3.81" width="0.4064" layer="94"/>
<wire x1="-10.16" y1="3.81" x2="-10.16" y2="5.08" width="0.1524" layer="94"/>
<wire x1="-10.16" y1="-2.54" x2="-10.16" y2="-3.81" width="0.4064" layer="94"/>
<wire x1="-10.16" y1="-3.81" x2="-10.16" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="2.54" x2="-7.62" y2="3.81" width="0.4064" layer="94"/>
<wire x1="-7.62" y1="3.81" x2="-7.62" y2="5.08" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="-2.54" x2="-7.62" y2="-3.81" width="0.4064" layer="94"/>
<wire x1="-7.62" y1="-3.81" x2="-7.62" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="2.54" x2="-5.08" y2="3.81" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="3.81" x2="-5.08" y2="5.08" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="-2.54" x2="-5.08" y2="-3.81" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="-3.81" x2="-5.08" y2="-5.08" width="0.1524" layer="94"/>
<pin name="9" x="-12.7" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="10" x="-12.7" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="11" x="-10.16" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="12" x="-10.16" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="13" x="-7.62" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="14" x="-7.62" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="15" x="-5.08" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="16" x="-5.08" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
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
<pin name="17" x="-2.54" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="18" x="-2.54" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="19" x="0" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="20" x="0" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="21" x="2.54" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="22" x="2.54" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="23" x="5.08" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="24" x="5.08" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<wire x1="7.62" y1="2.54" x2="7.62" y2="3.81" width="0.4064" layer="94"/>
<wire x1="7.62" y1="3.81" x2="7.62" y2="5.08" width="0.1524" layer="94"/>
<wire x1="7.62" y1="-2.54" x2="7.62" y2="-3.81" width="0.4064" layer="94"/>
<wire x1="7.62" y1="-3.81" x2="7.62" y2="-5.08" width="0.1524" layer="94"/>
<pin name="25" x="7.62" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="26" x="7.62" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="27" x="10.16" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="28" x="10.16" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<wire x1="10.16" y1="2.54" x2="10.16" y2="3.81" width="0.4064" layer="94"/>
<wire x1="10.16" y1="-2.54" x2="10.16" y2="-3.81" width="0.4064" layer="94"/>
<wire x1="10.16" y1="-3.81" x2="10.16" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="10.16" y1="3.81" x2="10.16" y2="5.08" width="0.1524" layer="94"/>
<pin name="29" x="12.7" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="30" x="12.7" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="31" x="15.24" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="32" x="15.24" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<wire x1="12.7" y1="2.54" x2="12.7" y2="3.81" width="0.4064" layer="94"/>
<wire x1="15.24" y1="2.54" x2="15.24" y2="3.81" width="0.4064" layer="94"/>
<wire x1="12.7" y1="-2.54" x2="12.7" y2="-3.81" width="0.4064" layer="94"/>
<wire x1="15.24" y1="-2.54" x2="15.24" y2="-3.81" width="0.4064" layer="94"/>
<wire x1="12.7" y1="-3.81" x2="12.7" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="15.24" y1="-3.81" x2="15.24" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="12.7" y1="3.81" x2="12.7" y2="5.08" width="0.1524" layer="94"/>
<wire x1="15.24" y1="3.81" x2="15.24" y2="5.08" width="0.1524" layer="94"/>
<wire x1="17.78" y1="5.08" x2="15.24" y2="5.08" width="0.4064" layer="94"/>
<wire x1="15.24" y1="-5.08" x2="17.78" y2="-5.08" width="0.4064" layer="94"/>
<pin name="33" x="17.78" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="34" x="17.78" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<wire x1="17.78" y1="2.54" x2="17.78" y2="3.81" width="0.4064" layer="94"/>
<wire x1="17.78" y1="-2.54" x2="17.78" y2="-3.81" width="0.4064" layer="94"/>
<wire x1="17.78" y1="-3.81" x2="17.78" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="17.78" y1="3.81" x2="17.78" y2="5.08" width="0.1524" layer="94"/>
<wire x1="20.32" y1="5.08" x2="17.78" y2="5.08" width="0.4064" layer="94"/>
<wire x1="17.78" y1="-5.08" x2="20.32" y2="-5.08" width="0.4064" layer="94"/>
<pin name="35" x="20.32" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="36" x="20.32" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<wire x1="20.32" y1="2.54" x2="20.32" y2="3.81" width="0.4064" layer="94"/>
<wire x1="20.32" y1="-2.54" x2="20.32" y2="-3.81" width="0.4064" layer="94"/>
<wire x1="20.32" y1="-3.81" x2="20.32" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="20.32" y1="3.81" x2="20.32" y2="5.08" width="0.1524" layer="94"/>
<wire x1="22.86" y1="5.08" x2="20.32" y2="5.08" width="0.4064" layer="94"/>
<wire x1="20.32" y1="-5.08" x2="22.86" y2="-5.08" width="0.4064" layer="94"/>
<pin name="37" x="22.86" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="38" x="22.86" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<wire x1="22.86" y1="2.54" x2="22.86" y2="3.81" width="0.4064" layer="94"/>
<wire x1="22.86" y1="-2.54" x2="22.86" y2="-3.81" width="0.4064" layer="94"/>
<wire x1="22.86" y1="-3.81" x2="22.86" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="22.86" y1="3.81" x2="22.86" y2="5.08" width="0.1524" layer="94"/>
<wire x1="25.4" y1="5.08" x2="22.86" y2="5.08" width="0.4064" layer="94"/>
<wire x1="22.86" y1="-5.08" x2="25.4" y2="-5.08" width="0.4064" layer="94"/>
<pin name="39" x="25.4" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="40" x="25.4" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<wire x1="25.4" y1="2.54" x2="25.4" y2="3.81" width="0.4064" layer="94"/>
<wire x1="25.4" y1="-2.54" x2="25.4" y2="-3.81" width="0.4064" layer="94"/>
<wire x1="25.4" y1="-3.81" x2="25.4" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="25.4" y1="3.81" x2="25.4" y2="5.08" width="0.1524" layer="94"/>
<wire x1="27.305" y1="5.08" x2="25.4" y2="5.08" width="0.4064" layer="94"/>
<wire x1="25.4" y1="-5.08" x2="27.305" y2="-5.08" width="0.4064" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ML6D" prefix="SV" uservalue="yes">
<gates>
<gate name="G$1" symbol="06DP" x="0" y="0"/>
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
<deviceset name="DIL40" prefix="X">
<gates>
<gate name="G$1" symbol="CON-20" x="-10.16" y="0"/>
<gate name="G$2" symbol="CON-20" x="5.08" y="0"/>
</gates>
<devices>
<device name="-3" package="DIL40-3">
<connects>
<connect gate="G$1" pin="P$1" pad="1"/>
<connect gate="G$1" pin="P$10" pad="10"/>
<connect gate="G$1" pin="P$11" pad="11"/>
<connect gate="G$1" pin="P$12" pad="12"/>
<connect gate="G$1" pin="P$13" pad="13"/>
<connect gate="G$1" pin="P$14" pad="14"/>
<connect gate="G$1" pin="P$15" pad="15"/>
<connect gate="G$1" pin="P$16" pad="16"/>
<connect gate="G$1" pin="P$17" pad="17"/>
<connect gate="G$1" pin="P$18" pad="18"/>
<connect gate="G$1" pin="P$19" pad="19"/>
<connect gate="G$1" pin="P$2" pad="2"/>
<connect gate="G$1" pin="P$20" pad="20"/>
<connect gate="G$1" pin="P$3" pad="3"/>
<connect gate="G$1" pin="P$4" pad="4"/>
<connect gate="G$1" pin="P$5" pad="5"/>
<connect gate="G$1" pin="P$6" pad="6"/>
<connect gate="G$1" pin="P$7" pad="7"/>
<connect gate="G$1" pin="P$8" pad="8"/>
<connect gate="G$1" pin="P$9" pad="9"/>
<connect gate="G$2" pin="P$1" pad="40"/>
<connect gate="G$2" pin="P$10" pad="31"/>
<connect gate="G$2" pin="P$11" pad="30"/>
<connect gate="G$2" pin="P$12" pad="29"/>
<connect gate="G$2" pin="P$13" pad="28"/>
<connect gate="G$2" pin="P$14" pad="27"/>
<connect gate="G$2" pin="P$15" pad="26"/>
<connect gate="G$2" pin="P$16" pad="25"/>
<connect gate="G$2" pin="P$17" pad="24"/>
<connect gate="G$2" pin="P$18" pad="23"/>
<connect gate="G$2" pin="P$19" pad="22"/>
<connect gate="G$2" pin="P$2" pad="39"/>
<connect gate="G$2" pin="P$20" pad="21"/>
<connect gate="G$2" pin="P$3" pad="38"/>
<connect gate="G$2" pin="P$4" pad="37"/>
<connect gate="G$2" pin="P$5" pad="36"/>
<connect gate="G$2" pin="P$6" pad="35"/>
<connect gate="G$2" pin="P$7" pad="34"/>
<connect gate="G$2" pin="P$8" pad="33"/>
<connect gate="G$2" pin="P$9" pad="32"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-6" package="DIL40-6">
<connects>
<connect gate="G$1" pin="P$1" pad="1"/>
<connect gate="G$1" pin="P$10" pad="10"/>
<connect gate="G$1" pin="P$11" pad="11"/>
<connect gate="G$1" pin="P$12" pad="12"/>
<connect gate="G$1" pin="P$13" pad="13"/>
<connect gate="G$1" pin="P$14" pad="14"/>
<connect gate="G$1" pin="P$15" pad="15"/>
<connect gate="G$1" pin="P$16" pad="16"/>
<connect gate="G$1" pin="P$17" pad="17"/>
<connect gate="G$1" pin="P$18" pad="18"/>
<connect gate="G$1" pin="P$19" pad="19"/>
<connect gate="G$1" pin="P$2" pad="2"/>
<connect gate="G$1" pin="P$20" pad="20"/>
<connect gate="G$1" pin="P$3" pad="3"/>
<connect gate="G$1" pin="P$4" pad="4"/>
<connect gate="G$1" pin="P$5" pad="5"/>
<connect gate="G$1" pin="P$6" pad="6"/>
<connect gate="G$1" pin="P$7" pad="7"/>
<connect gate="G$1" pin="P$8" pad="8"/>
<connect gate="G$1" pin="P$9" pad="9"/>
<connect gate="G$2" pin="P$1" pad="40"/>
<connect gate="G$2" pin="P$10" pad="31"/>
<connect gate="G$2" pin="P$11" pad="30"/>
<connect gate="G$2" pin="P$12" pad="29"/>
<connect gate="G$2" pin="P$13" pad="28"/>
<connect gate="G$2" pin="P$14" pad="27"/>
<connect gate="G$2" pin="P$15" pad="26"/>
<connect gate="G$2" pin="P$16" pad="25"/>
<connect gate="G$2" pin="P$17" pad="24"/>
<connect gate="G$2" pin="P$18" pad="23"/>
<connect gate="G$2" pin="P$19" pad="22"/>
<connect gate="G$2" pin="P$2" pad="39"/>
<connect gate="G$2" pin="P$20" pad="21"/>
<connect gate="G$2" pin="P$3" pad="38"/>
<connect gate="G$2" pin="P$4" pad="37"/>
<connect gate="G$2" pin="P$5" pad="36"/>
<connect gate="G$2" pin="P$6" pad="35"/>
<connect gate="G$2" pin="P$7" pad="34"/>
<connect gate="G$2" pin="P$8" pad="33"/>
<connect gate="G$2" pin="P$9" pad="32"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="JP20Q" prefix="JP">
<gates>
<gate name="G$1" symbol="J20X2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="JP20Q">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="13" pad="13"/>
<connect gate="G$1" pin="14" pad="14"/>
<connect gate="G$1" pin="15" pad="15"/>
<connect gate="G$1" pin="16" pad="16"/>
<connect gate="G$1" pin="17" pad="17"/>
<connect gate="G$1" pin="18" pad="18"/>
<connect gate="G$1" pin="19" pad="19"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="20" pad="20"/>
<connect gate="G$1" pin="21" pad="21"/>
<connect gate="G$1" pin="22" pad="22"/>
<connect gate="G$1" pin="23" pad="23"/>
<connect gate="G$1" pin="24" pad="24"/>
<connect gate="G$1" pin="25" pad="25"/>
<connect gate="G$1" pin="26" pad="26"/>
<connect gate="G$1" pin="27" pad="27"/>
<connect gate="G$1" pin="28" pad="28"/>
<connect gate="G$1" pin="29" pad="29"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="30" pad="30"/>
<connect gate="G$1" pin="31" pad="31"/>
<connect gate="G$1" pin="32" pad="32"/>
<connect gate="G$1" pin="33" pad="33"/>
<connect gate="G$1" pin="34" pad="34"/>
<connect gate="G$1" pin="35" pad="35"/>
<connect gate="G$1" pin="36" pad="36"/>
<connect gate="G$1" pin="37" pad="37"/>
<connect gate="G$1" pin="38" pad="38"/>
<connect gate="G$1" pin="39" pad="39"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="40" pad="40"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
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
<library name="frames">
<description>&lt;b&gt;Frames for Sheet and Layout&lt;/b&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="DINA4_L">
<frame x1="0" y1="0" x2="264.16" y2="180.34" columns="4" rows="4" layer="94" border-left="no" border-top="no" border-right="no" border-bottom="no"/>
</symbol>
<symbol name="DOCFIELD">
<wire x1="0" y1="0" x2="71.12" y2="0" width="0.1016" layer="94"/>
<wire x1="101.6" y1="15.24" x2="87.63" y2="15.24" width="0.1016" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="5.08" width="0.1016" layer="94"/>
<wire x1="0" y1="5.08" x2="71.12" y2="5.08" width="0.1016" layer="94"/>
<wire x1="0" y1="5.08" x2="0" y2="15.24" width="0.1016" layer="94"/>
<wire x1="101.6" y1="15.24" x2="101.6" y2="5.08" width="0.1016" layer="94"/>
<wire x1="71.12" y1="5.08" x2="71.12" y2="0" width="0.1016" layer="94"/>
<wire x1="71.12" y1="5.08" x2="87.63" y2="5.08" width="0.1016" layer="94"/>
<wire x1="71.12" y1="0" x2="101.6" y2="0" width="0.1016" layer="94"/>
<wire x1="87.63" y1="15.24" x2="87.63" y2="5.08" width="0.1016" layer="94"/>
<wire x1="87.63" y1="15.24" x2="0" y2="15.24" width="0.1016" layer="94"/>
<wire x1="87.63" y1="5.08" x2="101.6" y2="5.08" width="0.1016" layer="94"/>
<wire x1="101.6" y1="5.08" x2="101.6" y2="0" width="0.1016" layer="94"/>
<wire x1="0" y1="15.24" x2="0" y2="22.86" width="0.1016" layer="94"/>
<wire x1="101.6" y1="35.56" x2="0" y2="35.56" width="0.1016" layer="94"/>
<wire x1="101.6" y1="35.56" x2="101.6" y2="22.86" width="0.1016" layer="94"/>
<wire x1="0" y1="22.86" x2="101.6" y2="22.86" width="0.1016" layer="94"/>
<wire x1="0" y1="22.86" x2="0" y2="35.56" width="0.1016" layer="94"/>
<wire x1="101.6" y1="22.86" x2="101.6" y2="15.24" width="0.1016" layer="94"/>
<text x="1.27" y="1.27" size="2.54" layer="94">Date:</text>
<text x="12.7" y="1.27" size="2.54" layer="94">&gt;LAST_DATE_TIME</text>
<text x="72.39" y="1.27" size="2.54" layer="94">Sheet:</text>
<text x="86.36" y="1.27" size="2.54" layer="94">&gt;SHEET</text>
<text x="88.9" y="11.43" size="2.54" layer="94">REV:</text>
<text x="1.27" y="19.05" size="2.54" layer="94">TITLE:</text>
<text x="1.27" y="11.43" size="2.54" layer="94">Document Number:</text>
<text x="17.78" y="19.05" size="2.54" layer="94">&gt;DRAWING_NAME</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="DINA4_L" prefix="FRAME" uservalue="yes">
<description>&lt;b&gt;FRAME&lt;/b&gt;&lt;p&gt;
DIN A4, landscape with extra doc field</description>
<gates>
<gate name="G$1" symbol="DINA4_L" x="0" y="0"/>
<gate name="G$2" symbol="DOCFIELD" x="162.56" y="0" addlevel="must"/>
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
<library name="01-my-jumper">
<description>&lt;b&gt;Jumpers&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="JP5Q">
<description>&lt;b&gt;JUMPER&lt;/b&gt;</description>
<wire x1="-6.35" y1="-2.159" x2="-6.35" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-4.191" y1="2.54" x2="-3.81" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="2.159" x2="-3.429" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="2.54" x2="-1.651" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="2.159" x2="-1.651" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="2.159" x2="-0.889" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="2.54" x2="0.889" y2="2.54" width="0.1524" layer="21"/>
<wire x1="1.27" y1="2.159" x2="0.889" y2="2.54" width="0.1524" layer="21"/>
<wire x1="0.889" y1="-2.54" x2="1.27" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="0.889" y1="-2.54" x2="-0.889" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-2.159" x2="-0.889" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-2.159" x2="-1.651" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-1.651" y1="-2.54" x2="-3.429" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-2.159" x2="-3.429" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-2.159" x2="-4.191" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="6.35" y1="2.159" x2="6.35" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="1.27" y1="2.159" x2="1.651" y2="2.54" width="0.1524" layer="21"/>
<wire x1="1.651" y1="2.54" x2="3.429" y2="2.54" width="0.1524" layer="21"/>
<wire x1="3.81" y1="2.159" x2="3.429" y2="2.54" width="0.1524" layer="21"/>
<wire x1="3.81" y1="2.159" x2="4.191" y2="2.54" width="0.1524" layer="21"/>
<wire x1="4.191" y1="2.54" x2="5.969" y2="2.54" width="0.1524" layer="21"/>
<wire x1="6.35" y1="2.159" x2="5.969" y2="2.54" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-2.159" x2="1.651" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="3.429" y1="-2.54" x2="1.651" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-2.159" x2="4.191" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="3.429" y1="-2.54" x2="3.81" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="5.969" y1="-2.54" x2="4.191" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.969" y1="-2.54" x2="6.35" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="-2.159" x2="-5.969" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-5.969" y1="-2.54" x2="-4.191" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="2.159" x2="-5.969" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-5.969" y1="2.54" x2="-4.191" y2="2.54" width="0.1524" layer="21"/>
<pad name="1" x="-5.08" y="-1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="2" x="-5.08" y="1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="3" x="-2.54" y="-1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="4" x="-2.54" y="1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="5" x="0" y="-1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="6" x="0" y="1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="7" x="2.54" y="-1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="8" x="2.54" y="1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="9" x="5.08" y="-1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<pad name="10" x="5.08" y="1.27" drill="0.9144" diameter="1.6764" shape="octagon"/>
<text x="-6.35" y="3.048" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.35" y="-5.715" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-5.3848" y1="0.9652" x2="-4.7752" y2="1.5748" layer="51"/>
<rectangle x1="-2.8448" y1="0.9652" x2="-2.2352" y2="1.5748" layer="51"/>
<rectangle x1="-0.3048" y1="0.9652" x2="0.3048" y2="1.5748" layer="51"/>
<rectangle x1="-5.3848" y1="-1.5748" x2="-4.7752" y2="-0.9652" layer="51"/>
<rectangle x1="-2.8448" y1="-1.5748" x2="-2.2352" y2="-0.9652" layer="51"/>
<rectangle x1="-0.3048" y1="-1.5748" x2="0.3048" y2="-0.9652" layer="51"/>
<rectangle x1="2.2352" y1="0.9652" x2="2.8448" y2="1.5748" layer="51"/>
<rectangle x1="4.7752" y1="0.9652" x2="5.3848" y2="1.5748" layer="51"/>
<rectangle x1="4.7752" y1="-1.5748" x2="5.3848" y2="-0.9652" layer="51"/>
<rectangle x1="2.2352" y1="-1.5748" x2="2.8448" y2="-0.9652" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="J5">
<wire x1="-5.08" y1="2.54" x2="-5.08" y2="3.81" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="3.81" x2="-5.08" y2="5.08" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="-2.54" x2="-5.08" y2="-3.81" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="-3.81" x2="-5.08" y2="-5.08" width="0.1524" layer="94"/>
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
<wire x1="6.985" y1="5.08" x2="-6.985" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-6.985" y1="5.08" x2="-6.985" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="-6.985" y1="-5.08" x2="6.985" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="6.985" y1="-5.08" x2="6.985" y2="5.08" width="0.4064" layer="94"/>
<text x="-7.62" y="-5.08" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="9.525" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="1" x="-5.08" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="2" x="-5.08" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="3" x="-2.54" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="4" x="-2.54" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="5" x="0" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="6" x="0" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="7" x="2.54" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="8" x="2.54" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="9" x="5.08" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="10" x="5.08" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="JP5Q" prefix="JP" uservalue="yes">
<description>&lt;b&gt;JUMPER&lt;/b&gt;</description>
<gates>
<gate name="B" symbol="J5" x="0" y="0"/>
</gates>
<devices>
<device name="" package="JP5Q">
<connects>
<connect gate="B" pin="1" pad="1"/>
<connect gate="B" pin="10" pad="10"/>
<connect gate="B" pin="2" pad="2"/>
<connect gate="B" pin="3" pad="3"/>
<connect gate="B" pin="4" pad="4"/>
<connect gate="B" pin="5" pad="5"/>
<connect gate="B" pin="6" pad="6"/>
<connect gate="B" pin="7" pad="7"/>
<connect gate="B" pin="8" pad="8"/>
<connect gate="B" pin="9" pad="9"/>
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
<part name="X1" library="01-my-con" deviceset="ML6D" device="" value="A"/>
<part name="X2" library="01-my-con" deviceset="ML6D" device="" value="B"/>
<part name="X4" library="01-my-con" deviceset="ML6D" device="" value="Y"/>
<part name="X3" library="01-my-con" deviceset="ML6D" device="" value="X"/>
<part name="P+4" library="supply1" deviceset="VCC" device=""/>
<part name="GND4" library="supply1" deviceset="GND" device=""/>
<part name="H1" library="holes" deviceset="MOUNT-PAD-ROUND" device="3.2"/>
<part name="H2" library="holes" deviceset="MOUNT-PAD-ROUND" device="3.2"/>
<part name="H3" library="holes" deviceset="MOUNT-PAD-ROUND" device="3.2"/>
<part name="H4" library="holes" deviceset="MOUNT-PAD-ROUND" device="3.2"/>
<part name="GND5" library="supply1" deviceset="GND" device=""/>
<part name="FRAME1" library="frames" deviceset="DINA4_L" device=""/>
<part name="JP1" library="01-my-jumper" deviceset="JP5Q" device=""/>
<part name="JP2" library="01-my-jumper" deviceset="JP5Q" device=""/>
<part name="JP3" library="01-my-jumper" deviceset="JP5Q" device=""/>
<part name="JP4" library="01-my-jumper" deviceset="JP5Q" device=""/>
<part name="P+5" library="supply1" deviceset="VCC" device=""/>
<part name="P+6" library="supply1" deviceset="VCC" device=""/>
<part name="P+7" library="supply1" deviceset="VCC" device=""/>
<part name="P+8" library="supply1" deviceset="VCC" device=""/>
<part name="GND6" library="supply1" deviceset="GND" device=""/>
<part name="GND7" library="supply1" deviceset="GND" device=""/>
<part name="GND8" library="supply1" deviceset="GND" device=""/>
<part name="GND9" library="supply1" deviceset="GND" device=""/>
<part name="X5" library="01-my-con" deviceset="DIL40" device="-3"/>
<part name="X6" library="01-my-con" deviceset="DIL40" device="-6"/>
<part name="JP5" library="01-my-con" deviceset="JP20Q" device=""/>
<part name="JP6" library="01-my-con" deviceset="JP20Q" device=""/>
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
<text x="163.83" y="25.4" size="2.1844" layer="94" distance="60">Copyright Oliver Krebs 2016</text>
</plain>
<instances>
<instance part="GND1" gate="1" x="38.1" y="134.62" rot="R270"/>
<instance part="P+1" gate="VCC" x="38.1" y="142.24" rot="R90"/>
<instance part="P+2" gate="VCC" x="38.1" y="121.92" rot="R90"/>
<instance part="GND2" gate="1" x="38.1" y="114.3" rot="R270"/>
<instance part="P+3" gate="VCC" x="220.98" y="124.46" rot="R270"/>
<instance part="GND3" gate="1" x="220.98" y="116.84" rot="R90"/>
<instance part="X1" gate="G$1" x="48.26" y="139.7" rot="MR0"/>
<instance part="X2" gate="G$1" x="48.26" y="119.38" rot="MR0"/>
<instance part="X4" gate="G$1" x="210.82" y="121.92"/>
<instance part="X3" gate="G$1" x="210.82" y="142.24"/>
<instance part="P+4" gate="VCC" x="220.98" y="144.78" rot="MR90"/>
<instance part="GND4" gate="1" x="220.98" y="137.16" rot="MR270"/>
<instance part="H1" gate="G$1" x="12.7" y="20.32" rot="R90"/>
<instance part="H2" gate="G$1" x="20.32" y="20.32" rot="R90"/>
<instance part="H3" gate="G$1" x="27.94" y="20.32" rot="R90"/>
<instance part="H4" gate="G$1" x="35.56" y="20.32" rot="R90"/>
<instance part="GND5" gate="1" x="35.56" y="10.16"/>
<instance part="FRAME1" gate="G$1" x="0" y="0"/>
<instance part="FRAME1" gate="G$2" x="162.56" y="0"/>
<instance part="JP1" gate="B" x="68.58" y="137.16" rot="R270"/>
<instance part="JP2" gate="B" x="68.58" y="116.84" rot="R270"/>
<instance part="JP3" gate="B" x="190.5" y="139.7" rot="R270"/>
<instance part="JP4" gate="B" x="190.5" y="119.38" rot="R270"/>
<instance part="P+5" gate="VCC" x="78.74" y="132.08" rot="R270"/>
<instance part="P+6" gate="VCC" x="78.74" y="111.76" rot="R270"/>
<instance part="P+7" gate="VCC" x="200.66" y="114.3" rot="R270"/>
<instance part="P+8" gate="VCC" x="200.66" y="134.62" rot="R270"/>
<instance part="GND6" gate="1" x="180.34" y="134.62" rot="MR90"/>
<instance part="GND7" gate="1" x="180.34" y="114.3" rot="MR90"/>
<instance part="GND8" gate="1" x="58.42" y="132.08" rot="R270"/>
<instance part="GND9" gate="1" x="58.42" y="111.76" rot="R270"/>
<instance part="X5" gate="G$1" x="124.46" y="124.46"/>
<instance part="X5" gate="G$2" x="144.78" y="124.46" rot="MR0"/>
<instance part="X6" gate="G$1" x="116.84" y="124.46"/>
<instance part="X6" gate="G$2" x="152.4" y="124.46" rot="MR0"/>
<instance part="JP5" gate="G$1" x="106.68" y="124.46" rot="R270"/>
<instance part="JP6" gate="G$1" x="162.56" y="124.46" rot="R270"/>
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
<pinref part="X4" gate="G$1" pin="6"/>
</segment>
<segment>
<pinref part="X3" gate="G$1" pin="6"/>
<pinref part="P+4" gate="VCC" pin="VCC"/>
</segment>
<segment>
<pinref part="JP1" gate="B" pin="10"/>
<pinref part="P+5" gate="VCC" pin="VCC"/>
</segment>
<segment>
<pinref part="JP2" gate="B" pin="10"/>
<pinref part="P+6" gate="VCC" pin="VCC"/>
</segment>
<segment>
<pinref part="JP4" gate="B" pin="10"/>
<pinref part="P+7" gate="VCC" pin="VCC"/>
</segment>
<segment>
<pinref part="JP3" gate="B" pin="10"/>
<pinref part="P+8" gate="VCC" pin="VCC"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="GND2" gate="1" pin="GND"/>
<pinref part="X2" gate="G$1" pin="5"/>
</segment>
<segment>
<pinref part="GND3" gate="1" pin="GND"/>
<pinref part="X4" gate="G$1" pin="5"/>
</segment>
<segment>
<pinref part="GND1" gate="1" pin="GND"/>
<pinref part="X1" gate="G$1" pin="5"/>
</segment>
<segment>
<pinref part="X3" gate="G$1" pin="5"/>
<pinref part="GND4" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="H1" gate="G$1" pin="MOUNT"/>
<wire x1="12.7" y1="17.78" x2="12.7" y2="15.24" width="0.1524" layer="91"/>
<pinref part="H2" gate="G$1" pin="MOUNT"/>
<wire x1="12.7" y1="15.24" x2="20.32" y2="15.24" width="0.1524" layer="91"/>
<wire x1="20.32" y1="15.24" x2="20.32" y2="17.78" width="0.1524" layer="91"/>
<pinref part="H3" gate="G$1" pin="MOUNT"/>
<wire x1="20.32" y1="15.24" x2="27.94" y2="15.24" width="0.1524" layer="91"/>
<wire x1="27.94" y1="15.24" x2="27.94" y2="17.78" width="0.1524" layer="91"/>
<junction x="20.32" y="15.24"/>
<pinref part="H4" gate="G$1" pin="MOUNT"/>
<wire x1="27.94" y1="15.24" x2="35.56" y2="15.24" width="0.1524" layer="91"/>
<wire x1="35.56" y1="15.24" x2="35.56" y2="17.78" width="0.1524" layer="91"/>
<junction x="27.94" y="15.24"/>
<pinref part="GND5" gate="1" pin="GND"/>
<wire x1="35.56" y1="12.7" x2="35.56" y2="15.24" width="0.1524" layer="91"/>
<junction x="35.56" y="15.24"/>
</segment>
<segment>
<pinref part="JP3" gate="B" pin="9"/>
<pinref part="GND6" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="JP4" gate="B" pin="9"/>
<pinref part="GND7" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="JP1" gate="B" pin="9"/>
<pinref part="GND8" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="JP2" gate="B" pin="9"/>
<pinref part="GND9" gate="1" pin="GND"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="X3" gate="G$1" pin="1"/>
<wire x1="182.88" y1="144.78" x2="198.12" y2="144.78" width="0.1524" layer="91"/>
<pinref part="JP3" gate="B" pin="1"/>
<pinref part="JP3" gate="B" pin="2"/>
<wire x1="198.12" y1="144.78" x2="203.2" y2="144.78" width="0.1524" layer="91"/>
<junction x="198.12" y="144.78"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="X3" gate="G$1" pin="2"/>
<wire x1="182.88" y1="142.24" x2="198.12" y2="142.24" width="0.1524" layer="91"/>
<pinref part="JP3" gate="B" pin="3"/>
<pinref part="JP3" gate="B" pin="4"/>
<wire x1="198.12" y1="142.24" x2="203.2" y2="142.24" width="0.1524" layer="91"/>
<junction x="198.12" y="142.24"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="X3" gate="G$1" pin="3"/>
<wire x1="182.88" y1="139.7" x2="198.12" y2="139.7" width="0.1524" layer="91"/>
<pinref part="JP3" gate="B" pin="5"/>
<pinref part="JP3" gate="B" pin="6"/>
<wire x1="198.12" y1="139.7" x2="203.2" y2="139.7" width="0.1524" layer="91"/>
<junction x="198.12" y="139.7"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="X3" gate="G$1" pin="4"/>
<wire x1="182.88" y1="137.16" x2="198.12" y2="137.16" width="0.1524" layer="91"/>
<pinref part="JP3" gate="B" pin="7"/>
<pinref part="JP3" gate="B" pin="8"/>
<wire x1="198.12" y1="137.16" x2="203.2" y2="137.16" width="0.1524" layer="91"/>
<junction x="198.12" y="137.16"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="X4" gate="G$1" pin="1"/>
<wire x1="182.88" y1="124.46" x2="198.12" y2="124.46" width="0.1524" layer="91"/>
<pinref part="JP4" gate="B" pin="1"/>
<pinref part="JP4" gate="B" pin="2"/>
<wire x1="198.12" y1="124.46" x2="203.2" y2="124.46" width="0.1524" layer="91"/>
<junction x="198.12" y="124.46"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="X4" gate="G$1" pin="2"/>
<wire x1="182.88" y1="121.92" x2="198.12" y2="121.92" width="0.1524" layer="91"/>
<pinref part="JP4" gate="B" pin="3"/>
<pinref part="JP4" gate="B" pin="4"/>
<wire x1="198.12" y1="121.92" x2="203.2" y2="121.92" width="0.1524" layer="91"/>
<junction x="198.12" y="121.92"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="X4" gate="G$1" pin="3"/>
<wire x1="182.88" y1="119.38" x2="198.12" y2="119.38" width="0.1524" layer="91"/>
<pinref part="JP4" gate="B" pin="5"/>
<pinref part="JP4" gate="B" pin="6"/>
<wire x1="198.12" y1="119.38" x2="203.2" y2="119.38" width="0.1524" layer="91"/>
<junction x="198.12" y="119.38"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="X4" gate="G$1" pin="4"/>
<wire x1="182.88" y1="116.84" x2="198.12" y2="116.84" width="0.1524" layer="91"/>
<pinref part="JP4" gate="B" pin="7"/>
<pinref part="JP4" gate="B" pin="8"/>
<wire x1="198.12" y1="116.84" x2="203.2" y2="116.84" width="0.1524" layer="91"/>
<junction x="198.12" y="116.84"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="1"/>
<wire x1="76.2" y1="142.24" x2="60.96" y2="142.24" width="0.1524" layer="91"/>
<pinref part="JP1" gate="B" pin="1"/>
<wire x1="60.96" y1="142.24" x2="55.88" y2="142.24" width="0.1524" layer="91"/>
<junction x="60.96" y="142.24"/>
<pinref part="JP1" gate="B" pin="2"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="2"/>
<wire x1="76.2" y1="139.7" x2="60.96" y2="139.7" width="0.1524" layer="91"/>
<pinref part="JP1" gate="B" pin="3"/>
<wire x1="60.96" y1="139.7" x2="55.88" y2="139.7" width="0.1524" layer="91"/>
<junction x="60.96" y="139.7"/>
<pinref part="JP1" gate="B" pin="4"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="3"/>
<wire x1="76.2" y1="137.16" x2="60.96" y2="137.16" width="0.1524" layer="91"/>
<pinref part="JP1" gate="B" pin="5"/>
<wire x1="60.96" y1="137.16" x2="55.88" y2="137.16" width="0.1524" layer="91"/>
<junction x="60.96" y="137.16"/>
<pinref part="JP1" gate="B" pin="6"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="4"/>
<wire x1="76.2" y1="134.62" x2="60.96" y2="134.62" width="0.1524" layer="91"/>
<pinref part="JP1" gate="B" pin="7"/>
<wire x1="60.96" y1="134.62" x2="55.88" y2="134.62" width="0.1524" layer="91"/>
<junction x="60.96" y="134.62"/>
<pinref part="JP1" gate="B" pin="8"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="X2" gate="G$1" pin="1"/>
<wire x1="76.2" y1="121.92" x2="60.96" y2="121.92" width="0.1524" layer="91"/>
<pinref part="JP2" gate="B" pin="1"/>
<wire x1="60.96" y1="121.92" x2="55.88" y2="121.92" width="0.1524" layer="91"/>
<junction x="60.96" y="121.92"/>
<pinref part="JP2" gate="B" pin="2"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="X2" gate="G$1" pin="2"/>
<wire x1="76.2" y1="119.38" x2="60.96" y2="119.38" width="0.1524" layer="91"/>
<pinref part="JP2" gate="B" pin="3"/>
<wire x1="60.96" y1="119.38" x2="55.88" y2="119.38" width="0.1524" layer="91"/>
<junction x="60.96" y="119.38"/>
<pinref part="JP2" gate="B" pin="4"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="X2" gate="G$1" pin="3"/>
<wire x1="76.2" y1="116.84" x2="60.96" y2="116.84" width="0.1524" layer="91"/>
<pinref part="JP2" gate="B" pin="5"/>
<wire x1="60.96" y1="116.84" x2="55.88" y2="116.84" width="0.1524" layer="91"/>
<junction x="60.96" y="116.84"/>
<pinref part="JP2" gate="B" pin="6"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="X2" gate="G$1" pin="4"/>
<wire x1="76.2" y1="114.3" x2="60.96" y2="114.3" width="0.1524" layer="91"/>
<pinref part="JP2" gate="B" pin="7"/>
<wire x1="60.96" y1="114.3" x2="55.88" y2="114.3" width="0.1524" layer="91"/>
<junction x="60.96" y="114.3"/>
<pinref part="JP2" gate="B" pin="8"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="X5" gate="G$1" pin="P$1"/>
<pinref part="JP5" gate="G$1" pin="2"/>
<wire x1="114.3" y1="147.32" x2="116.84" y2="147.32" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="P$1"/>
<junction x="116.84" y="147.32"/>
<wire x1="116.84" y1="147.32" x2="124.46" y2="147.32" width="0.1524" layer="91"/>
<pinref part="JP5" gate="G$1" pin="1"/>
<wire x1="99.06" y1="147.32" x2="114.3" y2="147.32" width="0.1524" layer="91"/>
<junction x="114.3" y="147.32"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="X5" gate="G$1" pin="P$2"/>
<pinref part="JP5" gate="G$1" pin="4"/>
<wire x1="114.3" y1="144.78" x2="116.84" y2="144.78" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="P$2"/>
<junction x="116.84" y="144.78"/>
<wire x1="116.84" y1="144.78" x2="124.46" y2="144.78" width="0.1524" layer="91"/>
<pinref part="JP5" gate="G$1" pin="3"/>
<wire x1="99.06" y1="144.78" x2="114.3" y2="144.78" width="0.1524" layer="91"/>
<junction x="114.3" y="144.78"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="X5" gate="G$1" pin="P$3"/>
<pinref part="JP5" gate="G$1" pin="6"/>
<wire x1="114.3" y1="142.24" x2="116.84" y2="142.24" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="P$3"/>
<junction x="116.84" y="142.24"/>
<wire x1="116.84" y1="142.24" x2="124.46" y2="142.24" width="0.1524" layer="91"/>
<pinref part="JP5" gate="G$1" pin="5"/>
<wire x1="99.06" y1="142.24" x2="114.3" y2="142.24" width="0.1524" layer="91"/>
<junction x="114.3" y="142.24"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="X5" gate="G$1" pin="P$4"/>
<pinref part="JP5" gate="G$1" pin="8"/>
<wire x1="114.3" y1="139.7" x2="116.84" y2="139.7" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="P$4"/>
<junction x="116.84" y="139.7"/>
<wire x1="116.84" y1="139.7" x2="124.46" y2="139.7" width="0.1524" layer="91"/>
<pinref part="JP5" gate="G$1" pin="7"/>
<wire x1="99.06" y1="139.7" x2="114.3" y2="139.7" width="0.1524" layer="91"/>
<junction x="114.3" y="139.7"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="X5" gate="G$1" pin="P$5"/>
<pinref part="JP5" gate="G$1" pin="10"/>
<wire x1="114.3" y1="137.16" x2="116.84" y2="137.16" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="P$5"/>
<junction x="116.84" y="137.16"/>
<wire x1="116.84" y1="137.16" x2="124.46" y2="137.16" width="0.1524" layer="91"/>
<pinref part="JP5" gate="G$1" pin="9"/>
<wire x1="99.06" y1="137.16" x2="114.3" y2="137.16" width="0.1524" layer="91"/>
<junction x="114.3" y="137.16"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="X5" gate="G$1" pin="P$6"/>
<pinref part="JP5" gate="G$1" pin="12"/>
<wire x1="114.3" y1="134.62" x2="116.84" y2="134.62" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="P$6"/>
<junction x="116.84" y="134.62"/>
<wire x1="116.84" y1="134.62" x2="124.46" y2="134.62" width="0.1524" layer="91"/>
<pinref part="JP5" gate="G$1" pin="11"/>
<wire x1="99.06" y1="134.62" x2="114.3" y2="134.62" width="0.1524" layer="91"/>
<junction x="114.3" y="134.62"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="X5" gate="G$1" pin="P$7"/>
<pinref part="JP5" gate="G$1" pin="14"/>
<wire x1="114.3" y1="132.08" x2="116.84" y2="132.08" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="P$7"/>
<junction x="116.84" y="132.08"/>
<wire x1="116.84" y1="132.08" x2="124.46" y2="132.08" width="0.1524" layer="91"/>
<pinref part="JP5" gate="G$1" pin="13"/>
<wire x1="99.06" y1="132.08" x2="114.3" y2="132.08" width="0.1524" layer="91"/>
<junction x="114.3" y="132.08"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="X5" gate="G$1" pin="P$8"/>
<pinref part="JP5" gate="G$1" pin="16"/>
<wire x1="114.3" y1="129.54" x2="116.84" y2="129.54" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="P$8"/>
<junction x="116.84" y="129.54"/>
<wire x1="116.84" y1="129.54" x2="124.46" y2="129.54" width="0.1524" layer="91"/>
<pinref part="JP5" gate="G$1" pin="15"/>
<wire x1="99.06" y1="129.54" x2="114.3" y2="129.54" width="0.1524" layer="91"/>
<junction x="114.3" y="129.54"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="X5" gate="G$1" pin="P$9"/>
<pinref part="JP5" gate="G$1" pin="18"/>
<wire x1="114.3" y1="127" x2="116.84" y2="127" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="P$9"/>
<junction x="116.84" y="127"/>
<wire x1="116.84" y1="127" x2="124.46" y2="127" width="0.1524" layer="91"/>
<pinref part="JP5" gate="G$1" pin="17"/>
<wire x1="99.06" y1="127" x2="114.3" y2="127" width="0.1524" layer="91"/>
<junction x="114.3" y="127"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="X5" gate="G$1" pin="P$10"/>
<pinref part="JP5" gate="G$1" pin="20"/>
<wire x1="114.3" y1="124.46" x2="116.84" y2="124.46" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="P$10"/>
<junction x="116.84" y="124.46"/>
<wire x1="116.84" y1="124.46" x2="124.46" y2="124.46" width="0.1524" layer="91"/>
<pinref part="JP5" gate="G$1" pin="19"/>
<wire x1="99.06" y1="124.46" x2="114.3" y2="124.46" width="0.1524" layer="91"/>
<junction x="114.3" y="124.46"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<pinref part="X5" gate="G$1" pin="P$11"/>
<pinref part="JP5" gate="G$1" pin="22"/>
<wire x1="114.3" y1="121.92" x2="116.84" y2="121.92" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="P$11"/>
<junction x="116.84" y="121.92"/>
<wire x1="116.84" y1="121.92" x2="124.46" y2="121.92" width="0.1524" layer="91"/>
<pinref part="JP5" gate="G$1" pin="21"/>
<wire x1="99.06" y1="121.92" x2="114.3" y2="121.92" width="0.1524" layer="91"/>
<junction x="114.3" y="121.92"/>
</segment>
</net>
<net name="N$28" class="0">
<segment>
<pinref part="X5" gate="G$1" pin="P$12"/>
<pinref part="JP5" gate="G$1" pin="24"/>
<wire x1="114.3" y1="119.38" x2="116.84" y2="119.38" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="P$12"/>
<junction x="116.84" y="119.38"/>
<wire x1="116.84" y1="119.38" x2="124.46" y2="119.38" width="0.1524" layer="91"/>
<pinref part="JP5" gate="G$1" pin="23"/>
<wire x1="99.06" y1="119.38" x2="114.3" y2="119.38" width="0.1524" layer="91"/>
<junction x="114.3" y="119.38"/>
</segment>
</net>
<net name="N$29" class="0">
<segment>
<pinref part="X5" gate="G$1" pin="P$13"/>
<pinref part="JP5" gate="G$1" pin="26"/>
<wire x1="114.3" y1="116.84" x2="116.84" y2="116.84" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="P$13"/>
<junction x="116.84" y="116.84"/>
<wire x1="116.84" y1="116.84" x2="124.46" y2="116.84" width="0.1524" layer="91"/>
<pinref part="JP5" gate="G$1" pin="25"/>
<wire x1="99.06" y1="116.84" x2="114.3" y2="116.84" width="0.1524" layer="91"/>
<junction x="114.3" y="116.84"/>
</segment>
</net>
<net name="N$30" class="0">
<segment>
<pinref part="X5" gate="G$1" pin="P$14"/>
<pinref part="JP5" gate="G$1" pin="28"/>
<wire x1="114.3" y1="114.3" x2="116.84" y2="114.3" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="P$14"/>
<junction x="116.84" y="114.3"/>
<wire x1="116.84" y1="114.3" x2="124.46" y2="114.3" width="0.1524" layer="91"/>
<pinref part="JP5" gate="G$1" pin="27"/>
<wire x1="99.06" y1="114.3" x2="114.3" y2="114.3" width="0.1524" layer="91"/>
<junction x="114.3" y="114.3"/>
</segment>
</net>
<net name="N$31" class="0">
<segment>
<pinref part="X5" gate="G$1" pin="P$15"/>
<pinref part="JP5" gate="G$1" pin="30"/>
<wire x1="114.3" y1="111.76" x2="116.84" y2="111.76" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="P$15"/>
<junction x="116.84" y="111.76"/>
<wire x1="116.84" y1="111.76" x2="124.46" y2="111.76" width="0.1524" layer="91"/>
<pinref part="JP5" gate="G$1" pin="29"/>
<wire x1="99.06" y1="111.76" x2="114.3" y2="111.76" width="0.1524" layer="91"/>
<junction x="114.3" y="111.76"/>
</segment>
</net>
<net name="N$32" class="0">
<segment>
<pinref part="X5" gate="G$1" pin="P$16"/>
<pinref part="JP5" gate="G$1" pin="32"/>
<wire x1="114.3" y1="109.22" x2="116.84" y2="109.22" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="P$16"/>
<junction x="116.84" y="109.22"/>
<wire x1="116.84" y1="109.22" x2="124.46" y2="109.22" width="0.1524" layer="91"/>
<pinref part="JP5" gate="G$1" pin="31"/>
<wire x1="99.06" y1="109.22" x2="114.3" y2="109.22" width="0.1524" layer="91"/>
<junction x="114.3" y="109.22"/>
</segment>
</net>
<net name="N$33" class="0">
<segment>
<pinref part="X5" gate="G$1" pin="P$17"/>
<pinref part="JP5" gate="G$1" pin="34"/>
<wire x1="114.3" y1="106.68" x2="116.84" y2="106.68" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="P$17"/>
<junction x="116.84" y="106.68"/>
<wire x1="116.84" y1="106.68" x2="124.46" y2="106.68" width="0.1524" layer="91"/>
<pinref part="JP5" gate="G$1" pin="33"/>
<wire x1="99.06" y1="106.68" x2="114.3" y2="106.68" width="0.1524" layer="91"/>
<junction x="114.3" y="106.68"/>
</segment>
</net>
<net name="N$34" class="0">
<segment>
<pinref part="X5" gate="G$1" pin="P$18"/>
<pinref part="JP5" gate="G$1" pin="36"/>
<wire x1="114.3" y1="104.14" x2="116.84" y2="104.14" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="P$18"/>
<junction x="116.84" y="104.14"/>
<wire x1="116.84" y1="104.14" x2="124.46" y2="104.14" width="0.1524" layer="91"/>
<pinref part="JP5" gate="G$1" pin="35"/>
<wire x1="99.06" y1="104.14" x2="114.3" y2="104.14" width="0.1524" layer="91"/>
<junction x="114.3" y="104.14"/>
</segment>
</net>
<net name="N$35" class="0">
<segment>
<pinref part="X5" gate="G$1" pin="P$19"/>
<pinref part="JP5" gate="G$1" pin="38"/>
<wire x1="114.3" y1="101.6" x2="116.84" y2="101.6" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="P$19"/>
<junction x="116.84" y="101.6"/>
<wire x1="116.84" y1="101.6" x2="124.46" y2="101.6" width="0.1524" layer="91"/>
<pinref part="JP5" gate="G$1" pin="37"/>
<wire x1="99.06" y1="101.6" x2="114.3" y2="101.6" width="0.1524" layer="91"/>
<junction x="114.3" y="101.6"/>
</segment>
</net>
<net name="N$36" class="0">
<segment>
<pinref part="X5" gate="G$1" pin="P$20"/>
<pinref part="JP5" gate="G$1" pin="40"/>
<wire x1="114.3" y1="99.06" x2="116.84" y2="99.06" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="P$20"/>
<junction x="116.84" y="99.06"/>
<wire x1="116.84" y1="99.06" x2="124.46" y2="99.06" width="0.1524" layer="91"/>
<pinref part="JP5" gate="G$1" pin="39"/>
<wire x1="99.06" y1="99.06" x2="114.3" y2="99.06" width="0.1524" layer="91"/>
<junction x="114.3" y="99.06"/>
</segment>
</net>
<net name="N$37" class="0">
<segment>
<pinref part="X5" gate="G$2" pin="P$1"/>
<pinref part="JP6" gate="G$1" pin="1"/>
<wire x1="154.94" y1="147.32" x2="152.4" y2="147.32" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$2" pin="P$1"/>
<junction x="152.4" y="147.32"/>
<wire x1="152.4" y1="147.32" x2="144.78" y2="147.32" width="0.1524" layer="91"/>
<pinref part="JP6" gate="G$1" pin="2"/>
<wire x1="170.18" y1="147.32" x2="154.94" y2="147.32" width="0.1524" layer="91"/>
<junction x="154.94" y="147.32"/>
</segment>
</net>
<net name="N$38" class="0">
<segment>
<pinref part="X5" gate="G$2" pin="P$2"/>
<pinref part="JP6" gate="G$1" pin="3"/>
<wire x1="154.94" y1="144.78" x2="152.4" y2="144.78" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$2" pin="P$2"/>
<junction x="152.4" y="144.78"/>
<wire x1="152.4" y1="144.78" x2="144.78" y2="144.78" width="0.1524" layer="91"/>
<pinref part="JP6" gate="G$1" pin="4"/>
<wire x1="170.18" y1="144.78" x2="154.94" y2="144.78" width="0.1524" layer="91"/>
<junction x="154.94" y="144.78"/>
</segment>
</net>
<net name="N$39" class="0">
<segment>
<pinref part="X5" gate="G$2" pin="P$3"/>
<pinref part="JP6" gate="G$1" pin="5"/>
<wire x1="154.94" y1="142.24" x2="152.4" y2="142.24" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$2" pin="P$3"/>
<junction x="152.4" y="142.24"/>
<wire x1="152.4" y1="142.24" x2="144.78" y2="142.24" width="0.1524" layer="91"/>
<pinref part="JP6" gate="G$1" pin="6"/>
<wire x1="170.18" y1="142.24" x2="154.94" y2="142.24" width="0.1524" layer="91"/>
<junction x="154.94" y="142.24"/>
</segment>
</net>
<net name="N$40" class="0">
<segment>
<pinref part="X5" gate="G$2" pin="P$4"/>
<pinref part="JP6" gate="G$1" pin="7"/>
<wire x1="154.94" y1="139.7" x2="152.4" y2="139.7" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$2" pin="P$4"/>
<junction x="152.4" y="139.7"/>
<wire x1="152.4" y1="139.7" x2="144.78" y2="139.7" width="0.1524" layer="91"/>
<pinref part="JP6" gate="G$1" pin="8"/>
<wire x1="170.18" y1="139.7" x2="154.94" y2="139.7" width="0.1524" layer="91"/>
<junction x="154.94" y="139.7"/>
</segment>
</net>
<net name="N$41" class="0">
<segment>
<pinref part="X5" gate="G$2" pin="P$5"/>
<pinref part="JP6" gate="G$1" pin="9"/>
<wire x1="154.94" y1="137.16" x2="152.4" y2="137.16" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$2" pin="P$5"/>
<junction x="152.4" y="137.16"/>
<wire x1="152.4" y1="137.16" x2="144.78" y2="137.16" width="0.1524" layer="91"/>
<pinref part="JP6" gate="G$1" pin="10"/>
<wire x1="170.18" y1="137.16" x2="154.94" y2="137.16" width="0.1524" layer="91"/>
<junction x="154.94" y="137.16"/>
</segment>
</net>
<net name="N$42" class="0">
<segment>
<pinref part="X5" gate="G$2" pin="P$6"/>
<pinref part="JP6" gate="G$1" pin="11"/>
<wire x1="154.94" y1="134.62" x2="152.4" y2="134.62" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$2" pin="P$6"/>
<junction x="152.4" y="134.62"/>
<wire x1="152.4" y1="134.62" x2="144.78" y2="134.62" width="0.1524" layer="91"/>
<pinref part="JP6" gate="G$1" pin="12"/>
<wire x1="170.18" y1="134.62" x2="154.94" y2="134.62" width="0.1524" layer="91"/>
<junction x="154.94" y="134.62"/>
</segment>
</net>
<net name="N$43" class="0">
<segment>
<pinref part="X5" gate="G$2" pin="P$7"/>
<pinref part="JP6" gate="G$1" pin="13"/>
<wire x1="154.94" y1="132.08" x2="152.4" y2="132.08" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$2" pin="P$7"/>
<junction x="152.4" y="132.08"/>
<wire x1="152.4" y1="132.08" x2="144.78" y2="132.08" width="0.1524" layer="91"/>
<pinref part="JP6" gate="G$1" pin="14"/>
<wire x1="170.18" y1="132.08" x2="154.94" y2="132.08" width="0.1524" layer="91"/>
<junction x="154.94" y="132.08"/>
</segment>
</net>
<net name="N$44" class="0">
<segment>
<pinref part="X5" gate="G$2" pin="P$8"/>
<pinref part="JP6" gate="G$1" pin="15"/>
<wire x1="154.94" y1="129.54" x2="152.4" y2="129.54" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$2" pin="P$8"/>
<junction x="152.4" y="129.54"/>
<wire x1="152.4" y1="129.54" x2="144.78" y2="129.54" width="0.1524" layer="91"/>
<pinref part="JP6" gate="G$1" pin="16"/>
<wire x1="170.18" y1="129.54" x2="154.94" y2="129.54" width="0.1524" layer="91"/>
<junction x="154.94" y="129.54"/>
</segment>
</net>
<net name="N$45" class="0">
<segment>
<pinref part="X5" gate="G$2" pin="P$9"/>
<pinref part="JP6" gate="G$1" pin="17"/>
<wire x1="154.94" y1="127" x2="152.4" y2="127" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$2" pin="P$9"/>
<junction x="152.4" y="127"/>
<wire x1="152.4" y1="127" x2="144.78" y2="127" width="0.1524" layer="91"/>
<pinref part="JP6" gate="G$1" pin="18"/>
<wire x1="170.18" y1="127" x2="154.94" y2="127" width="0.1524" layer="91"/>
<junction x="154.94" y="127"/>
</segment>
</net>
<net name="N$46" class="0">
<segment>
<pinref part="X5" gate="G$2" pin="P$10"/>
<pinref part="JP6" gate="G$1" pin="19"/>
<wire x1="154.94" y1="124.46" x2="152.4" y2="124.46" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$2" pin="P$10"/>
<junction x="152.4" y="124.46"/>
<wire x1="152.4" y1="124.46" x2="144.78" y2="124.46" width="0.1524" layer="91"/>
<pinref part="JP6" gate="G$1" pin="20"/>
<wire x1="170.18" y1="124.46" x2="154.94" y2="124.46" width="0.1524" layer="91"/>
<junction x="154.94" y="124.46"/>
</segment>
</net>
<net name="N$47" class="0">
<segment>
<pinref part="X5" gate="G$2" pin="P$11"/>
<pinref part="JP6" gate="G$1" pin="21"/>
<wire x1="154.94" y1="121.92" x2="152.4" y2="121.92" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$2" pin="P$11"/>
<junction x="152.4" y="121.92"/>
<wire x1="152.4" y1="121.92" x2="144.78" y2="121.92" width="0.1524" layer="91"/>
<pinref part="JP6" gate="G$1" pin="22"/>
<wire x1="170.18" y1="121.92" x2="154.94" y2="121.92" width="0.1524" layer="91"/>
<junction x="154.94" y="121.92"/>
</segment>
</net>
<net name="N$48" class="0">
<segment>
<pinref part="X5" gate="G$2" pin="P$12"/>
<pinref part="JP6" gate="G$1" pin="23"/>
<wire x1="154.94" y1="119.38" x2="152.4" y2="119.38" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$2" pin="P$12"/>
<junction x="152.4" y="119.38"/>
<wire x1="152.4" y1="119.38" x2="144.78" y2="119.38" width="0.1524" layer="91"/>
<pinref part="JP6" gate="G$1" pin="24"/>
<wire x1="170.18" y1="119.38" x2="154.94" y2="119.38" width="0.1524" layer="91"/>
<junction x="154.94" y="119.38"/>
</segment>
</net>
<net name="N$49" class="0">
<segment>
<pinref part="X5" gate="G$2" pin="P$13"/>
<pinref part="JP6" gate="G$1" pin="25"/>
<wire x1="154.94" y1="116.84" x2="152.4" y2="116.84" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$2" pin="P$13"/>
<junction x="152.4" y="116.84"/>
<wire x1="152.4" y1="116.84" x2="144.78" y2="116.84" width="0.1524" layer="91"/>
<pinref part="JP6" gate="G$1" pin="26"/>
<wire x1="170.18" y1="116.84" x2="154.94" y2="116.84" width="0.1524" layer="91"/>
<junction x="154.94" y="116.84"/>
</segment>
</net>
<net name="N$50" class="0">
<segment>
<pinref part="X5" gate="G$2" pin="P$14"/>
<pinref part="JP6" gate="G$1" pin="27"/>
<wire x1="154.94" y1="114.3" x2="152.4" y2="114.3" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$2" pin="P$14"/>
<junction x="152.4" y="114.3"/>
<wire x1="152.4" y1="114.3" x2="144.78" y2="114.3" width="0.1524" layer="91"/>
<pinref part="JP6" gate="G$1" pin="28"/>
<wire x1="170.18" y1="114.3" x2="154.94" y2="114.3" width="0.1524" layer="91"/>
<junction x="154.94" y="114.3"/>
</segment>
</net>
<net name="N$51" class="0">
<segment>
<pinref part="X5" gate="G$2" pin="P$15"/>
<pinref part="JP6" gate="G$1" pin="29"/>
<wire x1="154.94" y1="111.76" x2="152.4" y2="111.76" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$2" pin="P$15"/>
<junction x="152.4" y="111.76"/>
<wire x1="152.4" y1="111.76" x2="144.78" y2="111.76" width="0.1524" layer="91"/>
<pinref part="JP6" gate="G$1" pin="30"/>
<wire x1="170.18" y1="111.76" x2="154.94" y2="111.76" width="0.1524" layer="91"/>
<junction x="154.94" y="111.76"/>
</segment>
</net>
<net name="N$52" class="0">
<segment>
<pinref part="X5" gate="G$2" pin="P$16"/>
<pinref part="JP6" gate="G$1" pin="31"/>
<wire x1="154.94" y1="109.22" x2="152.4" y2="109.22" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$2" pin="P$16"/>
<junction x="152.4" y="109.22"/>
<wire x1="152.4" y1="109.22" x2="144.78" y2="109.22" width="0.1524" layer="91"/>
<pinref part="JP6" gate="G$1" pin="32"/>
<wire x1="170.18" y1="109.22" x2="154.94" y2="109.22" width="0.1524" layer="91"/>
<junction x="154.94" y="109.22"/>
</segment>
</net>
<net name="N$53" class="0">
<segment>
<pinref part="X5" gate="G$2" pin="P$17"/>
<pinref part="JP6" gate="G$1" pin="33"/>
<wire x1="154.94" y1="106.68" x2="152.4" y2="106.68" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$2" pin="P$17"/>
<junction x="152.4" y="106.68"/>
<wire x1="152.4" y1="106.68" x2="144.78" y2="106.68" width="0.1524" layer="91"/>
<pinref part="JP6" gate="G$1" pin="34"/>
<wire x1="170.18" y1="106.68" x2="154.94" y2="106.68" width="0.1524" layer="91"/>
<junction x="154.94" y="106.68"/>
</segment>
</net>
<net name="N$54" class="0">
<segment>
<pinref part="X5" gate="G$2" pin="P$18"/>
<pinref part="JP6" gate="G$1" pin="35"/>
<wire x1="154.94" y1="104.14" x2="152.4" y2="104.14" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$2" pin="P$18"/>
<junction x="152.4" y="104.14"/>
<wire x1="152.4" y1="104.14" x2="144.78" y2="104.14" width="0.1524" layer="91"/>
<pinref part="JP6" gate="G$1" pin="36"/>
<wire x1="170.18" y1="104.14" x2="154.94" y2="104.14" width="0.1524" layer="91"/>
<junction x="154.94" y="104.14"/>
</segment>
</net>
<net name="N$55" class="0">
<segment>
<pinref part="X5" gate="G$2" pin="P$19"/>
<pinref part="JP6" gate="G$1" pin="37"/>
<wire x1="154.94" y1="101.6" x2="152.4" y2="101.6" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$2" pin="P$19"/>
<junction x="152.4" y="101.6"/>
<wire x1="152.4" y1="101.6" x2="144.78" y2="101.6" width="0.1524" layer="91"/>
<pinref part="JP6" gate="G$1" pin="38"/>
<wire x1="170.18" y1="101.6" x2="154.94" y2="101.6" width="0.1524" layer="91"/>
<junction x="154.94" y="101.6"/>
</segment>
</net>
<net name="N$56" class="0">
<segment>
<pinref part="X5" gate="G$2" pin="P$20"/>
<pinref part="JP6" gate="G$1" pin="39"/>
<wire x1="154.94" y1="99.06" x2="152.4" y2="99.06" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$2" pin="P$20"/>
<junction x="152.4" y="99.06"/>
<wire x1="152.4" y1="99.06" x2="144.78" y2="99.06" width="0.1524" layer="91"/>
<pinref part="JP6" gate="G$1" pin="40"/>
<wire x1="170.18" y1="99.06" x2="154.94" y2="99.06" width="0.1524" layer="91"/>
<junction x="154.94" y="99.06"/>
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
