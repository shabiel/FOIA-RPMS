HLOT ;IRMFO-ALB/CJM - Services provided by the transport layer;03/24/2004  14:43
 ;;1.6;HEALTH LEVEL SEVEN;**126,131**;Oct 13, 1995;Build 10
 ;
 ;
READHDR(HLCSTATE,HDR) ;
 N SUCCESS,SEG
 N MCODE
 S HLCSTATE("MESSAGE ENDED")=0
 S MCODE="S SUCCESS=$$"_HLCSTATE("READ HEADER")_"(.HLCSTATE,.HDR)"
 X MCODE
 Q SUCCESS
 ;
READSEG(HLCSTATE,SEG) ;
 N RETURN
 N MCODE
 S MCODE="S RETURN=$$"_HLCSTATE("READ SEGMENT")_"(.HLCSTATE,.SEG)"
 X MCODE
 Q RETURN
 ;
OPEN(HLCSTATE) ;
 N MCODE
 I '$L(HLCSTATE("OPEN")) S HLCSTATE("CONNECTED")=0 Q
 S MCODE="D "_HLCSTATE("OPEN")_"(.HLCSTATE)"
 X MCODE
 Q
 ;
CLOSE(HLCSTATE) ;
 N MCODE
 S MCODE="D "_HLCSTATE("CLOSE")_"(.HLCSTATE)"
 X MCODE
 S HLCSTATE("CONNECTED")=0
 Q
 ;
WRITESEG(HLCSTATE,SEG) ;
 N RETURN
 N MCODE
 S MCODE="S RETURN=$$"_HLCSTATE("WRITE SEGMENT")_"(.HLCSTATE,.SEG)"
 X MCODE
 Q RETURN
 ;
WRITEHDR(HLCSTATE,HDR) ;
 N SUCCESS
 N MCODE
 S MCODE="S SUCCESS=$$"_HLCSTATE("WRITE HEADER")_"(.HLCSTATE,.HDR)"
 X MCODE
 Q SUCCESS
 ;
ENDMSG(HLCSTATE) ;
 N RETURN
 N MCODE
 S MCODE="S RETURN=$$"_HLCSTATE("END MESSAGE")_"(.HLCSTATE)"
 X MCODE
 Q RETURN
