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
<text x="-3.81" y="2.54" size="1.016" layer="94">D0</text>
<text x="-3.81" y="-2.54" size="1.016" layer="94">D2</text>
<text x="-3.81" y="-5.08" size="1.016" layer="94">D3</text>
<text x="-3.81" y="0" size="1.016" layer="94">D1</text>
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
<library name="frames" urn="urn:adsk.eagle:library:229">
<description>&lt;b&gt;Frames for Sheet and Layout&lt;/b&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="DINA4_L" urn="urn:adsk.eagle:symbol:13867/1" library_version="1">
<frame x1="0" y1="0" x2="264.16" y2="180.34" columns="4" rows="4" layer="94" border-left="no" border-top="no" border-right="no" border-bottom="no"/>
</symbol>
<symbol name="DOCFIELD" urn="urn:adsk.eagle:symbol:13864/1" library_version="1">
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
<deviceset name="DINA4_L" urn="urn:adsk.eagle:component:13919/1" prefix="FRAME" uservalue="yes" library_version="1">
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
<part name="X2" library="01-my-con" deviceset="ML6D" device="" value="A"/>
<part name="X3" library="01-my-con" deviceset="ML6D" device="" value="A"/>
<part name="GND5" library="supply1" deviceset="GND" device=""/>
<part name="P+4" library="supply1" deviceset="VCC" device=""/>
<part name="GND4" library="supply1" deviceset="GND" device=""/>
<part name="X4" library="01-my-con" deviceset="ML6D" device="" value="A"/>
<part name="GND6" library="supply1" deviceset="GND" device=""/>
<part name="P+5" library="supply1" deviceset="VCC" device=""/>
<part name="P+6" library="supply1" deviceset="VCC" device=""/>
<part name="GND7" library="supply1" deviceset="GND" device=""/>
<part name="P+7" library="supply1" deviceset="VCC" device=""/>
<part name="GND8" library="supply1" deviceset="GND" device=""/>
<part name="X5" library="01-my-con" deviceset="ML6D" device="" value="B"/>
<part name="X6" library="01-my-con" deviceset="ML6D" device="" value="B"/>
<part name="X7" library="01-my-con" deviceset="ML6D" device="" value="B"/>
<part name="P+8" library="supply1" deviceset="VCC" device=""/>
<part name="GND9" library="supply1" deviceset="GND" device=""/>
<part name="X8" library="01-my-con" deviceset="ML6D" device="" value="B"/>
<part name="H1" library="holes" deviceset="MOUNT-PAD-ROUND" device="3.2"/>
<part name="H2" library="holes" deviceset="MOUNT-PAD-ROUND" device="3.2"/>
<part name="H3" library="holes" deviceset="MOUNT-PAD-ROUND" device="3.2"/>
<part name="H4" library="holes" deviceset="MOUNT-PAD-ROUND" device="3.2"/>
<part name="P+9" library="supply1" deviceset="VCC" device=""/>
<part name="GND10" library="supply1" deviceset="GND" device=""/>
<part name="X9" library="01-my-con" deviceset="ML6D" device="" value="A"/>
<part name="P+10" library="supply1" deviceset="VCC" device=""/>
<part name="GND11" library="supply1" deviceset="GND" device=""/>
<part name="X10" library="01-my-con" deviceset="ML6D" device="" value="B"/>
<part name="FRAME1" library="frames" library_urn="urn:adsk.eagle:library:229" deviceset="DINA4_L" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="86.36" y="7.62" size="1.6764" layer="97" distance="60">This documentation describes Open Hardware and is licensed 
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
<instance part="GND1" gate="1" x="73.66" y="124.46" rot="R90"/>
<instance part="P+1" gate="VCC" x="73.66" y="132.08" rot="R270"/>
<instance part="P+2" gate="VCC" x="104.14" y="132.08" rot="R270"/>
<instance part="GND2" gate="1" x="104.14" y="124.46" rot="R90"/>
<instance part="P+3" gate="VCC" x="134.62" y="132.08" rot="R270"/>
<instance part="GND3" gate="1" x="134.62" y="124.46" rot="R90"/>
<instance part="X1" gate="G$1" x="63.5" y="129.54"/>
<instance part="X2" gate="G$1" x="93.98" y="129.54"/>
<instance part="X3" gate="G$1" x="124.46" y="129.54"/>
<instance part="GND5" gate="1" x="33.02" y="7.62"/>
<instance part="P+4" gate="VCC" x="165.1" y="132.08" rot="R270"/>
<instance part="GND4" gate="1" x="165.1" y="124.46" rot="R90"/>
<instance part="X4" gate="G$1" x="154.94" y="129.54"/>
<instance part="GND6" gate="1" x="73.66" y="91.44" rot="R90"/>
<instance part="P+5" gate="VCC" x="73.66" y="99.06" rot="R270"/>
<instance part="P+6" gate="VCC" x="104.14" y="99.06" rot="R270"/>
<instance part="GND7" gate="1" x="104.14" y="91.44" rot="R90"/>
<instance part="P+7" gate="VCC" x="134.62" y="99.06" rot="R270"/>
<instance part="GND8" gate="1" x="134.62" y="91.44" rot="R90"/>
<instance part="X5" gate="G$1" x="63.5" y="96.52"/>
<instance part="X6" gate="G$1" x="93.98" y="96.52"/>
<instance part="X7" gate="G$1" x="124.46" y="96.52"/>
<instance part="P+8" gate="VCC" x="165.1" y="99.06" rot="R270"/>
<instance part="GND9" gate="1" x="165.1" y="91.44" rot="R90"/>
<instance part="X8" gate="G$1" x="154.94" y="96.52"/>
<instance part="H1" gate="G$1" x="10.16" y="17.78" rot="R90"/>
<instance part="H2" gate="G$1" x="17.78" y="17.78" rot="R90"/>
<instance part="H3" gate="G$1" x="25.4" y="17.78" rot="R90"/>
<instance part="H4" gate="G$1" x="33.02" y="17.78" rot="R90"/>
<instance part="P+9" gate="VCC" x="195.58" y="132.08" rot="R270"/>
<instance part="GND10" gate="1" x="195.58" y="124.46" rot="R90"/>
<instance part="X9" gate="G$1" x="185.42" y="129.54"/>
<instance part="P+10" gate="VCC" x="195.58" y="99.06" rot="R270"/>
<instance part="GND11" gate="1" x="195.58" y="91.44" rot="R90"/>
<instance part="X10" gate="G$1" x="185.42" y="96.52"/>
<instance part="FRAME1" gate="G$1" x="0" y="0"/>
<instance part="FRAME1" gate="G$2" x="162.56" y="0"/>
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
<segment>
<pinref part="P+7" gate="VCC" pin="VCC"/>
<pinref part="X7" gate="G$1" pin="6"/>
</segment>
<segment>
<pinref part="P+8" gate="VCC" pin="VCC"/>
<pinref part="X8" gate="G$1" pin="6"/>
</segment>
<segment>
<pinref part="P+9" gate="VCC" pin="VCC"/>
<pinref part="X9" gate="G$1" pin="6"/>
</segment>
<segment>
<pinref part="P+10" gate="VCC" pin="VCC"/>
<pinref part="X10" gate="G$1" pin="6"/>
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
<pinref part="GND5" gate="1" pin="GND"/>
<wire x1="33.02" y1="15.24" x2="33.02" y2="12.7" width="0.1524" layer="91"/>
<wire x1="33.02" y1="12.7" x2="33.02" y2="10.16" width="0.1524" layer="91"/>
<wire x1="25.4" y1="15.24" x2="25.4" y2="12.7" width="0.1524" layer="91"/>
<wire x1="25.4" y1="12.7" x2="33.02" y2="12.7" width="0.1524" layer="91"/>
<junction x="33.02" y="12.7"/>
<wire x1="17.78" y1="15.24" x2="17.78" y2="12.7" width="0.1524" layer="91"/>
<wire x1="17.78" y1="12.7" x2="25.4" y2="12.7" width="0.1524" layer="91"/>
<junction x="25.4" y="12.7"/>
<wire x1="10.16" y1="15.24" x2="10.16" y2="12.7" width="0.1524" layer="91"/>
<wire x1="10.16" y1="12.7" x2="17.78" y2="12.7" width="0.1524" layer="91"/>
<junction x="17.78" y="12.7"/>
<pinref part="H1" gate="G$1" pin="MOUNT"/>
<pinref part="H2" gate="G$1" pin="MOUNT"/>
<pinref part="H3" gate="G$1" pin="MOUNT"/>
<pinref part="H4" gate="G$1" pin="MOUNT"/>
</segment>
<segment>
<pinref part="GND4" gate="1" pin="GND"/>
<pinref part="X4" gate="G$1" pin="5"/>
</segment>
<segment>
<pinref part="GND7" gate="1" pin="GND"/>
<pinref part="X6" gate="G$1" pin="5"/>
</segment>
<segment>
<pinref part="GND8" gate="1" pin="GND"/>
<pinref part="X7" gate="G$1" pin="5"/>
</segment>
<segment>
<pinref part="GND6" gate="1" pin="GND"/>
<pinref part="X5" gate="G$1" pin="5"/>
</segment>
<segment>
<pinref part="GND9" gate="1" pin="GND"/>
<pinref part="X8" gate="G$1" pin="5"/>
</segment>
<segment>
<pinref part="GND10" gate="1" pin="GND"/>
<pinref part="X9" gate="G$1" pin="5"/>
</segment>
<segment>
<pinref part="GND11" gate="1" pin="GND"/>
<pinref part="X10" gate="G$1" pin="5"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="1"/>
<wire x1="55.88" y1="132.08" x2="45.72" y2="132.08" width="0.1524" layer="91"/>
<wire x1="45.72" y1="132.08" x2="45.72" y2="119.38" width="0.1524" layer="91"/>
<wire x1="45.72" y1="119.38" x2="76.2" y2="119.38" width="0.1524" layer="91"/>
<wire x1="76.2" y1="119.38" x2="76.2" y2="132.08" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="1"/>
<wire x1="76.2" y1="132.08" x2="86.36" y2="132.08" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="1"/>
<wire x1="116.84" y1="132.08" x2="106.68" y2="132.08" width="0.1524" layer="91"/>
<wire x1="106.68" y1="132.08" x2="106.68" y2="119.38" width="0.1524" layer="91"/>
<wire x1="106.68" y1="119.38" x2="76.2" y2="119.38" width="0.1524" layer="91"/>
<junction x="76.2" y="119.38"/>
<pinref part="X4" gate="G$1" pin="1"/>
<wire x1="147.32" y1="132.08" x2="137.16" y2="132.08" width="0.1524" layer="91"/>
<wire x1="137.16" y1="132.08" x2="137.16" y2="119.38" width="0.1524" layer="91"/>
<wire x1="137.16" y1="119.38" x2="106.68" y2="119.38" width="0.1524" layer="91"/>
<junction x="106.68" y="119.38"/>
<wire x1="137.16" y1="119.38" x2="167.64" y2="119.38" width="0.1524" layer="91"/>
<wire x1="167.64" y1="119.38" x2="167.64" y2="132.08" width="0.1524" layer="91"/>
<junction x="137.16" y="119.38"/>
<pinref part="X9" gate="G$1" pin="1"/>
<wire x1="167.64" y1="132.08" x2="177.8" y2="132.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="X4" gate="G$1" pin="2"/>
<wire x1="147.32" y1="129.54" x2="139.7" y2="129.54" width="0.1524" layer="91"/>
<wire x1="139.7" y1="129.54" x2="139.7" y2="116.84" width="0.1524" layer="91"/>
<wire x1="139.7" y1="116.84" x2="109.22" y2="116.84" width="0.1524" layer="91"/>
<wire x1="109.22" y1="116.84" x2="109.22" y2="129.54" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="2"/>
<wire x1="109.22" y1="129.54" x2="116.84" y2="129.54" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="2"/>
<wire x1="86.36" y1="129.54" x2="78.74" y2="129.54" width="0.1524" layer="91"/>
<wire x1="78.74" y1="129.54" x2="78.74" y2="116.84" width="0.1524" layer="91"/>
<wire x1="78.74" y1="116.84" x2="109.22" y2="116.84" width="0.1524" layer="91"/>
<junction x="109.22" y="116.84"/>
<pinref part="X1" gate="G$1" pin="2"/>
<wire x1="55.88" y1="129.54" x2="48.26" y2="129.54" width="0.1524" layer="91"/>
<wire x1="48.26" y1="129.54" x2="48.26" y2="116.84" width="0.1524" layer="91"/>
<wire x1="48.26" y1="116.84" x2="78.74" y2="116.84" width="0.1524" layer="91"/>
<junction x="78.74" y="116.84"/>
<wire x1="139.7" y1="116.84" x2="170.18" y2="116.84" width="0.1524" layer="91"/>
<wire x1="170.18" y1="116.84" x2="170.18" y2="129.54" width="0.1524" layer="91"/>
<junction x="139.7" y="116.84"/>
<pinref part="X9" gate="G$1" pin="2"/>
<wire x1="170.18" y1="129.54" x2="177.8" y2="129.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="X2" gate="G$1" pin="3"/>
<wire x1="86.36" y1="127" x2="81.28" y2="127" width="0.1524" layer="91"/>
<wire x1="81.28" y1="127" x2="81.28" y2="114.3" width="0.1524" layer="91"/>
<wire x1="81.28" y1="114.3" x2="50.8" y2="114.3" width="0.1524" layer="91"/>
<wire x1="50.8" y1="114.3" x2="50.8" y2="127" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="3"/>
<wire x1="50.8" y1="127" x2="55.88" y2="127" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="3"/>
<wire x1="116.84" y1="127" x2="111.76" y2="127" width="0.1524" layer="91"/>
<wire x1="111.76" y1="127" x2="111.76" y2="114.3" width="0.1524" layer="91"/>
<wire x1="111.76" y1="114.3" x2="81.28" y2="114.3" width="0.1524" layer="91"/>
<junction x="81.28" y="114.3"/>
<pinref part="X4" gate="G$1" pin="3"/>
<wire x1="147.32" y1="127" x2="142.24" y2="127" width="0.1524" layer="91"/>
<wire x1="142.24" y1="127" x2="142.24" y2="114.3" width="0.1524" layer="91"/>
<wire x1="142.24" y1="114.3" x2="111.76" y2="114.3" width="0.1524" layer="91"/>
<junction x="111.76" y="114.3"/>
<wire x1="142.24" y1="114.3" x2="172.72" y2="114.3" width="0.1524" layer="91"/>
<wire x1="172.72" y1="114.3" x2="172.72" y2="127" width="0.1524" layer="91"/>
<junction x="142.24" y="114.3"/>
<pinref part="X9" gate="G$1" pin="3"/>
<wire x1="172.72" y1="127" x2="177.8" y2="127" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="4"/>
<wire x1="55.88" y1="124.46" x2="53.34" y2="124.46" width="0.1524" layer="91"/>
<wire x1="53.34" y1="124.46" x2="53.34" y2="111.76" width="0.1524" layer="91"/>
<wire x1="53.34" y1="111.76" x2="83.82" y2="111.76" width="0.1524" layer="91"/>
<wire x1="83.82" y1="111.76" x2="114.3" y2="111.76" width="0.1524" layer="91"/>
<wire x1="114.3" y1="111.76" x2="114.3" y2="124.46" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="4"/>
<wire x1="114.3" y1="124.46" x2="116.84" y2="124.46" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="4"/>
<wire x1="86.36" y1="124.46" x2="83.82" y2="124.46" width="0.1524" layer="91"/>
<wire x1="83.82" y1="124.46" x2="83.82" y2="111.76" width="0.1524" layer="91"/>
<junction x="83.82" y="111.76"/>
<wire x1="114.3" y1="111.76" x2="144.78" y2="111.76" width="0.1524" layer="91"/>
<wire x1="144.78" y1="111.76" x2="144.78" y2="124.46" width="0.1524" layer="91"/>
<junction x="114.3" y="111.76"/>
<pinref part="X4" gate="G$1" pin="4"/>
<wire x1="144.78" y1="124.46" x2="147.32" y2="124.46" width="0.1524" layer="91"/>
<wire x1="144.78" y1="111.76" x2="175.26" y2="111.76" width="0.1524" layer="91"/>
<wire x1="175.26" y1="111.76" x2="175.26" y2="124.46" width="0.1524" layer="91"/>
<junction x="144.78" y="111.76"/>
<pinref part="X9" gate="G$1" pin="4"/>
<wire x1="175.26" y1="124.46" x2="177.8" y2="124.46" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="X5" gate="G$1" pin="1"/>
<wire x1="55.88" y1="99.06" x2="45.72" y2="99.06" width="0.1524" layer="91"/>
<wire x1="45.72" y1="99.06" x2="45.72" y2="86.36" width="0.1524" layer="91"/>
<wire x1="45.72" y1="86.36" x2="76.2" y2="86.36" width="0.1524" layer="91"/>
<wire x1="76.2" y1="86.36" x2="76.2" y2="99.06" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="1"/>
<wire x1="76.2" y1="99.06" x2="86.36" y2="99.06" width="0.1524" layer="91"/>
<pinref part="X7" gate="G$1" pin="1"/>
<wire x1="116.84" y1="99.06" x2="106.68" y2="99.06" width="0.1524" layer="91"/>
<wire x1="106.68" y1="99.06" x2="106.68" y2="86.36" width="0.1524" layer="91"/>
<wire x1="106.68" y1="86.36" x2="76.2" y2="86.36" width="0.1524" layer="91"/>
<junction x="76.2" y="86.36"/>
<pinref part="X8" gate="G$1" pin="1"/>
<wire x1="147.32" y1="99.06" x2="137.16" y2="99.06" width="0.1524" layer="91"/>
<wire x1="137.16" y1="99.06" x2="137.16" y2="86.36" width="0.1524" layer="91"/>
<wire x1="137.16" y1="86.36" x2="106.68" y2="86.36" width="0.1524" layer="91"/>
<junction x="106.68" y="86.36"/>
<wire x1="137.16" y1="86.36" x2="167.64" y2="86.36" width="0.1524" layer="91"/>
<wire x1="167.64" y1="86.36" x2="167.64" y2="99.06" width="0.1524" layer="91"/>
<junction x="137.16" y="86.36"/>
<pinref part="X10" gate="G$1" pin="1"/>
<wire x1="167.64" y1="99.06" x2="177.8" y2="99.06" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="X8" gate="G$1" pin="2"/>
<wire x1="147.32" y1="96.52" x2="139.7" y2="96.52" width="0.1524" layer="91"/>
<wire x1="139.7" y1="96.52" x2="139.7" y2="83.82" width="0.1524" layer="91"/>
<wire x1="139.7" y1="83.82" x2="109.22" y2="83.82" width="0.1524" layer="91"/>
<wire x1="109.22" y1="83.82" x2="109.22" y2="96.52" width="0.1524" layer="91"/>
<pinref part="X7" gate="G$1" pin="2"/>
<wire x1="109.22" y1="96.52" x2="116.84" y2="96.52" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="2"/>
<wire x1="86.36" y1="96.52" x2="78.74" y2="96.52" width="0.1524" layer="91"/>
<wire x1="78.74" y1="96.52" x2="78.74" y2="83.82" width="0.1524" layer="91"/>
<wire x1="78.74" y1="83.82" x2="109.22" y2="83.82" width="0.1524" layer="91"/>
<junction x="109.22" y="83.82"/>
<pinref part="X5" gate="G$1" pin="2"/>
<wire x1="55.88" y1="96.52" x2="48.26" y2="96.52" width="0.1524" layer="91"/>
<wire x1="48.26" y1="96.52" x2="48.26" y2="83.82" width="0.1524" layer="91"/>
<wire x1="48.26" y1="83.82" x2="78.74" y2="83.82" width="0.1524" layer="91"/>
<junction x="78.74" y="83.82"/>
<wire x1="139.7" y1="83.82" x2="170.18" y2="83.82" width="0.1524" layer="91"/>
<wire x1="170.18" y1="83.82" x2="170.18" y2="96.52" width="0.1524" layer="91"/>
<junction x="139.7" y="83.82"/>
<pinref part="X10" gate="G$1" pin="2"/>
<wire x1="170.18" y1="96.52" x2="177.8" y2="96.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="X6" gate="G$1" pin="3"/>
<wire x1="86.36" y1="93.98" x2="81.28" y2="93.98" width="0.1524" layer="91"/>
<wire x1="81.28" y1="93.98" x2="81.28" y2="81.28" width="0.1524" layer="91"/>
<wire x1="81.28" y1="81.28" x2="50.8" y2="81.28" width="0.1524" layer="91"/>
<wire x1="50.8" y1="81.28" x2="50.8" y2="93.98" width="0.1524" layer="91"/>
<pinref part="X5" gate="G$1" pin="3"/>
<wire x1="50.8" y1="93.98" x2="55.88" y2="93.98" width="0.1524" layer="91"/>
<pinref part="X7" gate="G$1" pin="3"/>
<wire x1="116.84" y1="93.98" x2="111.76" y2="93.98" width="0.1524" layer="91"/>
<wire x1="111.76" y1="93.98" x2="111.76" y2="81.28" width="0.1524" layer="91"/>
<wire x1="111.76" y1="81.28" x2="81.28" y2="81.28" width="0.1524" layer="91"/>
<junction x="81.28" y="81.28"/>
<pinref part="X8" gate="G$1" pin="3"/>
<wire x1="147.32" y1="93.98" x2="142.24" y2="93.98" width="0.1524" layer="91"/>
<wire x1="142.24" y1="93.98" x2="142.24" y2="81.28" width="0.1524" layer="91"/>
<wire x1="142.24" y1="81.28" x2="111.76" y2="81.28" width="0.1524" layer="91"/>
<junction x="111.76" y="81.28"/>
<wire x1="142.24" y1="81.28" x2="172.72" y2="81.28" width="0.1524" layer="91"/>
<wire x1="172.72" y1="81.28" x2="172.72" y2="93.98" width="0.1524" layer="91"/>
<junction x="142.24" y="81.28"/>
<pinref part="X10" gate="G$1" pin="3"/>
<wire x1="172.72" y1="93.98" x2="177.8" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="X5" gate="G$1" pin="4"/>
<wire x1="55.88" y1="91.44" x2="53.34" y2="91.44" width="0.1524" layer="91"/>
<wire x1="53.34" y1="91.44" x2="53.34" y2="78.74" width="0.1524" layer="91"/>
<wire x1="53.34" y1="78.74" x2="83.82" y2="78.74" width="0.1524" layer="91"/>
<wire x1="83.82" y1="78.74" x2="114.3" y2="78.74" width="0.1524" layer="91"/>
<wire x1="114.3" y1="78.74" x2="114.3" y2="91.44" width="0.1524" layer="91"/>
<pinref part="X7" gate="G$1" pin="4"/>
<wire x1="114.3" y1="91.44" x2="116.84" y2="91.44" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="4"/>
<wire x1="86.36" y1="91.44" x2="83.82" y2="91.44" width="0.1524" layer="91"/>
<wire x1="83.82" y1="91.44" x2="83.82" y2="78.74" width="0.1524" layer="91"/>
<junction x="83.82" y="78.74"/>
<wire x1="114.3" y1="78.74" x2="144.78" y2="78.74" width="0.1524" layer="91"/>
<wire x1="144.78" y1="78.74" x2="144.78" y2="91.44" width="0.1524" layer="91"/>
<junction x="114.3" y="78.74"/>
<pinref part="X8" gate="G$1" pin="4"/>
<wire x1="144.78" y1="91.44" x2="147.32" y2="91.44" width="0.1524" layer="91"/>
<wire x1="144.78" y1="78.74" x2="175.26" y2="78.74" width="0.1524" layer="91"/>
<wire x1="175.26" y1="78.74" x2="175.26" y2="91.44" width="0.1524" layer="91"/>
<junction x="144.78" y="78.74"/>
<pinref part="X10" gate="G$1" pin="4"/>
<wire x1="175.26" y1="91.44" x2="177.8" y2="91.44" width="0.1524" layer="91"/>
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
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
