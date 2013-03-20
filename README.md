A simple script to be able to open Ableton Live files created in mac using Synth1 VST in the 
windows version of Ableton Live. Its WIP.

Usage in windows, open a command promt, copy the als file you want to process to where synth1mac2pc.bat is and then:

```batch
synth1mac2pc  filename.als
```
This will generate a file named out.als

What I am doing is replacing 1450726194 with 1395742323 in:

```XML
<BranchDeviceId Value="device:vst:instr:1395742323?n=Synth1" /> 
```
and in:
```XML
<UniqueId Value="1395742323" />
```
So that Live can find the Synth1 vst


I am using http://fart-it.sourceforge.net for the text replace

And http://gnuwin32.sourceforge.net/packages/gzip.htm for zipping unzipping the als file







