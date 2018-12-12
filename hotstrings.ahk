;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Hotstrings initialization :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

HOT_InitGroups() {

	Global
	; GroupAdd, HOT_HotstringsWindowsGroup, UEStudio ; UltraEdit
	GroupAdd, HOT_HotstringsWindowsGroup, UltraEdit ; UltraEdit
	GroupAdd, HOT_HotstringsWindowsGroup, Notepad++ ahk_class Notepad++ ; Notepad++
	GroupAdd, HOT_HotstringsWindowsGroup, ahk_class OpusApp ; Office
	GroupAdd, HOT_HotstringsWindowsGroup, ahk_class XLMAIN ; Excel
	GroupAdd, HOT_HotstringsWindowsGroup, ahk_class rctrl_renwnd32 ; Outlook
	GroupAdd, HOT_HotstringsWindowsGroup, ahk_class rctrl_renwnd32 ; Outlook
	GroupAdd, HOT_HotstringsWindowsGroup, ahk_class PPTFrameClass ; PowerPoint
	GroupAdd, HOT_HotstringsWindowsGroup, EditEmailSubject - Editer le sujet du message ahk_class MozillaDialogClass ; Thunderbird
	GroupAdd, HOT_HotstringsWindowsGroup, ahk_class MozillaWindowClass ; Mozilla
	GroupAdd, HOT_HotstringsWindowsGroup, ahk_class Chrome_WidgetWin_1 ; Chrome
	GroupAdd, HOT_HotstringsWindowsGroup, ahk_class IEFrame ; IE
	GroupAdd, HOT_HotstringsWindowsGroup, ahk_class Maxthon3Cls_MainFrm ; Maxthon
	; GroupAdd, HOT_HotstringsWindowsGroup, heure de d�but ahk_class SWT_Window0 ; Sametime
	GroupAdd, HOT_HotstringsWindowsGroup, ahk_class IMWindowClass ; Lync
	; GroupAdd, HOT_HotstringsWindowsGroup, ahk_class HwndWrapper[TabbedConversations.exe;; ; Lync
	; GroupAdd, HOT_HotstringsWindowsGroup, New Defect ahk_class TNewBugForm ; Quality Center
	; GroupAdd, HOT_HotstringsWindowsGroup, Required Defect Fields ahk_class TRequiredFieldsDlg ; Quality Center
	GroupAdd, HOT_HotstringsWindowsGroup, Edit Text ahk_class #32770 ; SnagIt
	GroupAdd, HOT_HotstringsWindowsGroup, ahk_class DSUI:PDFXCViewer ; PDF-XChange
	GroupAdd, HOT_HotstringsWindowsGroup, ahk_class Sticky_Notes_Note_Window ; Windows 7 Sticky Notes
	GroupAdd, HOT_HotstringsWindowsGroup, KGS ahk_class SunAwtFrame ; KGS
	GroupAdd, HOT_HotstringsWindowsGroup, NoxPlayer ahk_class Qt5QWindowIcon ; Nox
	GroupAdd, HOT_HotstringsWindowsGroup, ahk_class WordPadClass ; WordPad
	GroupAdd, HOT_HotstringsWindowsGroup, Skype ahk_class tSkMainForm ; Skype
	GroupAdd, HOT_HotstringsWindowsGroup, ahk_class TConversationForm ; Skype
	GroupAdd, HOT_HotstringsWindowsGroup, Create task ahk_class #32770 ; Timecamp create task
	GroupAdd, HOT_HotstringsWindowsGroup, Start a Task ahk_class #32770 ; Timecamp start a task
	GroupAdd, HOT_HotstringsWindowsGroup, Task Editor ahk_class #32770 ; Timecamp task editor
	
	GroupAdd, HOT_IgnoringWindows, ahk_class Progman
	GroupAdd, HOT_IgnoringWindows, ahk_class Shell_TrayWnd
	GroupAdd, HOT_IgnoringWindows, ahk_class VistaSwitcher_SwitcherWnd
	GroupAdd, HOT_IgnoringWindows, ahk_class AutoHotkeyGUI
	AHK_CapsLockTickCount := 0
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Hotstrings :
;;;;;;;;;;;;;;

#Hotstring EndChars ������~#��"��<��'��>_-���+��ׯ��|()[]{}':;"/\,�.���:?�!����$��������ؤ%�*`n `t

#IfWinActive, ahk_group HOT_HotstringsWindowsGroup
#Hotstring B0

; Action on the same line of the shortcut resets hotstring detection,
; which is not the case when action is described on many lines ended with 'Return'.
; This allows to chain multiple hostrings together, whose one is the same as the beginning of the other


; Locutions :
;;;;;;;;;;;;;

:*:ms:: ; mais
SendInput, {Left}ai{Right}
Return
:*:msa::{Left 2}{BackSpace 2}{Right 2} ; msa (� partir de maisa)
:*:cpd::
SendInput, {Left 2}{BackSpace 2}e{Right}en{Right}ant ; cependant (� partir de coupd)
Return
:*:cpdt::{BackSpace} ; cependant (� partir de cependantt)
:*:cepdt::{Left 2}en{Right}an{Right} ; cependant
:*:dail::{Left 3}'{Right 3}leurs ; d'ailleurs
:*:parail::{Left 3} {Right 3}leurs ; par ailleurs
:*:parav::
SendInput, {Left 2} {Right 2}ance ; par avance
Return
:*:parave::{Left}{BackSpace 4}{Lef 2}{BackSpace}[{Right 3} ; parave (� partir de par avancee)
:C*:ps:: ; puis
SendInput, {Left}ui{Right}
Return
:C*:Ps:: ; Puis
SendInput, {Left}ui{Right}
Return
:C*:psy::{Left 2}{BackSpace 2}{Right 2} ; psy (� partir de puisy)
:C*:Psy::{Left 2}{BackSpace 2}{Right 2} ; psy (� partir de Puisy)
:C*:pse::{Left 2}{BackSpace 2}{Right 2} ; pse (� partir de puise)
:C*:Pse::{Left 2}{BackSpace 2}{Right 2} ; pse (� partir de Puise)
:C*:psa::{Left 2}{BackSpace 2}{Right 2} ; psa (� partir de puisa)
:C*:Psa::{Left 2}{BackSpace 2}{Right 2} ; psa (� partir de Puisa)
:C*:pso::{Left 2}{BackSpace 2}{Right 2} ; pso (� partir de puiso)
:C*:Pso::{Left 2}{BackSpace 2}{Right 2} ; pso (� partir de Puiso)
:C:ya::{BackSpace}{Left 2}il {Right} {Right} ; il y a
:C:Ya::{BackSpace}{Left}{BackSpace}Il y {Right} ; Il y a
:*:qya:: ; qu'il y a
SendInput, {Left 2}u'il {Right} {Right}
Return
:*:sya:: ; s'il y a
SendInput, {Left 2}'il {Right} {Right}
Return
:C:yap::{BackSpace}{Left 3}il n'{Right} {Right} {Right}as ; il n'y a pas
:C:Yap::{BackSpace}{Left 2}{BackSpace}Il n'y {Right} {Right}as ; Il n'y a pas
:*:qyap::{Left 4}n'{Right 3} {Right}as ; qu'il n'y a pas (� partir de qu'il y ap)
:*:syap::{Left 4}n'{Right 3} {Right}as ; s'il n'y a pas (� partir de s'il y ap)
:C:nya::{BackSpace}{Left 3}il {Right}'{Right} {Right} ; il n'y a
:C:Nya::{BackSpace}{Left 2}{BackSpace}Il n'{Right} {Right} ; Il n'y a
:C:nyap::{BackSpace}{Left 4}il {Right}'{Right} {Right} {Right}as ; il n'y a pas
:C:Nyap::{BackSpace}{Left 3}{BackSpace}Il n'{Right} {Right} {Right}as ; Il n'y a pas
:*:qny:: ; qu'il n'y (� partir de quelqu'uny)
SendInput, {Left 2}{BackSpace}{Left 3}{BackSpace 4}{Right 3}il {Right}'{Right}
Return
:*:qnya:: ; qu'il n'y a (� partir de qu'il n'ya)
SendInput, {Left} {Right}
Return
:*:qnyap:: ; qu'il n'y a pas (� partir de qu'il n'y ap)
SendInput, {Left} {Right}as
Return
:*:qnyapt::{Left}{BackSpace 2}oin{Right} ; qu'il n'y a point (� partir de qu'il n'y a past)
:*:snya:: ; s'il n'y a
SendInput, {Left 3}'il {Right}'{Right} {Right}
Return
:*:snyap::{Left} {Right}as ; s'il n'y a pas (� partir de s'il n'y ap)
:C:yena::{BackSpace}{Left 4}il {Right} {Right 2} {Right} ; il y en a
:C:Yena::{BackSpace}{Left 3}{BackSpace}Il y {Right 2} {Right} ; Il y en a
:*:qyena:: ; qu'il y en a
SendInput, {Left 4}u'il {Right} {Right 2} {Right}
Return
:*:syena:: ; s'il y en a
SendInput, {Left 4}'il {Right} {Right 2} {Right}
Return
:C:nyena::{BackSpace}{Left 5}il {Right}'{Right} {Right 2} {Right} ; il n'y en a
:C:Nyena::{BackSpace}{Left 4}{BackSpace}Il n'{Right} {Right 2} {Right} ; Il n'y en a
::qnyena::{BackSpace}{Left 5}u'il {Right}'{Right} {Right 2} {Right} ; qu'il n'y en a
:*:snyena:: ; s'il n'y en a
SendInput, {Left 5}'il {Right}'{Right} {Right 2} {Right}
Return
:C:yenap::{BackSpace}{Left 5}il n'{Right} {Right 2} {Right} {Right}as ; il n'y en a pas
:C:Yenap::{BackSpace}{Left 4}{BackSpace}Il n'y {Right 2} {Right} {Right}as ; Il n'y en a pas
:*:syenap::{Left 7}n'{Right 6} {Right}as ; s'il n'y en a pas (� partir de s'il y en ap)
:*:qyenap::{Left 7}n'{Right 6} {Right}as ; qu'il n'y en a pas (� partir de qu'il y en ap)
:C:yav::{BackSpace}{Left 3}il {Right} {Right 2}ait ; il y avait
:C:Yav::{BackSpace}{Left 2}{BackSpace}Il y {Right 2}ait ; Il y avait
:*:qyav:: ; qu'il y avait (� partir de qu'il y av)
SendInput, ait
Return
:*:syav:: ; s'il y avait (� partir de s'il y av)
SendInput, ait
Return
:C:yavp::{BackSpace}{Left 4}il n'{Right} {Right 2}ait {Right}as ; il n'y avait pas
:C:Yavp::{BackSpace}{Left 3}{BackSpace}Il n'y {Right 2}ait {Right}as ; Il n'y avait pas
:*:qyavp::{Left 8}n'{Right 7} {Right}as ; qu'il n'y avait pas (� partir de qu'il y avaitp)
:*:syavp::{Left 8}n'{Right 7} {Right}as ; s'il n'y avait pas (� partir de s'il y avaitp)
:C:nyav::{BackSpace}{Left 4}il {Right}'{Right} {Right 2}ait ; il n'y avait
:C:Nyav::{BackSpace}{Left 3}{BackSpace}Il n'{Right} {Right 2}ait ; Il n'y avait
::qnyav::{BackSpace}{Left 4}u'il {Right}'{Right} {Right 2}ait ; qu'il n'y avait
:C:yenav::{BackSpace}{Left 5}il {Right} {Right 2} {Right 2}ait ; il y en avait
:C:Yenav::{BackSpace}{Left 4}{BackSpace}Il y {Right 2} {Right 2}ait ; il y en avait
:*:qyenav:: ; qu'il y en avait (� partir de qu'il y en av)
SendInput, ait
Return
:*:syenav::  ; s'il y en avait (� partir de s'il y en av)
SendInput, ait
Return
:C:nyenav::{BackSpace}{Left 6}il {Right}'{Right} {Right 2} {Right 2}ait ; il n'y en avait
:C:Nyenav::{BackSpace}{Left 5}{BackSpace}Il n'{Right} {Right 2} {Right 2}ait ; Il n'y en avait
::qnyenav::{BackSpace}{Left 6}u'il {Right}'{Right} {Right 2} {Right 2}ait ; qu'il n'y en avait
:*:snyenav:: ; s'il n'y en avait (� partir de s'il n'y en av)
SendInput, ait
Return
:*:snyenavp::{Left} {Right}as ; s'il n'y en avait pas (� partir de s'il n'y en avaitp)
:C:yenavp::{BackSpace}{Left 6}il n'{Right} {Right 2} {Right 2}ait {Right}as ; il n'y en avait pas
:C:Yenavp::{BackSpace}{Left 5}{BackSpace}Il n'y {Right 2} {Right 2}ait {Right}as ; Il n'y en avait pas
:*:qyenavp::{Left 11}n'{Right 10} {Right}as ; qu'il n'y en avait pas (� partir de qu'il y en avaitp)
:*:syenavp::{Left 11}n'{Right 10} {Right}as ; s'il n'y en avait pas (� partir de s'il y en avaitp)

:*:dlm:: ; dlm (� partir de d�s lorsm)
SendInput, {Left}{BackSpace 3}{Left}{BackSpace 3}{Right 2}
Return
:*:dlmo::{Left 3}ans {Right}a {Right}esure {Right}� ; dans la mesure o�
:*:dc::{Left}on{Right} ; donc
::cad::{BackSpace}{Left}{BackSpace}'est-�-{Right}ire ; c'est-�-dire
:*:c�d::{Left 2}'est-{Right}-{Right}ire ; c'est-�-dire

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Subordonates :
;;;;;;;;;;;;;;;;

::sil::{BackSpace}{Left 2}'{Right 2} ; s'il
:*:tq:: ; tant que
SendInput, {Left}ant {Right}ue
Return
:*:tq'::{Left}{BackSpace}{Right} ; tant qu' (� partir de tant que')
:*:tq&::{BackSpace 2}'un ; tant qu'un (� partir de tant que&)
:*:tqa::{Left}{BackSpace}'{Right} ; tant qu'a (� partir de tant quea)
:*:tq�::{Left}{BackSpace}'{Right} ; tant qu'� (� partir de tant que�)
:*:tqe::{Left}{BackSpace}'{Right} ; tant qu'e (� partir de tant quee)
:*:tq�::{Left}{BackSpace}'{Right} ; tant qu'� (� partir de tant que�)
:*:tq�::{Left}{BackSpace}'{Right} ; tant qu'� (� partir de tant que�)
:*:tq�::{Left}{BackSpace}'{Right} ; tant qu'� (� partir de tant que�)
:*:tqi::{Left}{BackSpace}'{Right} ; tant qu'i (� partir de tant quei)
:*:tqo::{Left}{BackSpace}'{Right} ; tant qu'o (� partir de tant queo)
:*:tqu::{Left}{BackSpace}'{Right} ; tant qu'u (� partir de tant queu)
:*:tqy::{Left}{BackSpace}'{Right} ; tant qu'y (� partir de tant quey)
:*:bq:: ; bien que
SendInput, {Left}ien {Right}ue
Return
:*:bq'::{Left}{BackSpace}{Right} ; bien qu' (� partir de bien que')
:*:bq&::{BackSpace 2}'un ; bien qu'un (� partir de bien que&)
:*:bqa::{Left}{BackSpace}'{Right} ; bien qu'a (� partir de bien quea)
:*:bq�::{Left}{BackSpace}'{Right} ; bien qu'� (� partir de bien que�)
:*:bqe::{Left}{BackSpace}'{Right} ; bien qu'e (� partir de bien quee)
:*:bq�::{Left}{BackSpace}'{Right} ; bien qu'� (� partir de bien que�)
:*:bq�::{Left}{BackSpace}'{Right} ; bien qu'� (� partir de bien que�)
:*:bq�::{Left}{BackSpace}'{Right} ; bien qu'� (� partir de bien que�)
:*:bqi::{Left}{BackSpace}'{Right} ; bien qu'i (� partir de bien quei)
:*:bqo::{Left}{BackSpace}'{Right} ; bien qu'o (� partir de bien queo)
:*:bqu::{Left}{BackSpace}'{Right} ; bien qu'u (� partir de bien queu)
:*:bqy::{Left}{BackSpace}'{Right} ; bien qu'y (� partir de bien quey)
:*:q ::{Left}ue{Right} ; que
:*:q':: ; qu'
SendInput, {Left}u{Right}
Return
:*:q'l::{Left}el{Right}e ; qu'elle (� partir de qu'l)
:*:tdq:: ; tandis que
SendInput, {Left 2}an{Right}is {Right}ue
Return
:*:tdq'::{Left}{BackSpace}{Right} ; tandis qu' (� partir de tandis que')
:*:tdq&::{BackSpace 2}'un ; tandis qu'un (� partir de tandis que&)
:*:tdqa::{Left}{BackSpace}'{Right} ; tandis qu'a (� partir de tandis quea)
:*:tdq�::{Left}{BackSpace}'{Right} ; tandis qu'� (� partir de tandis que�)
:*:tdqe::{Left}{BackSpace}'{Right} ; tandis qu'e (� partir de tandis quee)
:*:tdq�::{Left}{BackSpace}'{Right} ; tandis qu'� (� partir de tandis que�)
:*:tdq�::{Left}{BackSpace}'{Right} ; tandis qu'� (� partir de tandis que�)
:*:tdq�::{Left}{BackSpace}'{Right} ; tandis qu'� (� partir de tandis que�)
:*:tdqi::{Left}{BackSpace}'{Right} ; tandis qu'i (� partir de tandis quei)
:*:tdqo::{Left}{BackSpace}'{Right} ; tandis qu'o (� partir de tandis queo)
:*:tdqu::{Left}{BackSpace}'{Right} ; tandis qu'u (� partir de tandis queu)
:*:tdqy::{Left}{BackSpace}'{Right} ; tandis qu'y (� partir de tandis quey)
:C*:dpq:: ; depuis que (� partir de depuisq)
SendInput, {Left} {Right}ue
Return
:*:dpq'::{Left}{BackSpace}{Right} ; depuis qu' (� partir de depuis que')
:*:dpq&::{BackSpace 2}'un ; depuis qu'un (� partir de depuis que&)
:*:dpqa::{Left}{BackSpace}'{Right} ; depuis qu'a (� partir de depuis quea)
:*:dpq�::{Left}{BackSpace}'{Right} ; depuis qu'� (� partir de depuis que�)
:*:dpqe::{Left}{BackSpace}'{Right} ; depuis qu'e (� partir de depuis quee)
:*:dpq�::{Left}{BackSpace}'{Right} ; depuis qu'� (� partir de depuis que�)
:*:dpq�::{Left}{BackSpace}'{Right} ; depuis qu'� (� partir de depuis que�)
:*:dpq�::{Left}{BackSpace}'{Right} ; depuis qu'� (� partir de depuis que�)
:*:dpqi::{Left}{BackSpace}'{Right} ; depuis qu'i (� partir de depuis quei)
:*:dpqo::{Left}{BackSpace}'{Right} ; depuis qu'o (� partir de depuis queo)
:*:dpqu::{Left}{BackSpace}'{Right} ; depuis qu'u (� partir de depuis queu)
:*:dpqy::{Left}{BackSpace}'{Right} ; depuis qu'y (� partir de depuis quey)
:*:dq:: ; d�s que
SendInput, {Left}�s {Right}ue
Return
:*:dq'::{Left}{BackSpace}{Right} ; d�s qu' (� partir de d�s que')
:*:dq&::{BackSpace 2}'un ; d�s qu'un (� partir de d�s que&)
:*:dqa::{Left}{BackSpace}'{Right} ; d�s qu'a (� partir de d�s quea)
:*:dq�::{Left}{BackSpace}'{Right} ; d�s qu'� (� partir de d�s que�)
:*:dqe::{Left}{BackSpace}'{Right} ; d�s qu'e (� partir de d�s quee)
:*:dq�::{Left}{BackSpace}'{Right} ; d�s qu'� (� partir de d�s que�)
:*:dq�::{Left}{BackSpace}'{Right} ; d�s qu'� (� partir de d�s que�)
:*:dq�::{Left}{BackSpace}'{Right} ; d�s qu'� (� partir de d�s que�)
:*:dqi::{Left}{BackSpace}'{Right} ; d�s qu'i (� partir de d�s quei)
:*:dqo::{Left}{BackSpace}'{Right} ; d�s qu'o (� partir de d�s queo)
:*:dqu::{Left}{BackSpace}'{Right} ; d�s qu'u (� partir de d�s queu)
:*:dqy::{Left}{BackSpace}'{Right} ; d�s qu'y (� partir de d�s quey)
:*:asq:: ; ainsi que
SendInput, {Left 2}in{Right}i {Right}ue
Return
:*:asq'::{Left}{BackSpace}{Right} ; ainsi qu' (� partir de ainsi que')
:*:asq&::{BackSpace 2}'un ; ainsi qu'un (� partir de ainsi que&)
:*:asqa::{Left}{BackSpace}'{Right} ; ainsi qu'a (� partir de ainsi quea)
:*:asq�::{Left}{BackSpace}'{Right} ; ainsi qu'� (� partir de ainsi que�)
:*:asqe::{Left}{BackSpace}'{Right} ; ainsi qu'e (� partir de ainsi quee)
:*:asq�::{Left}{BackSpace}'{Right} ; ainsi qu'� (� partir de ainsi que�)
:*:asq�::{Left}{BackSpace}'{Right} ; ainsi qu'� (� partir de ainsi que�)
:*:asq�::{Left}{BackSpace}'{Right} ; ainsi qu'� (� partir de ainsi que�)
:*:asqi::{Left}{BackSpace}'{Right} ; ainsi qu'i (� partir de ainsi quei)
:*:asqo::{Left}{BackSpace}'{Right} ; ainsi qu'o (� partir de ainsi queo)
:*:asqu::{Left}{BackSpace}'{Right} ; ainsi qu'u (� partir de ainsi queu)
:*:asqy::{Left}{BackSpace}'{Right} ; ainsi qu'y (� partir de ainsi quey)
:*:alq:: ; alors que
SendInput, {Left}ors {Right}ue
Return
:*:alq'::{Left}{BackSpace}{Right} ; alors qu' (� partir de alors que')
:*:alq&::{BackSpace 2}'un ; alors qu'un (� partir de alors que&)
:*:alqa::{Left}{BackSpace}'{Right} ; alors qu'a (� partir de alors quea)
:*:alq�::{Left}{BackSpace}'{Right} ; alors qu'� (� partir de alors que�)
:*:alqe::{Left}{BackSpace}'{Right} ; alors qu'e (� partir de alors quee)
:*:alq�::{Left}{BackSpace}'{Right} ; alors qu'� (� partir de alors que�)
:*:alq�::{Left}{BackSpace}'{Right} ; alors qu'� (� partir de alors que�)
:*:alq�::{Left}{BackSpace}'{Right} ; alors qu'� (� partir de alors que�)
:*:alqi::{Left}{BackSpace}'{Right} ; alors qu'i (� partir de alors quei)
:*:alqo::{Left}{BackSpace}'{Right} ; alors qu'o (� partir de alors queo)
:*:alqu::{Left}{BackSpace}'{Right} ; alors qu'u (� partir de alors queu)
:*:alqy::{Left}{BackSpace}'{Right} ; alors qu'y (� partir de alors quey)
:*:dlq:: ; d�s lors que (� partir de d�s lorsq)
SendInput, {Left} {Right}ue
Return
:*:dlq'::{Left}{BackSpace}{Right} ; d�s lors qu' (� partir de d�s lors que')
:*:dlq&::{BackSpace 2}'un ; d�s lors qu'un (� partir de d�s lors que&)
:*:dlqa::{Left}{BackSpace}'{Right} ; d�s lors qu'a (� partir de d�s lors quea)
:*:dlq�::{Left}{BackSpace}'{Right} ; d�s lors qu'� (� partir de d�s lors que�)
:*:dlqe::{Left}{BackSpace}'{Right} ; d�s lors qu'e (� partir de d�s lors quee)
:*:dlq�::{Left}{BackSpace}'{Right} ; d�s lors qu'� (� partir de d�s lors que�)
:*:dlq�::{Left}{BackSpace}'{Right} ; d�s lors qu'� (� partir de d�s lors que�)
:*:dlq�::{Left}{BackSpace}'{Right} ; d�s lors qu'� (� partir de d�s lors que�)
:*:dlqi::{Left}{BackSpace}'{Right} ; d�s lors qu'i (� partir de d�s lors quei)
:*:dlqo::{Left}{BackSpace}'{Right} ; d�s lors qu'o (� partir de d�s lors queo)
:*:dlqu::{Left}{BackSpace}'{Right} ; d�s lors qu'u (� partir de d�s lors queu)
:*:dlqy::{Left}{BackSpace}'{Right} ; d�s lors qu'y (� partir de d�s lors quey)
:*:pdq:: ; pendant que
SendInput, {Left 2}en{Right}ant {Right}ue
Return
:*:pdq'::{Left}{BackSpace}{Right} ; pendant qu' (� partir de pendant que')
:*:pdq&::{BackSpace 2}'un ; pendant qu'un (� partir de pendant que&)
:*:pdqa::{Left}{BackSpace}'{Right} ; pendant qu'a (� partir de pendant quea)
:*:pdq�::{Left}{BackSpace}'{Right} ; pendant qu'� (� partir de pendant que�)
:*:pdqe::{Left}{BackSpace}'{Right} ; pendant qu'e (� partir de pendant quee)
:*:pdq�::{Left}{BackSpace}'{Right} ; pendant qu'� (� partir de pendant que�)
:*:pdq�::{Left}{BackSpace}'{Right} ; pendant qu'� (� partir de pendant que�)
:*:pdq�::{Left}{BackSpace}'{Right} ; pendant qu'� (� partir de pendant que�)
:*:pdqi::{Left}{BackSpace}'{Right} ; pendant qu'i (� partir de pendant quei)
:*:pdqo::{Left}{BackSpace}'{Right} ; pendant qu'o (� partir de pendant queo)
:*:pdqu::{Left}{BackSpace}'{Right} ; pendant qu'u (� partir de pendant queu)
:*:pdqy::{Left}{BackSpace}'{Right} ; pendant qu'y (� partir de pendant quey)
:*:lq:: ; lorsque
SendInput, {Left}ors{Right}ue
Return
:*:lq'::{Left}{BackSpace}{Right} ; lorsqu' (� partir de lorsque')
:*:lq&::{BackSpace 2}'un ; lorsqu'un (� partir de lorsque&)
:*:lqa::{Left}{BackSpace}'{Right} ; lorsqu'a (� partir de lorsquea)
:*:lq�::{Left}{BackSpace}'{Right} ; lorsqu'� (� partir de lorsque�)
:*:lqe::{Left}{BackSpace}'{Right} ; lorsqu'e (� partir de lorsquee)
:*:lq�::{Left}{BackSpace}'{Right} ; lorsqu'� (� partir de lorsque�)
:*:lq�::{Left}{BackSpace}'{Right} ; lorsqu'� (� partir de lorsque�)
:*:lq�::{Left}{BackSpace}'{Right} ; lorsqu'� (� partir de lorsque�)
:*:lqi::{Left}{BackSpace}'{Right} ; lorsqu'i (� partir de lorsquei)
:*:lqo::{Left}{BackSpace}'{Right} ; lorsqu'o (� partir de lorsqueo)
:*:lqu::{Left}{BackSpace}'{Right} ; lorsqu'u (� partir de lorsqueu)
:*:lqy::{Left}{BackSpace}'{Right} ; lorsqu'y (� partir de lorsquey)
:*:lrsq:: ; lorsque
SendInput, {Left 3}o{Right 3}ue
Return
:*:lrsq'::{Left}{BackSpace}{Right} ; lorsqu' (� partir de lorsque')
:*:lrsq&::{BackSpace 2}'un ; lorsqu'un (� partir de lorsque&)
:*:lrsqa::{Left}{BackSpace}'{Right} ; lorsqu'a (� partir de lorsquea)
:*:lrsq�::{Left}{BackSpace}'{Right} ; lorsqu'� (� partir de lorsque�)
:*:lrsqe::{Left}{BackSpace}'{Right} ; lorsqu'e (� partir de lorsquee)
:*:lrsq�::{Left}{BackSpace}'{Right} ; lorsqu'� (� partir de lorsque�)
:*:lrsq�::{Left}{BackSpace}'{Right} ; lorsqu'� (� partir de lorsque�)
:*:lrsq�::{Left}{BackSpace}'{Right} ; lorsqu'� (� partir de lorsque�)
:*:lrsqi::{Left}{BackSpace}'{Right} ; lorsqu'i (� partir de lorsquei)
:*:lrsqo::{Left}{BackSpace}'{Right} ; lorsqu'o (� partir de lorsqueo)
:*:lrsqu::{Left}{BackSpace}'{Right} ; lorsqu'u (� partir de lorsqueu)
:*:lrsqy::{Left}{BackSpace}'{Right} ; lorsqu'y (� partir de lorsquey)
:*:qd::{Left}uan{Right} ; quand
:*:jqcq:: ; jusqu'� ce que (� partir de jusquecq)
SendInput, {Left 2}{BackSpace}'� {Right}e {Right}ue
Return
:*:jqcq'::{Left}{BackSpace}{Right} ; jusqu'� ce qu' (� partir de jusqu'� ce que')
:*:jqcq&::{BackSpace 2}'un ; jusqu'� ce qu'un (� partir de jusqu'� ce que&)
:*:jqcqa::{Left}{BackSpace}'{Right} ; jusqu'� ce qu'a (� partir de jusqu'� ce quea)
:*:jqcq�::{Left}{BackSpace}'{Right} ; jusqu'� ce qu'� (� partir de jusqu'� ce que�)
:*:jqcqe::{Left}{BackSpace}'{Right} ; jusqu'� ce qu'e (� partir de jusqu'� ce quee)
:*:jqcq�::{Left}{BackSpace}'{Right} ; jusqu'� ce qu'� (� partir de jusqu'� ce que�)
:*:jqcq�::{Left}{BackSpace}'{Right} ; jusqu'� ce qu'� (� partir de jusqu'� ce que�)
:*:jqcq�::{Left}{BackSpace}'{Right} ; jusqu'� ce qu'� (� partir de jusqu'� ce que�)
:*:jqcqi::{Left}{BackSpace}'{Right} ; jusqu'� ce qu'i (� partir de jusqu'� ce quei)
:*:jqcqo::{Left}{BackSpace}'{Right} ; jusqu'� ce qu'o (� partir de jusqu'� ce queo)
:*:jqcqu::{Left}{BackSpace}'{Right} ; jusqu'� ce qu'u (� partir de jusqu'� ce queu)
:*:jqcqy::{Left}{BackSpace}'{Right} ; jusqu'� ce qu'y (� partir de jusqu'� ce quey)
:*:jsqc:: ; jusqu'� ce (� partir de jusquec)
SendInput, {Left}{BackSpace}'� {Right}e
Return
:*:jsqcq:: ; jusqu'� ce que (� partir de jusqu'� ceq)
SendInput, {Left} {Right}ue
Return
:*:jsqcq'::{Left}{BackSpace}{Right} ; jusqu'� ce qu' (� partir de jusqu'� ce que')
:*:jsqcq&::{BackSpace 2}'un ; jusqu'� ce qu'un (� partir de jusqu'� ce que&)
:*:jsqcqa::{Left}{BackSpace}'{Right} ; jusqu'� ce qu'a (� partir de jusqu'� ce quea)
:*:jsqcq�::{Left}{BackSpace}'{Right} ; jusqu'� ce qu'� (� partir de jusqu'� ce que�)
:*:jsqcqe::{Left}{BackSpace}'{Right} ; jusqu'� ce qu'e (� partir de jusqu'� ce quee)
:*:jsqcq�::{Left}{BackSpace}'{Right} ; jusqu'� ce qu'� (� partir de jusqu'� ce que�)
:*:jsqcq�::{Left}{BackSpace}'{Right} ; jusqu'� ce qu'� (� partir de jusqu'� ce que�)
:*:jsqcq�::{Left}{BackSpace}'{Right} ; jusqu'� ce qu'� (� partir de jusqu'� ce que�)
:*:jsqcqi::{Left}{BackSpace}'{Right} ; jusqu'� ce qu'i (� partir de jusqu'� ce quei)
:*:jsqcqo::{Left}{BackSpace}'{Right} ; jusqu'� ce qu'o (� partir de jusqu'� ce queo)
:*:jsqcqu::{Left}{BackSpace}'{Right} ; jusqu'� ce qu'u (� partir de jusqu'� ce queu)
:*:jsqcqy::{Left}{BackSpace}'{Right} ; jusqu'� ce qu'y (� partir de jusqu'� ce quey)
:*:apq:: ; apr�s que
SendInput, {Left}r�s {Right}ue
Return
:*:apq'::{Left}{BackSpace}{Right} ; apr�s qu' (� partir de apr�s que')
:*:apq&::{BackSpace 2}'un ; apr�s qu'un (� partir de apr�s que&)
:*:apqa::{Left}{BackSpace}'{Right} ; apr�s qu'a (� partir de apr�s quea)
:*:apq�::{Left}{BackSpace}'{Right} ; apr�s qu'� (� partir de apr�s que�)
:*:apqe::{Left}{BackSpace}'{Right} ; apr�s qu'e (� partir de apr�s quee)
:*:apq�::{Left}{BackSpace}'{Right} ; apr�s qu'� (� partir de apr�s que�)
:*:apq�::{Left}{BackSpace}'{Right} ; apr�s qu'� (� partir de apr�s que�)
:*:apq�::{Left}{BackSpace}'{Right} ; apr�s qu'� (� partir de apr�s que�)
:*:apqi::{Left}{BackSpace}'{Right} ; apr�s qu'i (� partir de apr�s quei)
:*:apqo::{Left}{BackSpace}'{Right} ; apr�s qu'o (� partir de apr�s queo)
:*:apqu::{Left}{BackSpace}'{Right} ; apr�s qu'u (� partir de apr�s queu)
:*:apqy::{Left}{BackSpace}'{Right} ; apr�s qu'y (� partir de apr�s quey)
:*:avq:: ; avant que
SendInput, {Left}ant {Right}ue
Return
:*:avq'::{Left}{BackSpace}{Right} ; avant qu' (� partir de avant que')
:*:avq&::{BackSpace 2}'un ; avant qu'un (� partir de avant que&)
:*:avqa::{Left}{BackSpace}'{Right} ; avant qu'a (� partir de avant quea)
:*:avq�::{Left}{BackSpace}'{Right} ; avant qu'� (� partir de avant que�)
:*:avqe::{Left}{BackSpace}'{Right} ; avant qu'e (� partir de avant quee)
:*:avq�::{Left}{BackSpace}'{Right} ; avant qu'� (� partir de avant que�)
:*:avq�::{Left}{BackSpace}'{Right} ; avant qu'� (� partir de avant que�)
:*:avq�::{Left}{BackSpace}'{Right} ; avant qu'� (� partir de avant que�)
:*:avqi::{Left}{BackSpace}'{Right} ; avant qu'i (� partir de avant quei)
:*:avqo::{Left}{BackSpace}'{Right} ; avant qu'o (� partir de avant queo)
:*:avqu::{Left}{BackSpace}'{Right} ; avant qu'u (� partir de avant queu)
:*:avqy::{Left}{BackSpace}'{Right} ; avant qu'y (� partir de avant quey)
:*:avtq:: ; avant que (� partir de avantq)
SendInput, {Left} {Right}ue
Return
:*:avtq'::{Left}{BackSpace}{Right} ; avant qu' (� partir de avant que')
:*:avtq&::{BackSpace 2}'un ; avant qu'un (� partir de avant que&)
:*:avtqa::{Left}{BackSpace}'{Right} ; avant qu'a (� partir de avant quea)
:*:avtq�::{Left}{BackSpace}'{Right} ; avant qu'� (� partir de avant que�)
:*:avtqe::{Left}{BackSpace}'{Right} ; avant qu'e (� partir de avant quee)
:*:avtq�::{Left}{BackSpace}'{Right} ; avant qu'� (� partir de avant que�)
:*:avtq�::{Left}{BackSpace}'{Right} ; avant qu'� (� partir de avant que�)
:*:avtq�::{Left}{BackSpace}'{Right} ; avant qu'� (� partir de avant que�)
:*:avtqi::{Left}{BackSpace}'{Right} ; avant qu'i (� partir de avant quei)
:*:avtqo::{Left}{BackSpace}'{Right} ; avant qu'o (� partir de avant queo)
:*:avtqu::{Left}{BackSpace}'{Right} ; avant qu'u (� partir de avant queu)
:*:avtqy::{Left}{BackSpace}'{Right} ; avant qu'y (� partir de avant quey)
:*:prq:: ; pour que
SendInput, {Left 2}ou{Right} {Right}ue
Return
:*:prq'::{Left}{BackSpace}{Right} ; pour qu' (� partir de pour que')
:*:prq&::{BackSpace 2}'un ; pour qu'un (� partir de pour que&)
:*:prqa::{Left}{BackSpace}'{Right} ; pour qu'a (� partir de pour quea)
:*:prq�::{Left}{BackSpace}'{Right} ; pour qu'� (� partir de pour que�)
:*:prqe::{Left}{BackSpace}'{Right} ; pour qu'e (� partir de pour quee)
:*:prq�::{Left}{BackSpace}'{Right} ; pour qu'� (� partir de pour que�)
:*:prq�::{Left}{BackSpace}'{Right} ; pour qu'� (� partir de pour que�)
:*:prq�::{Left}{BackSpace}'{Right} ; pour qu'� (� partir de pour que�)
:*:prqi::{Left}{BackSpace}'{Right} ; pour qu'i (� partir de pour quei)
:*:prqo::{Left}{BackSpace}'{Right} ; pour qu'o (� partir de pour queo)
:*:prqu::{Left}{BackSpace}'{Right} ; pour qu'u (� partir de pour queu)
:*:prqy::{Left}{BackSpace}'{Right} ; pour qu'y (� partir de pour quey)
:*:afq:: ; afin que
SendInput, {Left}in {Right}ue
Return
:*:afq'::{Left}{BackSpace}{Right} ; afin qu' (� partir de afin que')
:*:afq&::{BackSpace 2}'un ; afin qu'un (� partir de afin que&)
:*:afqa::{Left}{BackSpace}'{Right} ; afin qu'a (� partir de afin quea)
:*:afq�::{Left}{BackSpace}'{Right} ; afin qu'� (� partir de afin que�)
:*:afqe::{Left}{BackSpace}'{Right} ; afin qu'e (� partir de afin quee)
:*:afq�::{Left}{BackSpace}'{Right} ; afin qu'� (� partir de afin que�)
:*:afq�::{Left}{BackSpace}'{Right} ; afin qu'� (� partir de afin que�)
:*:afq�::{Left}{BackSpace}'{Right} ; afin qu'� (� partir de afin que�)
:*:afqi::{Left}{BackSpace}'{Right} ; afin qu'i (� partir de afin quei)
:*:afqo::{Left}{BackSpace}'{Right} ; afin qu'o (� partir de afin queo)
:*:afqu::{Left}{BackSpace}'{Right} ; afin qu'u (� partir de afin queu)
:*:afqy::{Left}{BackSpace}'{Right} ; afin qu'y (� partir de afin quey)
:*:slq:: ; selon que
SendInput, {Left 2}e{Right}on {Right}ue
Return
:*:slq'::{Left}{BackSpace}{Right} ; selon qu' (� partir de selon que')
:*:slq&::{BackSpace 2}'un ; selon qu'un (� partir de selon que&)
:*:slqa::{Left}{BackSpace}'{Right} ; selon qu'a (� partir de selon quea)
:*:slq�::{Left}{BackSpace}'{Right} ; selon qu'� (� partir de selon que�)
:*:slqe::{Left}{BackSpace}'{Right} ; selon qu'e (� partir de selon quee)
:*:slq�::{Left}{BackSpace}'{Right} ; selon qu'� (� partir de selon que�)
:*:slq�::{Left}{BackSpace}'{Right} ; selon qu'� (� partir de selon que�)
:*:slq�::{Left}{BackSpace}'{Right} ; selon qu'� (� partir de selon que�)
:*:slqi::{Left}{BackSpace}'{Right} ; selon qu'i (� partir de selon quei)
:*:slqo::{Left}{BackSpace}'{Right} ; selon qu'o (� partir de selon queo)
:*:slqu::{Left}{BackSpace}'{Right} ; selon qu'u (� partir de selon queu)
:*:slqy::{Left}{BackSpace}'{Right} ; selon qu'y (� partir de selon quey)
:*:mgq:: ; malgr� que (� partir de malgr�q)
SendInput, {Left} {Right}ue
Return
:*:mgq'::{Left}{BackSpace}{Right} ; malgr� qu' (� partir de malgr� que')
:*:mgq&::{BackSpace 2}'un ; malgr� qu'un (� partir de malgr� que&)
:*:mgqa::{Left}{BackSpace}'{Right} ; malgr� qu'a (� partir de malgr� quea)
:*:mgq�::{Left}{BackSpace}'{Right} ; malgr� qu'� (� partir de malgr� que�)
:*:mgqe::{Left}{BackSpace}'{Right} ; malgr� qu'e (� partir de malgr� quee)
:*:mgq�::{Left}{BackSpace}'{Right} ; malgr� qu'� (� partir de malgr� que�)
:*:mgq�::{Left}{BackSpace}'{Right} ; malgr� qu'� (� partir de malgr� que�)
:*:mgq�::{Left}{BackSpace}'{Right} ; malgr� qu'� (� partir de malgr� que�)
:*:mgqi::{Left}{BackSpace}'{Right} ; malgr� qu'i (� partir de malgr� quei)
:*:mgqo::{Left}{BackSpace}'{Right} ; malgr� qu'o (� partir de malgr� queo)
:*:mgqu::{Left}{BackSpace}'{Right} ; malgr� qu'u (� partir de malgr� queu)
:*:mgqy::{Left}{BackSpace}'{Right} ; malgr� qu'y (� partir de malgr� quey)
:*:sfq:: ; sauf que
SendInput, {Left} {Right}ue
Return
:*:sfq'::{Left}{BackSpace}{Right} ; sauf qu' (� partir de sauf que')
:*:sfq&::{BackSpace 2}'un ; sauf qu'un (� partir de sauf que&)
:*:sfqa::{Left}{BackSpace}'{Right} ; sauf qu'a (� partir de sauf quea)
:*:sfq�::{Left}{BackSpace}'{Right} ; sauf qu'� (� partir de sauf que�)
:*:sfqe::{Left}{BackSpace}'{Right} ; sauf qu'e (� partir de sauf quee)
:*:sfq�::{Left}{BackSpace}'{Right} ; sauf qu'� (� partir de sauf que�)
:*:sfq�::{Left}{BackSpace}'{Right} ; sauf qu'� (� partir de sauf que�)
:*:sfq�::{Left}{BackSpace}'{Right} ; sauf qu'� (� partir de sauf que�)
:*:sfqi::{Left}{BackSpace}'{Right} ; sauf qu'i (� partir de sauf quei)
:*:sfqo::{Left}{BackSpace}'{Right} ; sauf qu'o (� partir de sauf queo)
:*:sfqu::{Left}{BackSpace}'{Right} ; sauf qu'u (� partir de sauf queu)
:*:sfqy::{Left}{BackSpace}'{Right} ; sauf qu'y (� partir de sauf quey)
:*:cmt::{Left}n{Right} ; comment (� partir de commet)
:C:o::{BackSpace 2}� ; �
:*:cb::{Left}om{Right}ien ; combien
:C*:pq::{Left}our{Right}uoi ; pourquoi
:C*:Pq::{Left}our{Right}uoi ; Pourquoi
:*:psq:: ; puisque (� partir de puisq)
SendInput, ue
Return
:*:psq'::{Left}{BackSpace}{Right} ; puisqu' (� partir de puisque')
:*:psq&::{BackSpace 2}'un ; puisqu'un (� partir de puisque&)
:*:psqa::{Left}{BackSpace}'{Right} ; puisqu'a (� partir de puisquea)
:*:psq�::{Left}{BackSpace}'{Right} ; puisqu'� (� partir de puisque�)
:*:psqe::{Left}{BackSpace}'{Right} ; puisqu'e (� partir de puisquee)
:*:psq�::{Left}{BackSpace}'{Right} ; puisqu'� (� partir de puisque�)
:*:psq�::{Left}{BackSpace}'{Right} ; puisqu'� (� partir de puisque�)
:*:psq�::{Left}{BackSpace}'{Right} ; puisqu'� (� partir de puisque�)
:*:psqi::{Left}{BackSpace}'{Right} ; puisqu'i (� partir de puisquei)
:*:psqo::{Left}{BackSpace}'{Right} ; puisqu'o (� partir de puisqueo)
:*:psqu::{Left}{BackSpace}'{Right} ; puisqu'u (� partir de puisqueu)
:*:psqy::{Left}{BackSpace}'{Right} ; puisqu'y (� partir de puisquey)
:*:pcq:: ; parce que
SendInput, {Left 2}ar{Right}e {Right}ue
Return
:*:pcq'::{Left}{BackSpace}{Right} ; parce qu' (� partir de parce que')
:*:pcq&::{BackSpace 2}'un ; parce qu'un (� partir de parce que&)
:*:pcqa::{Left}{BackSpace}'{Right} ; parce qu'a (� partir de parce quea)
:*:pcq�::{Left}{BackSpace}'{Right} ; parce qu'� (� partir de parce que�)
:*:pcqe::{Left}{BackSpace}'{Right} ; parce qu'e (� partir de parce quee)
:*:pcq�::{Left}{BackSpace}'{Right} ; parce qu'� (� partir de parce que�)
:*:pcq�::{Left}{BackSpace}'{Right} ; parce qu'� (� partir de parce que�)
:*:pcq�::{Left}{BackSpace}'{Right} ; parce qu'� (� partir de parce que�)
:*:pcqi::{Left}{BackSpace}'{Right} ; parce qu'i (� partir de parce quei)
:*:pcqo::{Left}{BackSpace}'{Right} ; parce qu'o (� partir de parce queo)
:*:pcqu::{Left}{BackSpace}'{Right} ; parce qu'u (� partir de parce queu)
:*:pcqy::{Left}{BackSpace}'{Right} ; parce qu'y (� partir de parce quey)
:*:ssq:: ; sans que (� partir de sansq)
SendInput, {Left} {Right}ue
Return
:*:ssq'::{Left}{BackSpace}{Right} ; sans qu' (� partir de sans que')
:*:ssq&::{BackSpace 2}'un ; sans qu'un (� partir de sans que&)
:*:ssqa::{Left}{BackSpace}'{Right} ; sans qu'a (� partir de sans quea)
:*:ssq�::{Left}{BackSpace}'{Right} ; sans qu'� (� partir de sans que�)
:*:ssqe::{Left}{BackSpace}'{Right} ; sans qu'e (� partir de sans quee)
:*:ssq�::{Left}{BackSpace}'{Right} ; sans qu'� (� partir de sans que�)
:*:ssq�::{Left}{BackSpace}'{Right} ; sans qu'� (� partir de sans que�)
:*:ssq�::{Left}{BackSpace}'{Right} ; sans qu'� (� partir de sans que�)
:*:ssqi::{Left}{BackSpace}'{Right} ; sans qu'i (� partir de sans quei)
:*:ssqo::{Left}{BackSpace}'{Right} ; sans qu'o (� partir de sans queo)
:*:ssqu::{Left}{BackSpace}'{Right} ; sans qu'u (� partir de sans queu)
:*:ssqy::{Left}{BackSpace}'{Right} ; sans qu'y (� partir de sans quey)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Verbs :
;;;;;;;;;

::c�::{BackSpace 2}'est ; c'est
:*:ct:: ; c'�tait
SendInput, {Left}'�{Right}ait
Return
:*:ctent::{Left 3}{BackSpace}{Right 3} ; c'�taient (� partir de c'�taitent)
::m�::{BackSpace 2}'est ; m'est
::n�::{BackSpace 2}'est ; n'est
::s�::{BackSpace 2}'est ; s'est
::t�::{BackSpace 2}'es ; t'ai
:*:jt�::{BackSpace}{Left}e {Right}'ai ; je t'ai
:*:jn�::{BackSpace}{Left}e {Right}'ai ; je n'ai
:*:jnt�::{BackSpace}{Left 2}e {Right}e {Right}'ai ; je ne t'ai
:C*:nt::{Left}'�{Right}ai ; n'�tai
:C*:Nt::{Left}'�{Right}ai ; N'�tai
:C*:mt:: ; m'�tai
SendInput, {Left}'�{Right}ai
Return
:C*:Mt:: ; M'�tai
SendInput, {Left}'�{Right}ai
Return
:*:jn�::{BackSpace}{Left}e {Right}'ai ; je n'ai
:C:sc::{BackSpace}{Left 2}e{Right}t-{Right}e ; est-ce
:C:Sc::{BackSpace}{Left}{BackSpace}Est-{Right}e ; Est-ce
:*:ncp::{Left 2}'est-{Right}e {Right}as ; n'est-ce pas
:C*:sq:: ; est-ce que
SendInput, {Left 2}e{Right}t-ce {Right}ue
Return
:C*:Sq:: ; Est-ce que
SendInput, {Left}{BackSpace}Est-ce {Right}ue
Return
:*:sq&::{BackSpace 2}'un ; est-ce qu'un (� partir de est-ce que&)
:*:sq'::{Left}{BackSpace}{Right} ; est-ce qu' (� partir de est-ce que')
:*:sqa::{Left}{BackSpace}'{Right} ; est-ce qu'a (� partir de est-ce quea)
:*:sq�::{Left}{BackSpace}'{Right} ; est-ce qu'� (� partir de est-ce que�)
:*:sqe::{Left}{BackSpace}'{Right} ; est-ce qu'e (� partir de est-ce quee)
:*:sq�::{Left}{BackSpace}'{Right} ; est-ce qu'� (� partir de est-ce que�)
:*:sq�::{Left}{BackSpace}'{Right} ; est-ce qu'� (� partir de est-ce que�)
:*:sq�::{Left}{BackSpace}'{Right} ; est-ce qu'� (� partir de est-ce que�)
:*:sqi::{Left}{BackSpace}'{Right} ; est-ce qu'i (� partir de est-ce quei)
:*:sqo::{Left}{BackSpace}'{Right} ; est-ce qu'o (� partir de est-ce queo)
:*:squ::{Left}{BackSpace}'{Right} ; est-ce qu'u (� partir de est-ce queu)
:*:sqy::{Left}{BackSpace}'{Right} ; est-ce qu'y (� partir de est-ce quey)
:C*:sql::{Left}{BackSpace 2}{Left}{BackSpace 5}{Left}{BackSpace}{Right 3} ; sql (� partir de est-ce quel)
:C*:squ::{Left}{BackSpace 2}{Left}{BackSpace 5}{Left}{BackSpace}{Right 3} ; squ (� partir de est-ce queu)
:C*:Sql::{Left}{BackSpace 2}{Left}{BackSpace 7}S{Right 2} ; Sql (� partir de Est-ce queu)
:C*:Squ::{Left}{BackSpace 2}{Left}{BackSpace 7}S{Right 2} ; Squ (� partir de Est-ce queu)
:C*:scq:: ; est-ce que
SendInput, {Left 3}e{Right}t-{Right}e {Right}ue
Return
:C*:Scq:: ; Est-ce que
SendInput, {Left 2}{BackSpace}Est-{Right}e {Right}ue
Return
:*:scq&::{BackSpace 2}'un ; est-ce qu'un (� partir de est-ce que&)
:*:scq'::{Left}{BackSpace}{Right} ; est-ce qu' (� partir de est-ce que')
:*:scqa::{Left}{BackSpace}'{Right} ; est-ce qu'a (� partir de est-ce quea)
:*:scq�::{Left}{BackSpace}'{Right} ; est-ce qu'� (� partir de est-ce que�)
:*:scqe::{Left}{BackSpace}'{Right} ; est-ce qu'e (� partir de est-ce quee)
:*:scq�::{Left}{BackSpace}'{Right} ; est-ce qu'� (� partir de est-ce que�)
:*:scq�::{Left}{BackSpace}'{Right} ; est-ce qu'� (� partir de est-ce que�)
:*:scq�::{Left}{BackSpace}'{Right} ; est-ce qu'� (� partir de est-ce que�)
:*:scqi::{Left}{BackSpace}'{Right} ; est-ce qu'i (� partir de est-ce quei)
:*:scqo::{Left}{BackSpace}'{Right} ; est-ce qu'o (� partir de est-ce queo)
:*:scqu::{Left}{BackSpace}'{Right} ; est-ce qu'u (� partir de est-ce queu)
:*:scqy::{Left}{BackSpace}'{Right} ; est-ce qu'y (� partir de est-ce quey):*:ecq:: ; est-ce que
SendInput, {Left 2}st-{Right}e {Right}ue
Return
:*:ecq&::{BackSpace 2}'un ; est-ce qu'un (� partir de est-ce que&)
:*:ecq'::{Left}{BackSpace}{Right} ; est-ce qu' (� partir de est-ce que')
:*:ecqa::{Left}{BackSpace}'{Right} ; est-ce qu'a (� partir de est-ce quea)
:*:ecq�::{Left}{BackSpace}'{Right} ; est-ce qu'� (� partir de est-ce que�)
:*:ecqe::{Left}{BackSpace}'{Right} ; est-ce qu'e (� partir de est-ce quee)
:*:ecq�::{Left}{BackSpace}'{Right} ; est-ce qu'� (� partir de est-ce que�)
:*:ecq�::{Left}{BackSpace}'{Right} ; est-ce qu'� (� partir de est-ce que�)
:*:ecq�::{Left}{BackSpace}'{Right} ; est-ce qu'� (� partir de est-ce que�)
:*:ecqi::{Left}{BackSpace}'{Right} ; est-ce qu'i (� partir de est-ce quei)
:*:ecqo::{Left}{BackSpace}'{Right} ; est-ce qu'o (� partir de est-ce queo)
:*:ecqu::{Left}{BackSpace}'{Right} ; est-ce qu'u (� partir de est-ce queu)
:*:ecqy::{Left}{BackSpace}'{Right} ; est-ce qu'y (� partir de est-ce quey)
:*:qcq:: ; qu'est-ce que (� partir de quelque choseq)
SendInput, {Left 2}{BackSpace 3}{Left}{BackSpace 5}{Left}'{right}st-{Right 2} {Right}ue
Return
:*:qcq&::{BackSpace 2}'un ; qu'est-ce qu'un (� partir de qu'est-ce que&)
:*:qcq'::{Left}{BackSpace}{Right} ; qu'est-ce qu' (� partir de qu'est-ce que')
:*:qcqa::{Left}{BackSpace}'{Right} ; qu'est-ce qu'a (� partir de qu'est-ce quea)
:*:qcq�::{Left}{BackSpace}'{Right} ; qu'est-ce qu'� (� partir de qu'est-ce que�)
:*:qcqe::{Left}{BackSpace}'{Right} ; qu'est-ce qu'e (� partir de qu'est-ce quee)
:*:qcq�::{Left}{BackSpace}'{Right} ; qu'est-ce qu'� (� partir de qu'est-ce que�)
:*:qcq�::{Left}{BackSpace}'{Right} ; qu'est-ce qu'� (� partir de qu'est-ce que�)
:*:qcq�::{Left}{BackSpace}'{Right} ; qu'est-ce qu'� (� partir de qu'est-ce que�)
:*:qcqi::{Left}{BackSpace}'{Right} ; qu'est-ce qu'i (� partir de qu'est-ce quei)
:*:qcqo::{Left}{BackSpace}'{Right} ; qu'est-ce qu'o (� partir de qu'est-ce queo)
:*:qcqu::{Left}{BackSpace}'{Right} ; qu'est-ce qu'u (� partir de qu'est-ce queu)
:*:qcqy::{Left}{BackSpace}'{Right} ; qu'est-ce qu'y (� partir de qu'est-ce quey):C*:Qcq:: ; qu'est-ce que (� partir de Quelque choseq)
:C:ay�::{BackSpace 2}{Left 2}�{Right} {Right} est ; �a y est
:C:Ay�::{BackSpace 2}{Left}{BackSpace}�a {Right} est ; �a y est
:?*:qr:: ; quer
SendInput, {Left}ue{Right}
Return
:*:�:: ; �tre
SendInput, tre
Return
:*:�t::{BackSpace 3} ; �t (� partir de �tret)
:C:g�::{BackSpace 3}j'ai ; j'ai
:C:G�::{BackSpace 3}J'ai ; J'ai
::j�::{BackSpace 2}'ai ; j'ai
:C:g�m::{BackSpace}{Left}{BackSpace 2}j'ai{Right]e ; j'aime
:C:G�m::{BackSpace}{Left}{BackSpace 2}J'ai{Right]e ; J'aime
::j�m::{BackSpace}{Left}{BackSpace}'ai{Right}e ; j'aime
:C*:gt::{Left}{BackSpace}j'�{Right}ais ; j'�tais
:C*:Gt::{Left}{BackSpace}J'�{Right}ais ; J'�tais
:C*:gv::{Left}{BackSpace}j'a{Right}ais ; j'avais
:C*:Gv::{Left}{BackSpace}J'a{Right}ais ; J'avais
:*:jv::{Left}'a{Right}ais ; j'avais
:*:nv:: ; n'avai
SendInput, {Left}'a{Right}ai
Return
:C:v::{BackSpace}ais ; vais

::fre::{BackSpace}{Left 2}ai{Right 2} ; faire
::f�::{BackSpace 2}ait ; fait
::fo::{BackSpace 2}aut ; faut
:C*:ft:: ; font
SendInput, {Left}on{Right}
Return
:C*:Ft:: ; Font
SendInput, {Left}on{Right}
Return
:C*:ftp::{Left 2}{BackSpace 2}{Right 2} ; ftp (� partir de fontp)
:C*:Ftp::{Left 2}{BackSpace 2}{Right 2} ; Ftp (� partir de Fontp)
::st::{BackSpace}{Left}on{Right} ; sont
:*:vx::{Left}eu{Right} ; veux
::ve::{BackSpace}ut ; veut
::vo::{BackSpace 2}aut ; vaut
:*:vd::{Left}en{Right} ; vend
:*:vt::{Left}on{Right} ; vont
:*:cmc:: ; commence (� partir de commec)
SendInput, {Left}n{Right}e
Return
:*:cm�::{Left}n{Right}a ; commen�a (� partir de comme�)
:*:dvl:: ; dvl (� partir de diversl)
SendInput, {Left}{BackSpace 3}{Left}{BackSpace}{Right 2}
Return
:*:dvlp:: ; d�velopp
SendInput, {Left 3}�{Right}e{Right}o{Right}p
Return
:*:dvlpt::{Left}emen{Right} ; d�veloppement (� partir de d�veloppt)
:*:cprd::{Left 3}{BackSpace}m{Right 2}en{Right} ; comprend (� partir de couprd)
:?*:prd:: ; prend
SendInput, {Left}en{Right}
Return
:?*:dpd:: ; d�pend (� partir de depuisd)
SendInput, {Left}{BackSpace 3}{Left}{BackSpace}�{Right}en{Right}
Return
:*:px::{Left}eu{Right} ; peux
:*:pt::
SendInput, {Left}eu{Right} ; peut
Return
:*:mq::{Left}an{Right}u ; manqu
:C*:djn::{Left}{BackSpace}eu{Right} ; d�jeun (� partir de d�j�n)
:C*:Djn::{Left}{BackSpace}eu{Right} ; D�jeun (� partir de D�j�n)
:*:jspr::{Left 3}'e{Right 2}�{Right}e ; j'esp�re
:*:spr::{Left 3}e{Right 2}�{Right}e ; esp�re
:?*:parapl:: ; parapluie
Return
:?*:apl::{Left}pe{Right} ; appel
:*:pvr::{Left 2}ou{Right}oi{Right} ; pouvoir
:*:pvoir::{Left 4}ou{Right 4} ; pouvoir
:*:pvai::{Left 3}ou{Right 3} ; pouvai
:*:pvons::{Left 4}ou{Right 4} ; pouvons
:*:pvez::{Left 3}ou{Right 3} ; pouvez
:*:pvions::{Left 5}ou{Right 5} ; pouvions
:*:pviez::{Left 4}ou{Right 4} ; pouviez
:*:pvt::{Left 2}eu{Right}en{Right} ; peuvent
:*:pvent::{Left 4}eu{Right 4} ; peuvent
:*:pvant::{Left 4}ou{Right 4} ; pouvant
:*:vlr::{Left 2}ou{Right}oi{Right} ; vouloir
:*:vloir::{Left 4}ou{Right 4} ; vouloir
:*:vlai::{Left 3}ou{Right 3} ; voulai
:*:vlons::{Left 4}ou{Right 4} ; voulons
:*:vlez::{Left 3}ou{Right 3} ; voulez
:*:vlions::{Left 5}ou{Right 5} ; voulions
:*:vliez::{Left 4}ou{Right 4} ; vouliez
:*:vlt::{Left 2}eu{Right}en{Right} ; veulent
:*:vlent::{Left 4}eu{Right 4} ; veulent
:*:vlant::{Left 4}ou{Right 4} ; voulant

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Adverbs :
;;;;;;;;;;;

::dab::{BackSpace}{Left 2}'{Right 2}ord ; d'abord
:*:mm:: ; m�me
SendInput, {Left}�{Right}e
Return
:*:mme::{BackSpace}{Left 2}{BackSpace}{Right 2} ; mme (� partir de m�mee)
:C*:+to::
SendInput, {BackSpace}{Left}{BackSpace}plu{Right}�t ; plut�t
Return
:C*:+To::
SendInput, {BackSpace 3}Plut�t ; Plut�t
Return
:*:+tot::{BackSpace} ; plut�t (� partir de plut�tt)
:*:pto:: ; plut�t (� partir de peuto)
SendInput, {BackSpace}{Left}{BackSpace 2}lu{Right}�t
Return
:*:ptot::{BackSpace} ; plut�t (� partir de plut�tt)
::+-::{BackSpace 3}� ; �
::pl::{BackSpace}us ; plus
:*:++ ::{Left}{BackSpace 2}plus{Right} ; plus 
:*:++.::{Left}{BackSpace 2}plus{Right} ; plus.
:*:++,::{Left}{BackSpace 2}plus{Right} ; plus,
:*:++)::{Left}{BackSpace 2}plus{Right} ; plus)
:*:+ou-::{BackSpace}{Left 2}{BackSpace}plus {Right 2} moins ; plus ou moins
:*:-- ::{Left}{BackSpace 2}moins{Right} ; moins 
:*:--.::{Left}{BackSpace 2}moins{Right} ; moins.
:*:--,::{Left}{BackSpace 2}moins{Right} ; moins,
:*:--)::{Left}{BackSpace 2}moins{Right} ; moins)
:*:�pp::{Left 2} {Right}eu {Right}r�s ; � peu pr�s
:*:q�pp::{Left 3}u'{Right} {Right}eu {Right}r�s ; qu'� peu pr�s
:C*:vm::{Left}rai{Right}ent ; vraiment
:C*:Vm::{Left}rai{Right}ent ; vraiment
:*:vraimt::{Left}en{Right} ; vraiment
:*:mx::{Left}ieu{Right} ; mieux
:*:prsq::{Left 2}e{Right 2}ue ; presque
:*:tlm::{Left 2}el{Right}e{Right}ent ; tellement
::ac::{BackSpace 2}ssez ; assez
:*:b&::{BackSpace}ien ; bien
:*:bcp::{Left 2}eau{Right}ou{Right} ; beaucoup
:*:t�f::{Left 2}out {Right} {Right}ait ; tout � fait
:*:surtt::{Left}ou{Right} ; surtout
:*:deds::{Left}an{Right} ; dedans
:*:deh:: ; dehors
SendInput, ors
Return
:*:deho::{BackSpace 3} ; deho (� partir de dehorso)
:*:partt::{Left}ou{Right} ; partout
::ens::{BackSpace}emble ; ensemble
:*:qens::{Left 3}u'{Right 3}emble ; qu'ensemble
:*:pourtt::{Left}an{Right} ; pourtant
:*:prtant::{Left 5}ou{Right 5} ; pourtant
:*:prtt::{Left 3}ou{Right 2}an{Right} ; pourtant
:*:partt::{Left}ou{Right} ; partout
:*:seult::{Left}emen{Right} ; seulement
:*:vc::{Left}oi{Right}i ; voici
::vl::{BackSpace}{Left}oi{Right}� ; voil�
:C*:dj:: ; d�j�
SendInput, {Left}�{Right}�
Return
:C*:Dj:: ; D�ja
SendInput, {Left}�{Right}�
Return
:*:svt::{Left 2}ou{Right}en{Right} ; souvent
:*:tdm::{Left 2}out {Right}e {Right}�me ; tout de m�me
:*:pe'::{Left}{BackSpace}'t-�t{Right} ; p't-�t'
::pe::{BackSpace}ut-�tre ; peut-�tre
:*:nimp::{Left 3}'{Right 3}orte ; n'importe
:C*:tjr:: ; toujoursg
SendInput, {Left 2}ou{Right}ou{Right}s
Return
:C*:tjrs::{BackSpace} ; toujours (� partir de toujourss)
:C*:Tjr:: ; Toujours
SendInput, {Left 2}ou{Right}ou{Right}s
Return
:C*:Tjrs::{BackSpace} ; Toujours (� partir de Toujourss)
:C*:TJRS::{Left 3}OU{Right}OU{Right 2} ; TOUJOURS
:*:p ::{Left}as{Right} ; pas
:*:p,::{Left}as{Right} ; pas,
:*:p;::{Left}as{Right}{Space} ; pas ;
:C*:p.::{Left}as{Right} ; pas.
:*:hl::{Left}�{Right}as ; h�las
:*:jms::{Left 2}a{Right}ai{Right} ; jamais

::h::{BackSpace}ein ; hein
::vi::{BackSpace}{Left}{BackSpace}ou{Right} ; oui
:*:ttf::{Left}e{Right}ois ; toutefois (� partir de toutf)
:*:nm::{Left}�an{Right}oins ; n�anmoins
:*:parex::{Left 2} {Right 2}emple ; par exemple
:C*:stp::{Left 2}'il {Right}e {Right}la�t ; s'il te pla�t
:C*:Stp::{Left 2}'il {Right}e {Right}la�t ; S'il te pla�t
:C*:svp::{Left 2}'il {Right}ous {Right}la�t ; s'il vous pla�t
:C*:Svp::{Left 2}'il {Right}ous {Right}la�t ; S'il vous pla�t
:*:cdt::{Left 2}or{Right}ialemen{Right} ; cordialement
:*:cdlt::{Left 3}or{Right}ia{Right}emen{Right} ; cordialement
:*:simplt::{Left}emen{Right} ; simplement

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Positions :
;;;;;;;;;;;;;

:?*:avt:: ; avant
SendInput, {Left}an{Right}
Return
:*:qavt::{Left 3}u'{Right 2}an{Right} ; qu'avant
:*:dvt::{Left}{BackSpace 3}{Left}{BackSpace}e{Right}an{Right} ; devant (� partir de diverst)
::dr::{BackSpace}{Left}e{Right}ri�re ; derri�re
:*:dbt::{Left 2}e{Right}ou{Right} ; debout
:*:pdt::{Left 2}en{Right}an{Right} ; pendant
:C*:Dp:: ; Depuis
SendInput, {Left}e{right}uis
Return
:C*:dp:: ; depuis
SendInput, {Left}e{right}uis
Return
:*:ds:: ; dans
SendInput, {Left}an{Right}
Return
:*:dh::{Left}e{Right}ors ; dehors
:*:lb::{Left}�-{Right}as ; l�-bas
:*:jq:: ; jusque
SendInput, {Left}us{Right}ue
Return
:*:jq'::{Left 2}us{Right}u{Right} ; jusqu' (� partir de jusque')
:*:jqa::{Left}{BackSpace}'{Right} ; jusqu'a (� partir de jusquea)
:*:jq�::{Left}{BackSpace}'{Right} ; jusqu'� (� partir de jusque�)
:*:jqe::{Left}{BackSpace}'{Right} ; jusqu'e (� partir de jusquee)
:*:jq�::{Left}{BackSpace}'{Right} ; jusqu'� (� partir de jusque�)
:*:jq�::{Left}{BackSpace}'{Right} ; jusqu'� (� partir de jusque�)
:*:jq�::{Left}{BackSpace}'{Right} ; jusqu'� (� partir de jusque�)
:*:jqi::{Left}{BackSpace}'{Right} ; jusqu'i (� partir de jusquei)
:*:jqo::{Left}{BackSpace}'{Right} ; jusqu'o (� partir de jusqueo)
:*:jqu:: ; jusqu'u (� partir de jusqueu)
SendInput, {Left}{BackSpace}'{Right}
Return
:*:jquery::{Left 4}{BackSpace 5}Q{Right 4} ; jQuery (� partir de jusqu'uery)
:*:jqy::{Left}{BackSpace}'{Right} ; jusqu'y (� partir de jusquey)
:*:jsq::
SendInput, {Left 2}u{Right 2}ue ; jusque
Return
:*:jsq'::{Left}{BackSpace}{Right} ; jusqu' (� partir de jusque')
:*:jsqa::{Left}{BackSpace}'{Right} ; jusqu'a (� partir de jusquea)
:*:jsq�::{Left}{BackSpace}'{Right} ; jusqu'� (� partir de jusque�)
:*:jsqe::{Left}{BackSpace}'{Right} ; jusqu'e (� partir de jusquee)
:*:jsq�::{Left}{BackSpace}'{Right} ; jusqu'� (� partir de jusque�)
:*:jsq�::{Left}{BackSpace}'{Right} ; jusqu'� (� partir de jusque�)
:*:jsq�::{Left}{BackSpace}'{Right} ; jusqu'� (� partir de jusque�)
:*:jsqi::{Left}{BackSpace}'{Right} ; jusqu'i (� partir de jusquei)
:*:jsqo::{Left}{BackSpace}'{Right} ; jusqu'o (� partir de jusqueo)
:*:jsqu::{Left}{BackSpace}'{Right} ; jusqu'u (� partir de jusqueu)
:*:jsqy::{Left}{BackSpace}'{Right} ; jusqu'y (� partir de jusquey)
::cz::{BackSpace}{Left}he{Right} ; chez
::vr::{BackSpace}{Left}e{Right}s ; vers
::tr::{BackSpace}{Left}ou{Right} ; tour
::atr::{BackSpace}{Left 2}u{Right}ou{Right} ; autour
::apr::{BackSpace}�s ; apr�s
:*:qapr::{Left 3}u'{Right 3}�s ; qu'apr�s
:C*:apd:: ; � partir de
SendInput, {Left 2}{BackSpace}� {Right}artir {Right}e
Return
:C*:�pd:: ; � partir de
SendInput, {Left 2} {Right}artir {Right}e
Return
:C*:Apd:: ; � partir de
SendInput, {Left 2}{BackSpace}� {Right}artir {Right}e
Return
:C*:�pd:: ; � partir de
SendInput, {Left 2} {Right}artir {Right}e
Return
:*:apd'::{Left}{BackSpace}{Right} ; � partir d' (� partir de � partir de')
:*:apda::{Left}{BackSpace}'{Right} ; � partir d'a (� partir de � partir dea)
:*:apd�::{Left}{BackSpace}'{Right} ; � partir d'� (� partir de � partir de�)
:*:apde::{Left}{BackSpace}'{Right} ; � partir d'e (� partir de � partir dee)
:*:apd�::{Left}{BackSpace}'{Right} ; � partir d'� (� partir de � partir de�)
:*:apd�::{Left}{BackSpace}'{Right} ; � partir d'� (� partir de � partir de�)
:*:apd�::{Left}{BackSpace}'{Right} ; � partir d'� (� partir de � partir de�)
:*:apdi::{Left}{BackSpace}'{Right} ; � partir d'i (� partir de � partir dei)
:*:apdo::{Left}{BackSpace}'{Right} ; � partir d'o (� partir de � partir deo)
:*:apdu::{Left}{BackSpace}'{Right} ; � partir d'u (� partir de � partir deu)
:*:apdy::{Left}{BackSpace}'{Right} ; � partir d'y (� partir de � partir dey)
:*:�pd'::{Left}{BackSpace}{Right} ; � partir d' (� partir de � partir de')
:*:�pda::{Left}{BackSpace}'{Right} ; � partir d'a (� partir de � partir dea)
:*:�pd�::{Left}{BackSpace}'{Right} ; � partir d'� (� partir de � partir de�)
:*:�pde::{Left}{BackSpace}'{Right} ; � partir d'e (� partir de � partir dee)
:*:�pd�::{Left}{BackSpace}'{Right} ; � partir d'� (� partir de � partir de�)
:*:�pd�::{Left}{BackSpace}'{Right} ; � partir d'� (� partir de � partir de�)
:*:�pd�::{Left}{BackSpace}'{Right} ; � partir d'� (� partir de � partir de�)
:*:�pdi::{Left}{BackSpace}'{Right} ; � partir d'i (� partir de � partir dei)
:*:�pdo::{Left}{BackSpace}'{Right} ; � partir d'o (� partir de � partir deo)
:*:�pdu::{Left}{BackSpace}'{Right} ; � partir d'u (� partir de � partir deu)
:*:�pdy::{Left}{BackSpace}'{Right} ; � partir d'y (� partir de � partir dey)
:*:q�::{Left}u'{Right} ; qu'�
:*:pm:: ; parmi
SendInput, {Left}ar{Right}i
Return
:C*:PME::{Left}{BackSpace}{Left}{BackSpace 2}{Right 2} ; PME (� partir de PARMIE)
::av::{BackSpace}ec ; avec
:*:qav::{Left 2}u'{Right 2}ec ; qu'avec
:*:v�v:: ; vis-�-vis
SendInput, {Left 2}is-{Right}-{Right}is
Return
:*:v�vd:: ; vis-�-vis de (� partir de vis-�-visd)
SendInput, {Left} {Right}e
Return
:*:v�vd'::{Left}{BackSpace}Right} ; vis-�-vis de (� partir de vis-�-vis de')
:*:sf:: ; sauf
SendInput, {Left}au{Right}
Return
:*:ss:: ; sans
SendInput, {Left}an{Right}
Return
:*:ssd::{BackSpace 5}SSD ; SSD (� partir de sansd)
:*:ssh::{Left 2}{BackSpace 2}{Right 2} ; ssh (� partir de sansh)
:*:ssl::{Left 2}{BackSpace 2}{Right 2} ; SSL (� partir de sansl)
:*:sso::{Left 2}{BackSpace 2}{Right 2} ; sso (� partir de sanso)
::s_::{BackSpace 2}ur ; sur
::_s::{BackSpace}{Left}{BackSpace}{Right}ous ; sous
:*:dess:: ; dessous
SendInput, ous
Return
:*:desse:: ; desse (� partir de dessouse)
SendInput, {Left}{BackSpace 3}{Right}
Return
:*:dessi:: ; dessi (� partir de dessousi)
SendInput, {Left}{BackSpace 3}{Right}
Return
:*:dessu::{Left}{BackSpace 3}{Right} ; dessu (� partir de dessousu)
:*:desso::{BackSpace 3} ; desso (� partir de dessouso)
::pr::{BackSpace}{Left}ou{Right} ; pour
:*:ctre::{Left 3}{BackSpace 5}on{Right 3} ; contre (� partir de c'�taitre)
::af::{BackSpace}in ; afin
:*:qaf::{Left 2}u'{Right 2}in ; qu'afin
:*:afd:: ; afin de
SendInput, {Left}in {Right}e
Return
:*:afd'::{Left}{BackSpace}{Right} ; afin d' (� partir de afin de')
::sl::{BackSpace}{Left}e{Right}on ; selon
:*:cm::
SendInput, {Left}om{Right}e ; comme
Return
:*:cmu::{Left}{BackSpace 2}{Left}{BackSpace}{Right 2} ; cmu (� partir de commeu)
:*:mg::
SendInput, {Left}al{Right}r� ; malgr�
Return
:*:qt::{Left}uan{Right} ; quant
:*:lx::{Left}ieu{Right} ; lieux
:*:ald ::{Left 3}u {Right}ieu {Right}e{Right} ; au lieu de
:*:ald'::{Left 3}u {Right}ieu {Right 2} ; au lieu d'

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Pronuns :
;;;;;;;;;;;

:*:chq::{Left}a{Right}ue ; chaque
:*:tt:: ; tout
SendInput, {Left}ou{Right}
Return
:C*:TTC::{Left 2}{BackSpace 2}{Right 2} ; TTC (� partir de TOUTC)
:*:ts:: ; tous
SendInput, {Left}ou{Right}
Return
:*:tsa::{Left 2}{BackSpace 2}{Right 2} ; tsa (� partir de tousa)
:*:tse::{Left 2}{BackSpace 2}{Right 2} ; tse (� partir de touse)
:*:ts�::{Left 2}{BackSpace 2}{Right 2} ; ts� (� partir de tous�)
:*:tsi::{Left 2}{BackSpace 2}{Right 2} ; tsi (� partir de tousi)
:*:tso::{Left 2}{BackSpace 2}{Right 2} ; tso (� partir de touso)
:*:tsu::{Left 2}{BackSpace 2}{Right 2} ; tsu (� partir de tousu)
:*:ns::{Left}ou{Right} ; nous
:*:vs::{Left}ou{Right} ; vous
:C*:u2::{BackSpace}{Left}toi a{Right}ssi ; toi aussi
:C*:U2::{BackSpace 2}Toi aussi ; Toi aussi
:*:cx::{Left}eu{Right} ; ceux
:*:cert&::{BackSpace}ain ; certain
:*:d&::{BackSpace}'un ; d'un
:*:l&::{BackSpace}'un ; l'un
:*:dt::{Left}on{Right} ; dont
:?*:qa::{Left}u{Right} ; qua
:?*:qe::{Left}u{Right} ; que
:?*:q�::{Left}u{Right} ; qu�
:?*:q�::{Left}u{Right} ; qu�
:?*:q�::{Left}u{Right} ; qu�
:?*:qi:: ; qui
SendInput, {Left}u{Right}
Return
:*:qil::{Left 2}'{Right 2} ; qu'il (� partir de quil)
:?*:qo:: ; quo
SendInput, {Left}u{Right}
Return
::qon::{BackSpace}{Left 2}'{Right 2} ; qu'on (� partir de quon)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Some :
;;;;;;;;

:*:r&::{BackSpace}ien ; rien
::ca::{BackSpace}{Left}{BackSpace}�{Right} ; �a
::clc::{BackSpace}{Left 2}e{Right}ui-{Right}i ; celui-ci
:*:qq:: ; quelque
SendInput, {Left}uel{Right}ue
Return
:*:q1:: ; quelqu'un
SendInput, {BackSpace}uelqu'un
Return
:*:q&::{BackSpace}u'un ; qu'un
:*:qun:: ; quelqu'un
SendInput, {Left 2}uelqu'{Right 2}
Return
:*:qn:: ; quelqu'un
SendInput, {Left}uelqu'u{Right}
Return
:*:qqn:: ; quelqu'un (� partir de quelquen)
SendInput, {Left}{BackSpace}'u{Right}
Return
:*:qq&:: ; quelqu'un (� partir de quelque&)
SendInput, {BackSpace 2}'un
Return
:*:qq1:: ; quelqu'un (� partir de quelque1)
SendInput, {BackSpace 2}'un
Return
:*:qqns::{Left 3}{BackSpace}es-{Right 3} ; quelques-uns (� partir de quelqu'uns)
:*:qq&s::{Left 3}{BackSpace}es-{Right 3} ; quelques-uns (� partir de quelqu'uns)
:*:qq1s::{Left 3}{BackSpace}es-{Right 3} ; quelques-uns (� partir de quelqu'uns)
:*:qq&es::{Left 4}{BackSpace}es-{Right 4} ; quelques-unes (� partir de quelqu'unes)
:*:qq1es::{Left 4}{BackSpace}es-{Right 4} ; quelques-unes (� partir de quelqu'unes)
:*:q1s::{Left 3}{BackSpace}es-{Right 3} ; quelques-uns (� partir de quelqu'uns)
:*:quns::{Left 3}{BackSpace}es-{Right 3} ; quelques-uns (� partir de quelqu'uns)
:*:qns::{Left 3}{BackSpace}es-{Right 3} ; quelques-uns (� partir de quelqu'uns)
:*:qunes::{Left 4}{BackSpace}es-{Right 4} ; quelques-unes (� partir de quelqu'unes)
:*:qnes::{Left 4}{BackSpace}es-{Right 4} ; quelques-unes (� partir de quelqu'unes)
:C*:+r:: ; plusieurs
SendInput, {Left}{BackSpace}plusieu{Right}s
Return
:*:p+::{BackSpace}lusieurs ; plusieurs
:C*:+rs::{BackSpace} ; plusieurs (� partir de plusieurss)
:C*:+R:: ; Plusieurs
SendInput, {BackSpace 2}Plusieurs
Return
:C*:+Rs::{BackSpace} ; Plusieurs (� partir de Plusieurss)
:C*:+ir:: ; plusieurs
SendInput, {Left 2}{BackSpace}plus{Right}eu{Right}s
Return
:C*:+irs::{BackSpace} ; plusieurs (� partir de plusieurss)
:C*:+Ir:: ; Plusieurs
SendInput, {Left}{BackSpace 2}Plusieu{Right}s
Return
:C*:+Irs::{BackSpace} ; Plusieurs (� partir de plusieurss)
:C*:+ieur:: ; plusieurs
SendInput, {Left 4}{BackSpace}plus{Right 4}s
Return
:C*:+ieurs::{BackSpace} ; plusieurs (� partir de plusieurss)
:C*:+Ieur:: ; Plusieurs
SendInput, {Left 3}{BackSpace 2}Plusi{Right 3}s
Return
:C*:+ieurs::{BackSpace} ; plusieurs (� partir de plusieurss)
:C*:+Ieurs::{BackSpace} ; Plusieurs (� partir de Plusieurss)

:*:dql:: ; duquel (� partir de d�s quel)
SendInput, {Left 4}{BackSpace 3}u{Right 4}
Return
:*:dqls::{Left 5}{BackSpace}es{Right 5} ; desquels (� partir de duquels)
:*:dqles::{Left 6}{BackSpace}es{Right 4}l{Right 2} ; desquelles (� partir de duqueles)
:*:lql:: ; lequel (� partir de lorsquel)
SendInput, {Left 4}{BackSpace 3}e{Right 4}
Return
:*:lqls::{Left 5}s{Right 5} ; lesquels (� partir de lequels)
:*:lqle:: ; laquelle (� partir de lequele)
SendInput, {Left 5}{BackSpace}a{Right 4}l{Right}
:*:lqles::{Left 7}{BackSpace}es{Right 7} ; lesquelles (� partir de laquelles)
:*:aql:: ; auquel
SendInput, {Left 2}u{Right}ue{Right}
Return
:*:aqls::{Left 5}x{Right 5} ; auxquels (� partir de auquels)
:*:aqles::{Left 6}x{Right 4}l{Right 2} ; auxquelles (� partir de auqueles)
:C*:qc:: ; quelque chose
SendInput, {Left}uelque {Right}hose
Return
:C*:Qc:: ; Quelque chose
SendInput, {Left}uelque {Right}hose
Return
:*:ql:: ; quel
SendInput, {Left}ue{Right}
Return
:*:qle::{Left}l{Right} ; quelle (� partir de quele)
:*:qlc::onque ; quelconque (� partir de quelc)
:*:qlq::{Left}con{Right}ue ; quelconque (� partir de quelq)
:*:qic::onque ; quiconque (� partir de quic)
:*:qp::{Left}uelque {Right}art ; quelque part
:*:qf::{Left}uelque {Right}ois ; quelque fois
:*:qj::{Left}uelques {Right}ours ; quelques jours
:*:dv:: ; divers
SendInput, {Left}i{Right}ers
Return
:*:dvd::{BackSpace 7}DVD ; DVD (� partir de diversd)
:*:dx::{Left}eu{Right} ; deux
:*:trs::{Left}oi{Right} ; trois
:*:cq::{Left}in{Right} ; cinq
:*:nf::{Left}eu{Right} ; neuf
:*:dze::{Left 2}ou{Right 2} ; douze
:*:trz::{Left}ei{Right}e ; treize
:*:vgt::{Left 2}in{Right 2} ; vingt
:*:4ante::{Left 4}{BackSpace}quar{Right 4} ; quarante
:*:'ante::{Left 4}{BackSpace}quar{Right 4} ; quarante
:*:5ante::{Left 4}{BackSpace}cinqu{Right 4} ; cinquante
:*:(ante::{Left 4}{BackSpace}cinqu{Right 4} ; cinquante
:*:6ante::{Left 4}{BackSpace}soix{Right 4} ; soixante
:*:-ante::{Left 4}{BackSpace}soix{Right 4} ; soixante
:*:7ante::{Left 4}{BackSpace}soix{Right 4}-dix ; soixante-dix
:*:�ante::{Left 4}{BackSpace}soix{Right 4}-dix ; soixante-dix
:*:7dx::{Left 2}{BackSpace}soixante-{Right}i{Right} ; soixante-dix
:*:7dix::{Left 3}{BackSpace}soixante-{Right 3} ; soixante-dix
:*:�dx::{Left 2}{BackSpace}soixante-{Right}i{Right} ; soixante-dix
:*:�dix::{Left 3}{BackSpace}soixante-{Right 3} ; soixante-dix
:*:4vgt::{Left 3}{BackSpace}quatre-{Right}in{Right 2} ; quatre-vingt
:*:9dx::{Left 2}{BackSpace}quatre-vingt-{Right}i{Right} ; quatre-vingt-dix
:*:9dix::{Left 3}{BackSpace}quatre-vingt-{Right 3} ; quatre-vingt-dix
:*:�dx::{Left 2}{BackSpace}quatre-vingt-{Right}i{Right} ; quatre-vingt-dix
:*:�dix::{Left 3}{BackSpace}quatre-vingt-{Right 3} ; quatre-vingt-dix

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Adjectives :
;;;;;;;;;;;;;;

:*:fx::{Left}au{Right}
:*:std:: ; standard
SendInput, {Left}andar{Right}
Return
:*:bx::{Left}eau{Right} ; beaux
:?*:grd::{Left}an{Right} ; grand
:?*:lrd::{Left 2}ou{Right 2} ; lourd
:*:mv:: ; mauvais
SendInput, {Left}au{Right}ais
Return
:?*:vulg:: ; vulg (pour �viter vulong)
Return
:?*:lg:: ; long
SendInput, {Left}on{Right}
Return
:*:lge::{Left}u{Right} ; longue (� partir de longe)
:*:lgr:: ; longueur (� partir de longr)
SendInput, {Left}ueu{Right}
Return
:?*:lgo::{Left 2}{BackSpace 2}{Right 2} ; lgo (� partir de longo)
:?*:lgr�::{Left 3}{BackSpace 2}{Right 3} ; lgr� (� partir de longr�)
:*:lgr::{Left}ueu{Right} ; longueur (� partir de longr)
:*:bulga::{Left 2}{BackSpace 2}{Right 2} ; bulga (� partir de bulonga)
:?*:dbl::{Left 2}ou{Right 2} ; doubl
:?*:crt::{Left 2}ou{Right 2} ; court
:*:rd:: ; rond
SendInput, {Left}on{Right}
Return
:*:gche::{Left 3}au{Right 3} ; gauche
:?*:drt::{Left}oi{Right} ; droit
:*:ht:: ; haut
SendInput, {Left}au{Right}
Return
:*:htr::{Left}eu{Right} ; hauteur
:*:horiz::ontal ; horizontal
:*:cj::{Left}i-{Right}oint ; ci-joint
:?*:nveau::{Left 3}{BackSpace 2}{Left}{BackSpace 2}ou{Right 4} ; nouveau (� partir de n'avaieau)
:*:nvo::{BackSpace 2}{Left 2}{BackSpace 2}ou{Right}e{Right}u ; nouveau (� partir de n'avaio)
:?*:nvl::{Left}{BackSpace 2}{Left}{BackSpace 2}ou{Right}e{Right} ; nouvel (� partir de n'avail)
:*:nvel::{Left 2}{BackSpace 2}{Left}{BackSpace 2}ou{Right 3} ; nouvel (� partir de n'avaiel)
::st.::{BackSpace 2}{Left}ain{Right} ; saint
::sts::{BackSpace}{Left 2}ain{Right 2} ; saints
::ste::{BackSpace}{Left 2}ain{Right 2} ; sainte
::stes::{BackSpace}{Left 3}ain{Right 3} ; saintes
:*:mdr::{Left 2}ort {Right}e {Right}ire ; mort de rire
:*:dsl::{Left 2}{BackSpace 2}�{Right}o{Right}� ; d�sol� (� partir de dansl)
:*:chd::{Left}au{Right} ; chaud
:*:frd::{Left}oi{Right} ; froid

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Things :
;;;;;;;;;;

:*:msg::{Left 2}{BackSpace 2}es{Right}a{Right}e ; message (� partir de maisg)
:*:pj:: ; pi�ce jointe
SendInput, {Left}i�ce {Right}ointe
Return
:*:pjs::{Left 8}s{Right 8} ; pi�ces jointes (� partir de pi�ce jointes)
:*:txt::{Left 2}{BackSpace 2}e{Right 2}e ; texte (� partir de tauxt)
::doc::{BackSpace}ument ; document
::docs::{BackSpace}{Left}ument{Right} ; documents
:*:chp::{Left}am{Right} ; champ
:C*:Df::{Left}�{Right}aut ; D�faut
:C*:df::{Left}�{Right}aut ; d�faut
:?*:nbr:: ; nombr
SendInput, {Left 2}om{Right 2}
Return
:*:nbrx::{Left}eu{Right} ; nombreux (� partir de nombrx)
::num::{BackSpace}�ro ; num�ro
::nums::{BackSpace}{Left}�ro{Right} ; num�ros
:*:travx::{Left}au{Right} ; travaux
:*:trvx::{Left 2}a{Right}au{Right} ; travaux
:?*:trvl::{Left 2}a{Right}ai{Right} ; travail
:?*:travl::{Left}ai{Right} ; travail
:?*:jx::{Left}eu{Right} ; jeux
:*:yx::{Left}eu{Right} ; yeux
:?*:pds::{Left 2}oi{Right 2} ; poids
:?*:src::{Left 2}ou{Right 2}e ; source
:*:bt:: ; bout
SendInput, {Left}ou{Right}
Return
:*:btq::{Left}i{Right}ue ; boutique (depuis boutq)
:*:rmq::{Left 2}e{Right}ar{Right}u ; remarqu
:?*:grp:: ; groupe
SendInput, {Left}ou{Right}e
Return
:?*:grpe::{BackSpace} ; groupe (� partir de groupee)
:?*:grp�::{Left}{BackSpace}{Right} ; group� (� partir de groupe�)
:*:trp:: ; troupe
SendInput, {Left}ou{Right}e
Return
:*:trpe::{BackSpace} ; troupe (� partir de troupee)
:*:trp�::{Left}{BackSpace}{Right} ; troup� (� partir de troupe�)
:C*:rf::{Left}�{Right}�ren ; r�f�ren
:C*:Rf::{Left}�{Right}�ren ; R�f�ren
:*:rte::{Left 2}ou{Right 2} ; route
:*:chb::{Left}am{Right} ; chamb
::�tab::{BackSpace}lissement ; �tablissement
::�tabs::{BackSpace}{Left}lissement{Right} ; �tablissements
::philo::{BackSpace}sophie ; philosophie
:?*:oeuf::{Left 2}{BackSpace 2}�{Right 2} ; �uf
:?*:oeur::{Left 2}{BackSpace 2}�{Right 2} ; �ur
:C?*:oeuvr::{Left 3}{BackSpace 2}�{Right 3} ; �uvre
:C?*:Oeuvr::{Left 3}{BackSpace 2}�{Right 3} ; �uvre
:*:voeu::{Left 2}{BackSpace 2}�{Right 2} ; v�u
:C*:oeil::{Left 2}{BackSpace 2}�{Right 2} ; �il
:C*:Oeil::{Left 2}{BackSpace 2}�{Right 2} ; �il
:*:oeno::{Left 2}{BackSpace 2}�{Right 2} ; �no
:*:oest::{Left 2}{BackSpace 2}�{Right 2} ; �st
:*:noeud::{Left 2}{BackSpace 2}�{Right 2} ; n�ud
:*:foetus::{Left 3}{BackSpace 2}�{Right 3} ; f�tus
:*:oedipe::{Left 4}{BackSpace 2}{Right 4} ; �dipe
:*:oesophage::{Left 7}{BackSpace 2}�{Right 7} ; �sophage
:*:aeternam::{Left 6}{BackSpace 2}�{Right 6} ; �ternam
:*:vitae::{BackSpace 2}� ; vit�
:*:aequo::{Left 3}{BackSpace 2}{Right 3} ; �quo

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Actions :
;;;;;;;;;;;

:*:np::{Left}o {Right}roblem ; no problem
:*:pb:: ; probl�me
SendInput, {Left}ro{Right}l�me
Return
:*:pbm:: ; probl�me (� partir de probl�mem)
SendInput, {BackSpace}
Return
:*:pbmt::{Left}{BackSpace}{Left}{BackSpace}�{Right}a{Right}ique ; probl�matique (� partir de probl�met)
:*:pbt::{Left}{BackSpace}{Left}{BackSpace}�{Right}a{Right}ique ; probl�matique (� partir de probl�met)
:*:pbma::{Left}{BackSpace}{Left}{BackSpace}�{Right 2} ; probl�ma (� partir de probl�mea)
:*:pba::{Left}{BackSpace}{Left}{BackSpace}�{Right 2} ; probl�ma (� partir de probl�mea)
:*:fd::{Left}on{Right} ; fond
:C*:rv::{Left}endez-{Right}ous ; rendez-vous
:C*:Rv::{Left}endez-{Right}ous ; Rendez-vous
:C*:rdv::{Left 3}{BackSpace}e{Right 2}ez-{Right}ous ; rendez-vous (� partir de rondv)
:C*:Rdv::{Left 3}{BackSpace}e{Right 2}ez-{Right}ous ; Rendez-vous (� partir de Rondv)
:C*:RDV::{Left 2}{BackSpace 2}{Right 2} ; RDV (� partir de RonDV)
::prop::{BackSpace}osition ; proposition
::props::{BackSpace}{Left}osition{Right} ; propositions
::propo::{BackSpace}sition ; proposition
::proba::{BackSpace}bilit� ; probabilit�
::probas::{BackSpace}{Left}bilit�{Right} ; probabilit�s
:*:tx:: ; taux
SendInput, {Left}au{Right}
Return
:*:cp:: ; coup
SendInput, {Left}ou{Right}
Return
:*:cpam::{BackSpace 6}CPAM ; CPAM (� partir de coupam)
:C*:bd::{Left}on{Right} ; bond
:C*:Bd::{Left}on{Right} ; Bond
:C*:xp::{Left 2}e{Right 2}�ri ; exp�ri
:C*:Xp::{Left}{BackSpace}Ex{Right}�ri ; Exp�ri
:*:cfg::{Left 2}on{Right}i{Right} ; config
:C?*:fc:: ; fonction
:C?*:Fc:: ; Fonction
SendInput, {Left}on{Right}tion
Return
:*:fct::{Left}nemen{Right} ; fonctionnement
:C*:ctrl:: ; contr�le (� partir de c'�taitrl)
SendInput, {Left 3}{BackSpace 5}on{Right 2}�{Right}e
Return
:C*:ctrle::{BackSpace} ; contr�le (� partir de contr�lee)
:C*:ctrl�::{Left}{BackSpace}{Right} ; contr�le (� partir de contr�le�)
:C*:ctrla::{Left}{BackSpace}{Right} ; contr�le (� partir de contr�lea)
:C*:Ctrl::{Left 3}{BackSpace 5}{Right 3} ; Ctrl (� partir de C'�taitrl)
:C:cr::{BackSpace}{Left}ompte-{Right}endu ; compte-rendu
:C:Cr::{BackSpace}{Left}ompte-{Right}endu ; Compte-rendu
:C*:crs::{Left 2}omptes-{Right}endu{Right} ; comptes-rendus
:C*:Crs::{Left 2}omptes-{Right}endu{Right} ; Comptes-rendus
:*:pts::{Left 2}{BackSpace 2}oin{Right 2} ; points (� partir de peuts)
:*:m�d:: ; mise � disposition
SendInput, {BackSpace}{Left 2}ise {Right} {Right}isposition
Return
:*:m�ds::{BackSpace}{Left 14}s{Right 14} ; mises � disposition (� partir de mise � dispositions)
::maj::{BackSpace}{Left}{BackSpace}ise � {Right}our ; mise � jour
:*:majs::{BackSpace}{Left}{BackSpace}ises � {Right}our ; mises � jour
:*:m�j:: ; mise � jour
SendInput, {Left 2}ise {Right} {Right}our
Return
:*:m�js::{BackSpace}{Left 7}s{Right 7} ; mises � jour (� partir de mise � jours)
::mef::{BackSpace}{Left 2}ise {Right}n {Right}orme ; mise en forme
:*:mefs::{BackSpace}{Left 2}ises {Right}n {Right}orme ; mises en forme
:*:ccl::{Left 2}on{Right 2}usion ; conclusion
::suppr::{BackSpace}ession ; suppression
:*:supprs::{Left}ession{Right} ; suppressions
:*:trt::{Left}ai{Right}ement ; traitement
::event::{BackSpace}{Left 4}{BackSpace}�{Right}�nem{Right 3} ; �v�nement
:*:events::{Left 5}{BackSpace}�{Right}�nem{Right 4} ; �v�nements
:*:mvt::{Left}{BackSpace 3}{Left 2}{BackSpace}o{Right 2}emen{Right} ; mouvement (� partir de mauvaist)
:?*:chg:: ; chang
SendInput, {Left}an{Right}
Return
:?*:chgt::{Left}emen{Right} ; changement (� partir de changt)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Computing :
;;;;;;;;;;;;;

:*:http::{Left 3}{BackSpace 2}{Right 3} ; http (� partir de hauttp)
:*:htm::{Left 2}{BackSpace 2}{Right 2} ; htm (� partir de hautm)
:*:prog:: ; programm
SendInput, ramm
Return
:*:progr::{BackSpace 4} ; progr (� partir de programmr)
:*:prog�n::{Left 2}{BackSpace 4}{Right 2} ; prog�n (� partir de programm�n)
:*:cpu::{Left 2}{BackSpace 2}{Right 2} ; cpu (� partir de coupu)
::appli::{BackSpace}cation ; application
:*:applis::{Left}cation{Right} ; applications
:*:cmd::{Left}{BackSpace}an{Right} ; command (� partir de commed)
:*:cma::{Left}{BackSpace}{Right} ; comma (� partir de commea)
::fic::{BackSpace}hier ; fichier
:*:fics::{Left}hier{Right} ; fichiers
::enreg::{BackSpace}istrement ; enregistrement
:*:enregs::{Left}istrement{Right} ; enregistrements
::dim::{BackSpace}ension ; dimension
:*:dims::{Left}ension{Right} ; dimensions
:*:rg:: ; rang
SendInput, {Left}an{Right}
Return
:*:rgb::{Left 2}{BackSpace 2}{Right 2} ; rgb (� partir de rangb)
:C*:agt::{Left}en{Right} ; agent
:C*:Agt::{Left}en{Right} ; Agent
:*:prodr::{Left}ucteu{Right} ; production
::conso::{BackSpace}mmateur ; consommateur
:*:consos::{Left}mmateur{Right} ; consommateurs
:*:d�cpt::{Left 2}om{Right 2} ; d�compt
:*:cpt::{Left 2}{BackSpace}m{Right 2} ; compt (� partir de coupt)
:*:mdp:: ; mot de passe
SendInput, {Left 2}ot {Right}e {Right}asse
Return
:*:mdps::{BackSpace}{Left 9}s{Right 9} ; mots de passe (� partir de mot de passes)
::env::{BackSpace}iron ; environ
:*:envt::{Left}ironnemen{Right} ; environnement
:*:envs::{Left}ironnement{Right} ; environnements
::d�v::{BackSpace}eloppement ; d�veloppement
:*:d�vs::{Left}eloppement{Right} ; d�veloppements
:*:b�s::{Left 2}ac {Right} {Right}able ; bac � sable
::int�::{BackSpace}gration ; int�gration
::rec::{BackSpace}ette ; recette
:*:recs::{Left}ette{Right} ; recettes
:C:mab::{BackSpace}{Left}rche � {Right}lanc ; marche � blanc
:*:pprod::{Left 4}r�-{Right 4}uction ; pr�-production
::prod::{BackSpace}uction ; production
::pf::{BackSpace}{Left}late{Right}orme ; plateforme
:*:pfs::{Left 2}late{Right}orme{Right} ; plateformes
:*:specs::{Left 2}{BackSpace}�{Right}ification{Right} ; sp�cifications
::qualif::{BackSpace}ication ; qualification
:*:qualifs::{Left}ication{Right} ; qualifications
::modif::{BackSpace}ication ; modification
:*:modifs::{Left}ication{Right} ; modifications
::ver::{BackSpace}sion ; version
::liv::{BackSpace}raison ; livraison
:*:livs::{Left}raison{Right} ; livraisons
::conf::{BackSpace}iguration ; configuration
:*:confs::{Left}iguration{Right} ; configurations
::planif::{BackSpace}ication ; planification
:*:planifs::{Left}ication{Right} ; planifications
:C*:mei:: ; mise en int�gration
SendInput, {Left 2}ise {Right}n {Right}nt�gration
Return
:C*:meil::{Left}{BackSpace 10}{Left}{BackSpace 2}{Left}{BackSpace 4}{Right 3} ; meil (� partir de mise en int�grationl)
:C*:meis::{BackSpace}{Left 15}s{Right 15} ; mises en int�gration (� partir de mise en int�grations)
:C*:Mei:: ; Mise en int�gration
SendInput, {Left 2}ise {Right}n {Right}nt�gration
Return
:C*:Meil::{Left}{BackSpace 10}{Left}{BackSpace 2}{Left}{BackSpace 4}{Right 3} ; Meil (� partir de Mise en int�grationl)
:C*:Meis::{BackSpace}{Left 15}s{Right 15} ; Mises en int�gration (� partir de Mise en int�grations)
:C*:mep:: ; mise en production
SendInput, {Left 2}ise {Right}n {Right}roduction
Return
:C*:meps::{BackSpace}{Left 14}s{Right 14} ; mises en production (� partir de mise en productions)
:C*:Mep:: ; Mise en production
SendInput, {Left 2}ise {Right}n {Right}roduction
Return
:C*:Meps::{BackSpace}{Left 14}s{Right 14} ; Mises en production (� partir de Mise en productions)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Time :
;;;;;;;;

; :*:lgtps::{Left 2}em{Right 2} ; longtemps (� partir de longtps)
:?*:tps::{Left 2}em{Right 2} ; temps
:C?*:bjr:: ; bonjour
:C?*:Bjr:: ; Bonjour
SendInput, {Left 2}on{Right}ou{Right}
Return
:*:smn::{Left 2}e{Right}ai{Right}e ; semaine
:C?*:Jr::{Left}ou{Right} ; Jour
:C?*:jr::{Left}ou{Right} ; jour
:*:hre:: ; heure (� partir de hiere)
SendInput, {Left 3}{BackSpace}{Right}u{Right 2}
return
:*:href::{Left 3}{BackSpace 2}{Right 3} ; href (� partir de heuref)
:*:dsm::{Left 2}{BackSpace 2}�{Right}or{Right}ais ; d�sormais (� partir de dansm)
:C*:dl:: ; d�s lors
SendInput, {Left}�s {right}ors
Return
:C*:Dl:: ; D�s lors
SendInput, {Left}�s {right}ors
Return
:C*:Dll::{BackSpace 8}LL ; DLL (� partir de D�s lorsl)
:C*:dll::{BackSpace 9}DLL ; DLL (� partir de d�s lorsl)
::ec::{BackSpace}{Left}n{Right}ore ; encore
::ef::{BackSpace}{Left}n{Right}in ; enfin
:*:atf::{Left 2}u{Right}re{Right}ois ; autrefois
:*:avh:: ; avant-hier
SendInput, {Left}ant-{Right}ier
Return
:*:avhr::{BackSpace} ; avant-hier (� partir de avant-hierr)
:*:avth:: {Left}-{Right}ier ; avant-hier (� partir de avanth)
:*:avth:: {Left}-{Right}ier ; avant-hier (� partir de avanth)
:*:avthr::{BackSpace} ; avant-hier (� partir de avant-hierr)
:*:hr:: ; hier
SendInput, {Left}ie{Right}
Return
:*:mmt::{Left 3}{BackSpace}o{Right 2}n{Right} ; moment (� partir de m�met)
:*:maintt::{Left}enan{Right} ; maintenant
:*:mtn::{Left 3}{BackSpace 3}{Right 3}tenant ; maintenant (� partir de m'�tain)
:C*:Sd::
SendInput, {Left}ou{Right}ain ; soudain
Return
:C*:sd::
SendInput, {Left}ou{Right}ain ; soudain
Return
:*:sdc::{Left}{BackSpace 3}{Left}{BackSpace 2}{Right 2} ; sdc (� partir de soudainc)
:*:sdf::{Left}{BackSpace 3}{Left}{BackSpace 2}{Right 2} ; sdf (� partir de soudainf)
:*:sdk::{Left}{BackSpace 3}{Left}{BackSpace 2}{Right 2} ; sdk (� partir de soudaink)
:*:t�c::{Left 2}out {Right} {Right}oup ; tout � coup
::ast::{BackSpace}{Left 2}us{Right}it�{Right} ; aussit�t
:*:bto::{BackSpace}{Left}{BackSpace 2}ien{Right}�t ; bient�t (� partir de bouto)
:C*:auj::ourd'hui ; aujourd'hui
:C*:Auj::ourd'hui ; Aujourd'hui
:*:qauj::{Left 3}u'{Right 3}ourd'hui ; qu'aujourd'hui
:*:d�p::{Left 2}�s {Right} {Right}r�sent ; d�s � pr�sent
:*:aprm::{Left}�s-{Right}idi ; apr�s-midi
:*:dm:: ; demain
SendInput, {Left}e{Right}ain
Return
:*:dmd::{Left 2}{BackSpace}{Right 2} ; demand (� partir demaind)
:C*:Apdm::{Left 3}{BackSpace 4}{Left}{BackSpace}{Left}{BackSpace 2}A{Right 2}�s-{Right 3}ain ; Apr�s-demain (� partir de � partir dem)
:*:apdm::{Left 3}{BackSpace 4}{Left}{BackSpace}{Left}{BackSpace 2}a{Right 2}�s-{Right 3}ain ; apr�s-demain (� partir de � partir dem)
:*:aprdm::{Left 2}{BackSpace 2}�s-{Right}e{Right}ain ; apr�s-demain (� partir de aprendm)
::lun::{BackSpace}di ; lundi
::mar::{BackSpace}di ; mardi
:*:mercr:: ; mercredi
SendInput, edi
Return
:*:mercredi::{BackSpace 3} ; mercredi (� partir de mercrediedi)
::vendr::{BackSpace}edi ; vendredi
::dim::{BackSpace}anche ; dimanche
:*:w-e::{Left 2}eek{Right 2}nd ; week-end
:*:wes:: ; week-ends
SendInput, {Left}ek-end{Right}
Return
:*:west::{Left 2}{BackSpace 6}{Right 2} ; west (� partir de week-endst)
:*:fr�q:: ; fr�quen
SendInput, uen
Return
:*:fr�qu::{BackSpace 3} ; fr�qu (� partir de fr�quenu)
:*:fr�qt::{Left 2}mme{Right 2} ; fr�quemment (� partir de fr�quent)
:*:hebdo:: ; hebdomadaire
SendInput, madaire
Return
:*:hebdomadaire::{BackSpace 7} ; hebdomadaire (� partir de hebdomadairemadaire)
:*:janv:: ; janvier
SendInput, ier
Return
:*:janvi::{BackSpace 3} ; janvi (� partir de janvieri)
:*:f�v:: ; f�vrier
SendInput, rier
Return
:*:f�vr::{BackSpace 4} ; f�vr (� partir de f�vrierr)
:*:aout::{Left}{BackSpace}�{Right} ; ao�t
:*:oct:: ; octobre
SendInput, obre
Return
:*:octo::{BackSpace 4} ; octo (� partir d'octobreo)
:*:octa::{Left}{BackSpace 4}{Right} ; octa (� partir d'octobrea)
:*:octe::{Left}{BackSpace 4}{Right} ; octe (� partir d'octobree)
:*:octr::{Left}{BackSpace 4}{Right} ; octr (� partir d'octobrer)
:*:nov:: ; novembre
SendInput, embre
Return
:*:nove::{BackSpace 5} ; nove (� partir de novembree)
:*:nova::{Left}{BackSpace 5}{Right} ; nova (� partir de novembrea)
::d�c::{BackSpace}embre ; d�cembre

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Various :
;;;;;;;;;;;

:C:ab::{BackSpace 3}Arnaud BeLO. ; Arnaud BeLO.
:C:AB::{BackSpace}{Left}rnaud {Right}ELONOSCHKIN ; Arnaud BELONOSCHKIN
:*:mk:: ; Miuka
SendInput, {BackSpace 2}Miuka
Return
:C:MW::{BackSpace}{Left}iloslawa {Right}YBORSKA ; Miloslawa WYBORSKA
:C*:wp:: ; WordPress
SendInput, {BackSpace 2}WordPress
Return
:C*:WP:: ; WordPress
SendInput, {Left}ord{Right}ress
Return
:C*:wp-::{Left}{BackSpace 9}wp{Right} ; wp- (� partir de WordPress-)
:C*:WP-::{Left}{BackSpace 4}{Left}{BackSpace 3}{Right 2} ; WP- (� partir de WordPress-)
:*:mkw::{BackSpace} WYBORSKA ; Miuka WYBORSKA (� partir de Miukaw)
:*:b�b:: ; Bande � Balk
SendInput, {BackSpace}{Left}{BackSpace}Bande {Right} Balk
Return
; :C*:bb::{Left}�l{Right}�l ; b�lb�l
:*:km.org::{Left 5}amea{Right}eahfilms{Right 4} ; kameameahfilms.org
:*:kmf::{BackSpace 3}Kamea Meah Films ; Kamea Meah Films
:*:b�bs::{Left}{BackSpace 3}{Left}{BackSpace}{Left}{BackSpace 5}{Right 3} ; B�Bs (� partir de Bande � Balks)
:C*:alodb:: ; � l'Ouest des Balkans
SendInput, {BackSpace}{Left}{BackSpace}{Left}{BackSpace}� {Right}'Ouest {Right}es Balkans
Return
:C*:alodb.org::{Left 4}{BackSpace 21}alodb{Right 4} ; alodb.org (� partir de � l'Ouest des Balkans.org)
:*:slt::{Left 2}a{Right}u{Right} ; salut
:*:�b::{Left}{BackSpace}� {Right}ient�t ; � bient�t
:*:bs:: ; bises
SendInput, {Left}ise{Right}
Return
:*:bsr::{Left 2}{BackSpace 3}on{Right}oi{Right} ; bonsoir (� partir de bisesr)
:*:dgt::{Left 2}oi{Right 2} ; doigt
:*:frt::{Left}on{Right} ; front
::sg::{BackSpace}{Left}an{Right} ; sang
:C*:Bp::{Left}onne {Right}artie ; Bonne partie
:C*:bp::{Left}onne {Right}artie ; bonne partie
:C*:Gg::{Left}{BackSpace}Have a good {Right}ame ; Have a good game
:C*:gg::{Left 2}have a {Right}ood {Right}ame ; Have a good game
:C*:Hf::{Left}ave {Right}un ! ; Have fun !
:C*:hf::{Left}ave {Right}un ! ; have fun !
:*:drg::{Left}a{Right}on ; dragon
:C*:Mc::{Left}er{Right}i ; Merci
:C*:mc::{Left}er{Right}i ; merci
:C:cie::{BackSpace}{Left 2}ompagn{Right 2} ; compagnie
:*:thx::{BackSpace}anks ; thanks
:*:thks::{Left 3}{BackSpace}a{Right 3} ; thanks (� partir de thinks)
::sb::{BackSpace}{Left}ome{Right}ody ; somebody
:*:sthg::{Left 3}ome{Right 2}in{Right} ; something
:*:thg::{Left}in{Right} ; thing
:*:thk:: ; think
SendInput, {Left}in{Right}
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

HOT_PrintHotstring(PRM_HotString, PRM_BackSpaceCount = 0) {

	If (GetKeyState("CapsLock", "P")) {
		StringGetPos, LOC_HotKey, A_ThisHotKey, :, L3
		LOC_HotKey := SubStr(A_ThisHotKey, LOC_HotKey)
		, LOC_BackSpaceCount := StrLen(LOC_HotKey) - 1 + PRM_BackSpaceCount
		SendInput, {BackSpace %LOC_BackSpaceCount%}%PRM_HotString%
/*		If (GetKeyState("Shift", "P")) {
			StringUpper, PRM_HotString, PRM_HotString
		}
*/
		SendInput, {Blind}{CapsLock Up}
	}
	Return
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#Hotstring C

; Suffixe en A (ant) :
;;;;;;;;;;;;;;;;;;;;;;
:?*:aA::
HOT_PrintHotstring("nt")
Return
:?*:qA::
HOT_PrintHotstring("uant")
Return
:?*:bA::
:?*:cA::
:?*:dA::
:?*:eA::
:?*:�A::
:?*:�A::
:?*:fA::
:?*:gA::
:?*:hA::
:?*:iA::
:?*:jA::
:?*:kA::
:?*:lA::
:?*:mA::
:?*:nA::
:?*:oA::
:?*:pA::
:?*:rA::
:?*:sA::
:?*:tA::
:?*:uA::
:?*:vA::
:?*:wA::
:?*:xA::
:?*:yA::
:?*:zA::
HOT_PrintHotstring("ant")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en AB (antable) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aAb::
:?*:qAb::
:?*:bAb::
:?*:cAb::
:?*:dAb::
:?*:eAb::
:?*:�Ab::
:?*:�Ab::
:?*:fAb::
:?*:gAb::
:?*:hAb::
:?*:iAb::
:?*:jAb::
:?*:kAb::
:?*:lAb::
:?*:mAb::
:?*:nAb::
:?*:oAb::
:?*:pAb::
:?*:rAb::
:?*:sAb::
:?*:tAb::
:?*:uAb::
:?*:vAb::
:?*:wAb::
:?*:xAb::
:?*:yAb::
:?*:zAb::
HOT_PrintHotstring("able")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en ABT (antablement) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aAbt::
:?*:qAbt::
:?*:bAbt::
:?*:cAbt::
:?*:dAbt::
:?*:eAbt::
:?*:�Abt::
:?*:�Abt::
:?*:fAbt::
:?*:gAbt::
:?*:hAbt::
:?*:iAbt::
:?*:jAbt::
:?*:kAbt::
:?*:lAbt::
:?*:mAbt::
:?*:nAbt::
:?*:oAbt::
:?*:pAbt::
:?*:rAbt::
:?*:sAbt::
:?*:tAbt::
:?*:uAbt::
:?*:vAbt::
:?*:wAbt::
:?*:xAbt::
:?*:yAbt::
:?*:zAbt::
HOT_PrintHotstring("ment")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en AE (antence) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aAe::
:?*:qAe::
:?*:bAe::
:?*:cAe::
:?*:dAe::
:?*:eAe::
:?*:�Ae::
:?*:�Ae::
:?*:fAe::
:?*:gAe::
:?*:hAe::
:?*:iAe::
:?*:jAe::
:?*:kAe::
:?*:lAe::
:?*:mAe::
:?*:nAe::
:?*:oAe::
:?*:pAe::
:?*:rAe::
:?*:sAe::
:?*:tAe::
:?*:uAe::
:?*:vAe::
:?*:wAe::
:?*:xAe::
:?*:yAe::
:?*:zAe::
HOT_PrintHotstring("ence")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en AL (antelle) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aAl::
:?*:qAl::
:?*:bAl::
:?*:cAl::
:?*:dAl::
:?*:eAl::
:?*:�Al::
:?*:�Al::
:?*:fAl::
:?*:gAl::
:?*:hAl::
:?*:iAl::
:?*:jAl::
:?*:kAl::
:?*:lAl::
:?*:mAl::
:?*:nAl::
:?*:oAl::
:?*:pAl::
:?*:rAl::
:?*:sAl::
:?*:tAl::
:?*:uAl::
:?*:vAl::
:?*:wAl::
:?*:xAl::
:?*:yAl::
:?*:zAl::
HOT_PrintHotstring("elle")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en ALT (antellement) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aAlt::
:?*:qAlt::
:?*:bAlt::
:?*:cAlt::
:?*:dAlt::
:?*:eAlt::
:?*:�Alt::
:?*:�Alt::
:?*:fAlt::
:?*:gAlt::
:?*:hAlt::
:?*:iAlt::
:?*:jAlt::
:?*:kAlt::
:?*:lAlt::
:?*:mAlt::
:?*:nAlt::
:?*:oAlt::
:?*:pAlt::
:?*:rAlt::
:?*:sAlt::
:?*:tAlt::
:?*:uAlt::
:?*:vAlt::
:?*:wAlt::
:?*:xAlt::
:?*:yAlt::
:?*:zAlt::
HOT_PrintHotstring("ment")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en AM (antisme) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aAm::
:?*:qAm::
:?*:bAm::
:?*:cAm::
:?*:dAm::
:?*:eAm::
:?*:�Am::
:?*:�Am::
:?*:fAm::
:?*:gAm::
:?*:hAm::
:?*:iAm::
:?*:jAm::
:?*:kAm::
:?*:lAm::
:?*:mAm::
:?*:nAm::
:?*:oAm::
:?*:pAm::
:?*:rAm::
:?*:sAm::
:?*:tAm::
:?*:uAm::
:?*:vAm::
:?*:wAm::
:?*:xAm::
:?*:yAm::
:?*:zAm::
HOT_PrintHotstring("isme")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en AN (antaison) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aAn::
:?*:qAn::
:?*:bAn::
:?*:cAn::
:?*:dAn::
:?*:eAn::
:?*:�An::
:?*:�An::
:?*:fAn::
:?*:gAn::
:?*:hAn::
:?*:iAn::
:?*:jAn::
:?*:kAn::
:?*:lAn::
:?*:mAn::
:?*:nAn::
:?*:oAn::
:?*:pAn::
:?*:rAn::
:?*:sAn::
:?*:tAn::
:?*:uAn::
:?*:vAn::
:?*:wAn::
:?*:xAn::
:?*:yAn::
:?*:zAn::
HOT_PrintHotstring("aison")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en AO (antion) :
;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aAo::
:?*:qAo::
:?*:bAo::
:?*:cAo::
:?*:dAo::
:?*:eAo::
:?*:�Ao::
:?*:�Ao::
:?*:fAo::
:?*:gAo::
:?*:hAo::
:?*:iAo::
:?*:jAo::
:?*:kAo::
:?*:lAo::
:?*:mAo::
:?*:nAo::
:?*:oAo::
:?*:pAo::
:?*:rAo::
:?*:sAo::
:?*:tAo::
:?*:uAo::
:?*:vAo::
:?*:wAo::
:?*:xAo::
:?*:yAo::
:?*:zAo::
HOT_PrintHotstring("ion")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en AQ (antique) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;
:*:Aq::
:?*:aAq::
:?*:qAq::
:?*:bAq::
:?*:cAq::
:?*:dAq::
:?*:eAq::
:?*:�Aq::
:?*:�Aq::
:?*:fAq::
:?*:gAq::
:?*:hAq::
:?*:iAq::
:?*:jAq::
:?*:kAq::
:?*:lAq::
:?*:mAq::
:?*:nAq::
:?*:oAq::
:?*:pAq::
:?*:rAq::
:?*:sAq::
:?*:tAq::
:?*:uAq::
:?*:vAq::
:?*:wAq::
:?*:xAq::
:?*:yAq::
:?*:zAq::
HOT_PrintHotstring("ique")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en AQT (antiquement) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:*:Aqt:
:?*:aAqt::
:?*:qAqt::
:?*:bAqt::
:?*:cAqt::
:?*:dAqt::
:?*:eAqt::
:?*:�Aqt::
:?*:�Aqt::
:?*:fAqt::
:?*:gAqt::
:?*:hAqt::
:?*:iAqt::
:?*:jAqt::
:?*:kAqt::
:?*:lAqt::
:?*:mAqt::
:?*:nAqt::
:?*:oAqt::
:?*:pAqt::
:?*:rAqt::
:?*:sAqt::
:?*:tAqt::
:?*:uAqt::
:?*:vAqt::
:?*:wAqt::
:?*:xAqt::
:?*:yAqt::
:?*:zAqt::
HOT_PrintHotstring("ment")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en AR (anteur) :
;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aAr::
:?*:qAr::
:?*:bAr::
:?*:cAr::
:?*:dAr::
:?*:eAr::
:?*:�Ar::
:?*:�Ar::
:?*:fAr::
:?*:gAr::
:?*:hAr::
:?*:iAr::
:?*:jAr::
:?*:kAr::
:?*:lAr::
:?*:mAr::
:?*:nAr::
:?*:oAr::
:?*:pAr::
:?*:rAr::
:?*:sAr::
:?*:tAr::
:?*:uAr::
:?*:vAr::
:?*:wAr::
:?*:xAr::
:?*:yAr::
:?*:zAr::
HOT_PrintHotstring("eur")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en AS (antesse) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aAs::
:?*:qAs::
:?*:bAs::
:?*:cAs::
:?*:dAs::
:?*:eAs::
:?*:�As::
:?*:�As::
:?*:fAs::
:?*:gAs::
:?*:hAs::
:?*:iAs::
:?*:jAs::
:?*:kAs::
:?*:lAs::
:?*:mAs::
:?*:nAs::
:?*:oAs::
:?*:pAs::
:?*:rAs::
:?*:sAs::
:?*:tAs::
:?*:uAs::
:?*:vAs::
:?*:wAs::
:?*:xAs::
:?*:yAs::
:?*:zAs::
HOT_PrintHotstring("esse")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en AT (antement) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aAt::
:?*:qAt::
:?*:bAt::
:?*:cAt::
:?*:dAt::
:?*:eAt::
:?*:�At::
:?*:�At::
:?*:fAt::
:?*:gAt::
:?*:hAt::
:?*:iAt::
:?*:jAt::
:?*:kAt::
:?*:lAt::
:?*:mAt::
:?*:nAt::
:?*:oAt::
:?*:pAt::
:?*:rAt::
:?*:sAt::
:?*:tAt::
:?*:uAt::
:?*:vAt::
:?*:wAt::
:?*:xAt::
:?*:yAt::
:?*:zAt::
HOT_PrintHotstring("ement")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en AY (antille) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;
:*:Ay::
:?*:aAy::
:?*:qAy::
:?*:bAy::
:?*:cAy::
:?*:dAy::
:?*:eAy::
:?*:�Ay::
:?*:�Ay::
:?*:fAy::
:?*:gAy::
:?*:hAy::
:?*:iAy::
:?*:jAy::
:?*:kAy::
:?*:lAy::
:?*:mAy::
:?*:nAy::
:?*:oAy::
:?*:pAy::
:?*:rAy::
:?*:sAy::
:?*:tAy::
:?*:uAy::
:?*:vAy::
:?*:wAy::
:?*:xAy::
:?*:yAy::
:?*:zAy::
HOT_PrintHotstring("ille")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en AZ (anteuse) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aAz::
:?*:qAz::
:?*:bAz::
:?*:cAz::
:?*:dAz::
:?*:eAz::
:?*:�Az::
:?*:�Az::
:?*:fAz::
:?*:gAz::
:?*:hAz::
:?*:iAz::
:?*:jAz::
:?*:kAz::
:?*:lAz::
:?*:mAz::
:?*:nAz::
:?*:oAz::
:?*:pAz::
:?*:rAz::
:?*:sAz::
:?*:tAz::
:?*:uAz::
:?*:vAz::
:?*:wAz::
:?*:xAz::
:?*:yAz::
:?*:zAz::
HOT_PrintHotstring("euse")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en AZT (anteusement) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aAzt::
:?*:qAzt::
:?*:bAzt::
:?*:cAzt::
:?*:dAzt::
:?*:eAzt::
:?*:�Azt::
:?*:�Azt::
:?*:fAzt::
:?*:gAzt::
:?*:hAzt::
:?*:iAzt::
:?*:jAzt::
:?*:kAzt::
:?*:lAzt::
:?*:mAzt::
:?*:nAzt::
:?*:oAzt::
:?*:pAzt::
:?*:rAzt::
:?*:sAzt::
:?*:tAzt::
:?*:uAzt::
:?*:vAzt::
:?*:wAzt::
:?*:xAzt::
:?*:yAzt::
:?*:zAzt::
HOT_PrintHotstring("ment")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en B (able) :
;;;;;;;;;;;;;;;;;;;;;;;
:?*:aB::
HOT_PrintHotstring("ble")
Return
:?*:qB::
HOT_PrintHotstring("uable")
Return
:?*:bB::
:?*:cB::
:?*:dB::
:?*:eB::
:?*:�B::
:?*:�B::
:?*:fB::
:?*:gB::
:?*:hB::
:?*:iB::
:?*:jB::
:?*:kB::
:?*:lB::
:?*:mB::
:?*:nB::
:?*:oB::
:?*:pB::
:?*:rB::
:?*:sB::
:?*:tB::
:?*:uB::
:?*:vB::
:?*:wB::
:?*:xB::
:?*:yB::
:?*:zB::
HOT_PrintHotstring("able")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en BA (ablant) :
;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aBa::
:?*:qBa::
:?*:bBa::
:?*:cBa::
:?*:dBa::
:?*:eBa::
:?*:�Ba::
:?*:�Ba::
:?*:fBa::
:?*:gBa::
:?*:hBa::
:?*:iBa::
:?*:jBa::
:?*:kBa::
:?*:lBa::
:?*:mBa::
:?*:nBa::
:?*:oBa::
:?*:pBa::
:?*:rBa::
:?*:sBa::
:?*:tBa::
:?*:uBa::
:?*:vBa::
:?*:wBa::
:?*:xBa::
:?*:yBa::
:?*:zBa::
HoT_PrintHotstring("ant", 1)
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en BE (ablence) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aBe::
:?*:qBe::
:?*:bBe::
:?*:cBe::
:?*:dBe::
:?*:eBe::
:?*:�Be::
:?*:�Be::
:?*:fBe::
:?*:gBe::
:?*:hBe::
:?*:iBe::
:?*:jBe::
:?*:kBe::
:?*:lBe::
:?*:mBe::
:?*:nBe::
:?*:oBe::
:?*:pBe::
:?*:rBe::
:?*:sBe::
:?*:tBe::
:?*:uBe::
:?*:vBe::
:?*:wBe::
:?*:xBe::
:?*:yBe::
:?*:zBe::
HOT_PrintHotstring("nce")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en BH (ablechie) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aBh::
:?*:qBh::
:?*:bBh::
:?*:cBh::
:?*:dBh::
:?*:eBh::
:?*:�Bh::
:?*:�Bh::
:?*:fBh::
:?*:gBh::
:?*:hBh::
:?*:iBh::
:?*:jBh::
:?*:kBh::
:?*:lBh::
:?*:mBh::
:?*:nBh::
:?*:oBh::
:?*:pBh::
:?*:rBh::
:?*:sBh::
:?*:tBh::
:?*:uBh::
:?*:vBh::
:?*:wBh::
:?*:xBh::
:?*:yBh::
:?*:zBh::
HOT_PrintHotstring("chie")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en BJ (ablegie) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aBj::
:?*:qBj::
:?*:bBj::
:?*:cBj::
:?*:dBj::
:?*:eBj::
:?*:�Bj::
:?*:�Bj::
:?*:fBj::
:?*:gBj::
:?*:hBj::
:?*:iBj::
:?*:jBj::
:?*:kBj::
:?*:lBj::
:?*:mBj::
:?*:nBj::
:?*:oBj::
:?*:pBj::
:?*:rBj::
:?*:sBj::
:?*:tBj::
:?*:uBj::
:?*:vBj::
:?*:wBj::
:?*:xBj::
:?*:yBj::
:?*:zBj::
HOT_PrintHotstring("gie")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en BM (ablisme) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aBm::
:?*:qBm::
:?*:bBm::
:?*:cBm::
:?*:dBm::
:?*:eBm::
:?*:�Bm::
:?*:�Bm::
:?*:fBm::
:?*:gBm::
:?*:hBm::
:?*:iBm::
:?*:jBm::
:?*:kBm::
:?*:lBm::
:?*:mBm::
:?*:nBm::
:?*:oBm::
:?*:pBm::
:?*:rBm::
:?*:sBm::
:?*:tBm::
:?*:uBm::
:?*:vBm::
:?*:wBm::
:?*:xBm::
:?*:yBm::
:?*:zBm::
HOT_PrintHotstring("isme", 1)
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en BN (ablaison) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aBn::
:?*:qBn::
:?*:bBn::
:?*:cBn::
:?*:dBn::
:?*:eBn::
:?*:�Bn::
:?*:�Bn::
:?*:fBn::
:?*:gBn::
:?*:hBn::
:?*:iBn::
:?*:jBn::
:?*:kBn::
:?*:lBn::
:?*:mBn::
:?*:nBn::
:?*:oBn::
:?*:pBn::
:?*:rBn::
:?*:sBn::
:?*:tBn::
:?*:uBn::
:?*:vBn::
:?*:wBn::
:?*:xBn::
:?*:yBn::
:?*:zBn::
HOT_PrintHotstring("aison", 1)
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en BQ (ablique) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aBq::
:?*:qBq::
:?*:bBq::
:?*:cBq::
:?*:dBq::
:?*:eBq::
:?*:�Bq::
:?*:�Bq::
:?*:fBq::
:?*:gBq::
:?*:hBq::
:?*:iBq::
:?*:jBq::
:?*:kBq::
:?*:lBq::
:?*:mBq::
:?*:nBq::
:?*:oBq::
:?*:pBq::
:?*:rBq::
:?*:sBq::
:?*:tBq::
:?*:uBq::
:?*:vBq::
:?*:wBq::
:?*:xBq::
:?*:yBq::
:?*:zBq::
HOT_PrintHotstring("ique", 1)
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en BQT (abliquement) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aBqt::
:?*:qBqt::
:?*:bBqt::
:?*:cBqt::
:?*:dBqt::
:?*:eBqt::
:?*:�Bqt::
:?*:�Bqt::
:?*:fBqt::
:?*:gBqt::
:?*:hBqt::
:?*:iBqt::
:?*:jBqt::
:?*:kBqt::
:?*:lBqt::
:?*:mBqt::
:?*:nBqt::
:?*:oBqt::
:?*:pBqt::
:?*:rBqt::
:?*:sBqt::
:?*:tBqt::
:?*:uBqt::
:?*:vBqt::
:?*:wBqt::
:?*:xBqt::
:?*:yBqt::
:?*:zBqt::
HOT_PrintHotstring("ment")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en BR (ableur) :
;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aBr::
:?*:qBr::
:?*:bBr::
:?*:cBr::
:?*:dBr::
:?*:eBr::
:?*:�Br::
:?*:�Br::
:?*:fBr::
:?*:gBr::
:?*:hBr::
:?*:iBr::
:?*:jBr::
:?*:kBr::
:?*:lBr::
:?*:mBr::
:?*:nBr::
:?*:oBr::
:?*:pBr::
:?*:rBr::
:?*:sBr::
:?*:tBr::
:?*:uBr::
:?*:vBr::
:?*:wBr::
:?*:xBr::
:?*:yBr::
:?*:zBr::
HOT_PrintHotstring("ur")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en BS (ablesse) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aBs::
:?*:qBs::
:?*:bBs::
:?*:cBs::
:?*:dBs::
:?*:eBs::
:?*:�Bs::
:?*:�Bs::
:?*:fBs::
:?*:gBs::
:?*:hBs::
:?*:iBs::
:?*:jBs::
:?*:kBs::
:?*:lBs::
:?*:mBs::
:?*:nBs::
:?*:oBs::
:?*:pBs::
:?*:rBs::
:?*:sBs::
:?*:tBs::
:?*:uBs::
:?*:vBs::
:?*:wBs::
:?*:xBs::
:?*:yBs::
:?*:zBs::
HOT_PrintHotstring("sse")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en BT (ablement) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aBt::
:?*:qBt::
:?*:bBt::
:?*:cBt::
:?*:dBt::
:?*:eBt::
:?*:�Bt::
:?*:�Bt::
:?*:fBt::
:?*:gBt::
:?*:hBt::
:?*:iBt::
:?*:jBt::
:?*:kBt::
:?*:lBt::
:?*:mBt::
:?*:nBt::
:?*:oBt::
:?*:pBt::
:?*:rBt::
:?*:sBt::
:?*:tBt::
:?*:uBt::
:?*:vBt::
:?*:wBt::
:?*:xBt::
:?*:yBt::
:?*:zBt::
HOT_PrintHotstring("ment")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en BZ (ableuse) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aBz::
:?*:qBz::
:?*:bBz::
:?*:cBz::
:?*:dBz::
:?*:eBz::
:?*:�Bz::
:?*:�Bz::
:?*:fBz::
:?*:gBz::
:?*:hBz::
:?*:iBz::
:?*:jBz::
:?*:kBz::
:?*:lBz::
:?*:mBz::
:?*:nBz::
:?*:oBz::
:?*:pBz::
:?*:rBz::
:?*:sBz::
:?*:tBz::
:?*:uBz::
:?*:vBz::
:?*:wBz::
:?*:xBz::
:?*:yBz::
:?*:zBz::
HOT_PrintHotstring("use")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en E (ence) :
;;;;;;;;;;;;;;;;;;;;;;;
:?*:qE::
HOT_PrintHotstring("uence")
Return
:?*:aE::
:?*:bE::
:?*:cE::
:?*:dE::
:?*:�E::
:?*:�E::
:?*:fE::
:?*:gE::
:?*:hE::
:?*:iE::
:?*:jE::
:?*:kE::
:?*:lE::
:?*:mE::
:?*:nE::
:?*:oE::
:?*:pE::
:?*:rE::
:?*:sE::
:?*:tE::
:?*:uE::
:?*:vE::
:?*:wE::
:?*:xE::
:?*:yE::
:?*:zE::
HOT_PrintHotstring("ence")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en EB (en�able) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:qEb::
:?*:aEb::
:?*:bEb::
:?*:cEb::
:?*:dEb::
:?*:�Eb::
:?*:�Eb::
:?*:fEb::
:?*:gEb::
:?*:hEb::
:?*:iEb::
:?*:jEb::
:?*:kEb::
:?*:lEb::
:?*:mEb::
:?*:nEb::
:?*:oEb::
:?*:pEb::
:?*:rEb::
:?*:sEb::
:?*:tEb::
:?*:uEb::
:?*:vEb::
:?*:wEb::
:?*:xEb::
:?*:yEb::
:?*:zEb::
HOT_PrintHotstring("�able", 2)
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en EBT (en�ablement) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:qEbt::
:?*:aEbt::
:?*:bEbt::
:?*:cEbt::
:?*:dEbt::
:?*:�Ebt::
:?*:�Ebt::
:?*:fEbt::
:?*:gEbt::
:?*:hEbt::
:?*:iEbt::
:?*:jEbt::
:?*:kEbt::
:?*:lEbt::
:?*:mEbt::
:?*:nEbt::
:?*:oEbt::
:?*:pEbt::
:?*:rEbt::
:?*:sEbt::
:?*:tEbt::
:?*:uEbt::
:?*:vEbt::
:?*:wEbt::
:?*:xEbt::
:?*:yEbt::
:?*:zEbt::
HOT_PrintHotstring("ment")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en EL (encelle) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:qEl::
:?*:aEl::
:?*:bEl::
:?*:cEl::
:?*:dEl::
:?*:�El::
:?*:�El::
:?*:fEl::
:?*:gEl::
:?*:hEl::
:?*:iEl::
:?*:jEl::
:?*:kEl::
:?*:lEl::
:?*:mEl::
:?*:nEl::
:?*:oEl::
:?*:pEl::
:?*:rEl::
:?*:sEl::
:?*:tEl::
:?*:uEl::
:?*:vEl::
:?*:wEl::
:?*:xEl::
:?*:yEl::
:?*:zEl::
HOT_PrintHotstring("lle")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en ELT (encellement) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:qElt::
:?*:aElt::
:?*:bElt::
:?*:cElt::
:?*:dElt::
:?*:�Elt::
:?*:�Elt::
:?*:fElt::
:?*:gElt::
:?*:hElt::
:?*:iElt::
:?*:jElt::
:?*:kElt::
:?*:lElt::
:?*:mElt::
:?*:nElt::
:?*:oElt::
:?*:pElt::
:?*:rElt::
:?*:sElt::
:?*:tElt::
:?*:uElt::
:?*:vElt::
:?*:wElt::
:?*:xElt::
:?*:yElt::
:?*:zElt::
HOT_PrintHotstring("ment")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en EM (encisme) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:qEm::
:?*:aEm::
:?*:bEm::
:?*:cEm::
:?*:dEm::
:?*:�Em::
:?*:�Em::
:?*:fEm::
:?*:gEm::
:?*:hEm::
:?*:iEm::
:?*:jEm::
:?*:kEm::
:?*:lEm::
:?*:mEm::
:?*:nEm::
:?*:oEm::
:?*:pEm::
:?*:rEm::
:?*:sEm::
:?*:tEm::
:?*:uEm::
:?*:vEm::
:?*:wEm::
:?*:xEm::
:?*:yEm::
:?*:zEm::
HOT_PrintHotstring("isme", 1)
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en EQ (encique) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:qEq::
:?*:aEq::
:?*:bEq::
:?*:cEq::
:?*:dEq::
:?*:�Eq::
:?*:�Eq::
:?*:fEq::
:?*:gEq::
:?*:hEq::
:?*:iEq::
:?*:jEq::
:?*:kEq::
:?*:lEq::
:?*:mEq::
:?*:nEq::
:?*:oEq::
:?*:pEq::
:?*:rEq::
:?*:sEq::
:?*:tEq::
:?*:uEq::
:?*:vEq::
:?*:wEq::
:?*:xEq::
:?*:yEq::
:?*:zEq::
HOT_PrintHotstring("ique", 1)
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en ER (enceur) :
;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:qEr::
:?*:aEr::
:?*:bEr::
:?*:cEr::
:?*:dEr::
:?*:�Er::
:?*:�Er::
:?*:fEr::
:?*:gEr::
:?*:hEr::
:?*:iEr::
:?*:jEr::
:?*:kEr::
:?*:lEr::
:?*:mEr::
:?*:nEr::
:?*:oEr::
:?*:pEr::
:?*:rEr::
:?*:sEr::
:?*:tEr::
:?*:uEr::
:?*:vEr::
:?*:wEr::
:?*:xEr::
:?*:yEr::
:?*:zEr::
HOT_PrintHotstring("ur")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en ES (encesse) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:qEs::
:?*:aEs::
:?*:bEs::
:?*:cEs::
:?*:dEs::
:?*:�Es::
:?*:�Es::
:?*:fEs::
:?*:gEs::
:?*:hEs::
:?*:iEs::
:?*:jEs::
:?*:kEs::
:?*:lEs::
:?*:mEs::
:?*:nEs::
:?*:oEs::
:?*:pEs::
:?*:rEs::
:?*:sEs::
:?*:tEs::
:?*:uEs::
:?*:vEs::
:?*:wEs::
:?*:xEs::
:?*:yEs::
:?*:zEs::
HOT_PrintHotstring("sse")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en ET (encement) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:qEt::
:?*:aEt::
:?*:bEt::
:?*:cEt::
:?*:dEt::
:?*:�Et::
:?*:�Et::
:?*:fEt::
:?*:gEt::
:?*:hEt::
:?*:iEt::
:?*:jEt::
:?*:kEt::
:?*:lEt::
:?*:mEt::
:?*:nEt::
:?*:oEt::
:?*:pEt::
:?*:rEt::
:?*:sEt::
:?*:tEt::
:?*:uEt::
:?*:vEt::
:?*:wEt::
:?*:xEt::
:?*:yEt::
:?*:zEt::
HOT_PrintHotstring("ment")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en EZ (enceuse) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:qEz::
:?*:aEz::
:?*:bEz::
:?*:cEz::
:?*:dEz::
:?*:�Ez::
:?*:�Ez::
:?*:fEz::
:?*:gEz::
:?*:hEz::
:?*:iEz::
:?*:jEz::
:?*:kEz::
:?*:lEz::
:?*:mEz::
:?*:nEz::
:?*:oEz::
:?*:pEz::
:?*:rEz::
:?*:sEz::
:?*:tEz::
:?*:uEz::
:?*:vEz::
:?*:wEz::
:?*:xEz::
:?*:yEz::
:?*:zEz::
HOT_PrintHotstring("use")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en G (age) :
;;;;;;;;;;;;;;;;;;;;;;
:?*:aG::
HOT_PrintHotstring("ge")
Return
:?*:qG::
HOT_PrintHotstring("uage")
Return
:?*:bG::
:?*:cG::
:?*:dG::
:?*:eG::
:?*:�G::
:?*:�G::
:?*:fG::
:?*:gG::
:?*:hG::
:?*:iG::
:?*:�G::
:?*:jG::
:?*:kG::
:?*:lG::
:?*:mG::
:?*:nG::
:?*:oG::
:?*:pG::
:?*:rG::
:?*:sG::
:?*:tG::
:?*:uG::
:?*:vG::
:?*:wG::
:?*:xG::
:?*:yG::
:?*:zG::
HOT_PrintHotstring("age")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en GB (agable) :
;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aGb::
:?*:bGb::
:?*:cGb::
:?*:dGb::
:?*:eGb::
:?*:�Gb::
:?*:�Gb::
:?*:fGb::
:?*:gGb::
:?*:hGb::
:?*:iGb::
:?*:�Gb::
:?*:jGb::
:?*:kGb::
:?*:lGb::
:?*:mGb::
:?*:nGb::
:?*:oGb::
:?*:pGb::
:?*:qGb::
:?*:rGb::
:?*:sGb::
:?*:tGb::
:?*:uGb::
:?*:vGb::
:?*:wGb::
:?*:xGb::
:?*:yGb::
:?*:zGb::
HOT_PrintHotstring("able", 1)
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en GBA (agablant) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aGba::
:?*:bGba::
:?*:cGba::
:?*:dGba::
:?*:eGba::
:?*:�Gba::
:?*:�Gba::
:?*:fGba::
:?*:gGba::
:?*:hGba::
:?*:iGba::
:?*:�Gba::
:?*:jGba::
:?*:kGba::
:?*:lGba::
:?*:mGba::
:?*:nGba::
:?*:oGba::
:?*:pGba::
:?*:qGba::
:?*:rGba::
:?*:sGba::
:?*:tGba::
:?*:uGba::
:?*:vGba::
:?*:wGba::
:?*:xGba::
:?*:yGba::
:?*:zGba::
HOT_PrintHotstring("ant", 1)
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en GBT (agablement) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aGbt::
:?*:bGbt::
:?*:cGbt::
:?*:dGbt::
:?*:eGbt::
:?*:�Gbt::
:?*:�Gbt::
:?*:fGbt::
:?*:gGbt::
:?*:hGbt::
:?*:iGbt::
:?*:�Gbt::
:?*:jGbt::
:?*:kGbt::
:?*:lGbt::
:?*:mGbt::
:?*:nGbt::
:?*:oGbt::
:?*:pGbt::
:?*:qGbt::
:?*:rGbt::
:?*:sGbt::
:?*:tGbt::
:?*:uGbt::
:?*:vGbt::
:?*:wGbt::
:?*:xGbt::
:?*:yGbt::
:?*:zGbt::
HOT_PrintHotstring("ment")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en GE (agence) :
;;;;;;;;;;;;;;;;;;;;;;;;;;
:*:Ge::
:?*:aGe::
:?*:bGe::
:?*:cGe::
:?*:dGe::
:?*:eGe::
:?*:�Ge::
:?*:�Ge::
:?*:fGe::
:?*:gGe::
:?*:hGe::
:?*:iGe::
:?*:�Ge::
:?*:jGe::
:?*:kGe::
:?*:lGe::
:?*:mGe::
:?*:nGe::
:?*:oGe::
:?*:pGe::
:?*:qGe::
:?*:rGe::
:?*:sGe::
:?*:tGe::
:?*:uGe::
:?*:vGe::
:?*:wGe::
:?*:xGe::
:?*:yGe::
:?*:zGe::
HOT_PrintHotstring("nce")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en GER (agenceur) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:*:Ger::
:?*:aGer::
:?*:bGer::
:?*:cGer::
:?*:dGer::
:?*:eGer::
:?*:�Ger::
:?*:�Ger::
:?*:fGer::
:?*:gGer::
:?*:hGer::
:?*:iGer::
:?*:�Ger::
:?*:jGer::
:?*:kGer::
:?*:lGer::
:?*:mGer::
:?*:nGer::
:?*:oGer::
:?*:pGer::
:?*:qGer::
:?*:rGer::
:?*:sGer::
:?*:tGer::
:?*:uGer::
:?*:vGer::
:?*:wGer::
:?*:xGer::
:?*:yGer::
:?*:zGer::
HOT_PrintHotstring("ur")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en GET (agencement) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:*:Get::
:?*:aGet::
:?*:bGet::
:?*:cGet::
:?*:dGet::
:?*:eGet::
:?*:�Get::
:?*:�Get::
:?*:fGet::
:?*:gGet::
:?*:hGet::
:?*:iGet::
:?*:�Get::
:?*:jGet::
:?*:kGet::
:?*:lGet::
:?*:mGet::
:?*:nGet::
:?*:oGet::
:?*:pGet::
:?*:qGet::
:?*:rGet::
:?*:sGet::
:?*:tGet::
:?*:uGet::
:?*:vGet::
:?*:wGet::
:?*:xGet::
:?*:yGet::
:?*:zGet::
HOT_PrintHotstring("ment")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en GEZ (agenceuse) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:*:Gez::
:?*:aGez::
:?*:bGez::
:?*:cGez::
:?*:dGez::
:?*:eGez::
:?*:�Gez::
:?*:�Gez::
:?*:fGez::
:?*:gGez::
:?*:hGez::
:?*:iGez::
:?*:�Gez::
:?*:jGez::
:?*:kGez::
:?*:lGez::
:?*:mGez::
:?*:nGez::
:?*:oGez::
:?*:pGez::
:?*:qGez::
:?*:rGez::
:?*:sGez::
:?*:tGez::
:?*:uGez::
:?*:vGez::
:?*:wGez::
:?*:xGez::
:?*:yGez::
:?*:zGez::
HOT_PrintHotstring("use")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en GL (agelle) :
;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aGl::
:?*:bGl::
:?*:cGl::
:?*:dGl::
:?*:eGl::
:?*:�Gl::
:?*:�Gl::
:?*:fGl::
:?*:gGl::
:?*:hGl::
:?*:iGl::
:?*:�Gl::
:?*:jGl::
:?*:kGl::
:?*:lGl::
:?*:mGl::
:?*:nGl::
:?*:oGl::
:?*:pGl::
:?*:qGl::
:?*:rGl::
:?*:sGl::
:?*:tGl::
:?*:uGl::
:?*:vGl::
:?*:wGl::
:?*:xGl::
:?*:yGl::
:?*:zGl::
HOT_PrintHotstring("lle")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en GM (agisme) :
;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aGm::
:?*:bGm::
:?*:cGm::
:?*:dGm::
:?*:eGm::
:?*:�Gm::
:?*:�Gm::
:?*:fGm::
:?*:gGm::
:?*:hGm::
:?*:iGm::
:?*:�Gm::
:?*:jGm::
:?*:kGm::
:?*:lGm::
:?*:mGm::
:?*:nGm::
:?*:oGm::
:?*:pGm::
:?*:qGm::
:?*:rGm::
:?*:sGm::
:?*:tGm::
:?*:uGm::
:?*:vGm::
:?*:wGm::
:?*:xGm::
:?*:yGm::
:?*:zGm::
HOT_PrintHotstring("isme", 1)
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en GQ (agique) :
;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aGq::
:?*:bGq::
:?*:cGq::
:?*:dGq::
:?*:eGq::
:?*:�Gq::
:?*:�Gq::
:?*:fGq::
:?*:gGq::
:?*:hGq::
:?*:iGq::
:?*:�Gq::
:?*:jGq::
:?*:kGq::
:?*:lGq::
:?*:mGq::
:?*:nGq::
:?*:oGq::
:?*:pGq::
:?*:qGq::
:?*:rGq::
:?*:sGq::
:?*:tGq::
:?*:uGq::
:?*:vGq::
:?*:wGq::
:?*:xGq::
:?*:yGq::
:?*:zGq::
HOT_PrintHotstring("ique", 1)
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en GQT (agiquement) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aGqt::
:?*:bGqt::
:?*:cGqt::
:?*:dGqt::
:?*:eGqt::
:?*:�Gqt::
:?*:�Gqt::
:?*:fGqt::
:?*:gGqt::
:?*:hGqt::
:?*:iGqt::
:?*:�Gqt::
:?*:jGqt::
:?*:kGqt::
:?*:lGqt::
:?*:mGqt::
:?*:nGqt::
:?*:oGqt::
:?*:pGqt::
:?*:qGqt::
:?*:rGqt::
:?*:sGqt::
:?*:tGqt::
:?*:uGqt::
:?*:vGqt::
:?*:wGqt::
:?*:xGqt::
:?*:yGqt::
:?*:zGqt::
HOT_PrintHotstring("ment")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en GR (ageur) :
;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aGr::
:?*:bGr::
:?*:cGr::
:?*:dGr::
:?*:eGr::
:?*:�Gr::
:?*:�Gr::
:?*:fGr::
:?*:gGr::
:?*:hGr::
:?*:iGr::
:?*:�Gr::
:?*:jGr::
:?*:kGr::
:?*:lGr::
:?*:mGr::
:?*:nGr::
:?*:oGr::
:?*:pGr::
:?*:qGr::
:?*:rGr::
:?*:sGr::
:?*:tGr::
:?*:uGr::
:?*:vGr::
:?*:wGr::
:?*:xGr::
:?*:yGr::
:?*:zGr::
HOT_PrintHotstring("ur")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en GS (agesse) :
;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aGs::
:?*:bGs::
:?*:cGs::
:?*:dGs::
:?*:eGs::
:?*:�Gs::
:?*:�Gs::
:?*:fGs::
:?*:gGs::
:?*:hGs::
:?*:iGs::
:?*:�Gs::
:?*:jGs::
:?*:kGs::
:?*:lGs::
:?*:mGs::
:?*:nGs::
:?*:oGs::
:?*:pGs::
:?*:qGs::
:?*:rGs::
:?*:sGs::
:?*:tGs::
:?*:uGs::
:?*:vGs::
:?*:wGs::
:?*:xGs::
:?*:yGs::
:?*:zGs::
HOT_PrintHotstring("sse")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en GT (agement) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aGt::
:?*:bGt::
:?*:cGt::
:?*:dGt::
:?*:eGt::
:?*:�Gt::
:?*:�Gt::
:?*:fGt::
:?*:gGt::
:?*:hGt::
:?*:iGt::
:?*:�Gt::
:?*:jGt::
:?*:kGt::
:?*:lGt::
:?*:mGt::
:?*:nGt::
:?*:oGt::
:?*:pGt::
:?*:qGt::
:?*:rGt::
:?*:sGt::
:?*:tGt::
:?*:uGt::
:?*:vGt::
:?*:wGt::
:?*:xGt::
:?*:yGt::
:?*:zGt::
HOT_PrintHotstring("ment")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en GZ (ageuse) :
;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aGz::
:?*:bGz::
:?*:cGz::
:?*:dGz::
:?*:eGz::
:?*:�Gz::
:?*:�Gz::
:?*:fGz::
:?*:gGz::
:?*:hGz::
:?*:iGz::
:?*:�Gz::
:?*:jGz::
:?*:kGz::
:?*:lGz::
:?*:mGz::
:?*:nGz::
:?*:oGz::
:?*:pGz::
:?*:qGz::
:?*:rGz::
:?*:sGz::
:?*:tGz::
:?*:uGz::
:?*:vGz::
:?*:wGz::
:?*:xGz::
:?*:yGz::
:?*:zGz::
HOT_PrintHotstring("use")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en H (chie) :
;;;;;;;;;;;;;;;;;;;;;;;
:?*:aH::
:?*:eH::
:?*:�H::
:?*:�H::
:?*:iH::
:?*:lH::
:?*:nH::
:?*:oH::
:?*:rH::
:?*:sH::
:?*:tH::
:?*:uH::
:?*:yH::
HOT_PrintHotstring("chie")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en HA (chiant) :
;;;;;;;;;;;;;;;;;;;;;;;;;;
:*:Ha::
:?*:aHa::
:?*:eHa::
:?*:�Ha::
:?*:�Ha::
:?*:iHa::
:?*:lHa::
:?*:nHa::
:?*:oHa::
:?*:rHa::
:?*:sHa::
:?*:tHa::
:?*:uHa::
:?*:yHa::
HoT_PrintHotstring("ant", 1)
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en HB (chable) :
;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aHb::
:?*:eHb::
:?*:�Hb::
:?*:�Hb::
:?*:iHb::
:?*:lHb::
:?*:nHb::
:?*:oHb::
:?*:rHb::
:?*:sHb::
:?*:tHb::
:?*:uHb::
:?*:yHb::
HOT_PrintHotstring("able", 2)
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en HM (chisme) :
;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aHm::
:?*:eHm::
:?*:�Hm::
:?*:�Hm::
:?*:iHm::
:?*:lHm::
:?*:nHm::
:?*:oHm::
:?*:rHm::
:?*:sHm::
:?*:tHm::
:?*:uHm::
:?*:yHm::
HOT_PrintHotstring("sme", 1)
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en HQ (chique) :
;;;;;;;;;;;;;;;;;;;;;;;;;;
:*:Hq::
:?*:aHq::
:?*:eHq::
:?*:�Hq::
:?*:�Hq::
:?*:iHq::
:?*:lHq::
:?*:nHq::
:?*:oHq::
:?*:rHq::
:?*:sHq::
:?*:tHq::
:?*:uHq::
:?*:yHq::
HOT_PrintHotstring("que", 1)
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en HT (chiement) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:*:Ht::
:?*:aHt::
:?*:eHt::
:?*:�Ht::
:?*:�Ht::
:?*:iHt::
:?*:lHt::
:?*:nHt::
:?*:oHt::
:?*:rHt::
:?*:sHt::
:?*:tHt::
:?*:uHt::
:?*:yHt::
HOT_PrintHotstring("ment")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en J (gie) :
;;;;;;;;;;;;;;;;;;;;;;
:?*:aJ::
:?*:eJ::
:?*:�J::
:?*:�J::
:?*:iJ::
:?*:lJ::
:?*:nJ::
:?*:oJ::
:?*:rJ::
:?*:sJ::
:?*:uJ::
:?*:yJ::
HOT_PrintHotstring("gie")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en JB (giable) :
;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aJb::
:?*:eJb::
:?*:�Jb::
:?*:�Jb::
:?*:iJb::
:?*:lJb::
:?*:nJb::
:?*:oJb::
:?*:rJb::
:?*:sJb::
:?*:uJb::
:?*:yJb::
HOT_PrintHotstring("able", 1)
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en JBT (giablement) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aJbt::
:?*:eJbt::
:?*:�Jbt::
:?*:�Jbt::
:?*:iJbt::
:?*:lJbt::
:?*:nJbt::
:?*:oJbt::
:?*:rJbt::
:?*:sJbt::
:?*:uJbt::
:?*:yJbt::
HOT_PrintHotstring("ment", 1)
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en JE (gience) :
;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aJe::
:?*:eJe::
:?*:�Je::
:?*:�Je::
:?*:iJe::
:?*:lJe::
:?*:nJe::
:?*:oJe::
:?*:rJe::
:?*:sJe::
:?*:uJe::
:?*:yJe::
HOT_PrintHotstring("nce")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en JL (gielle) :
;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aJl::
:?*:eJl::
:?*:�Jl::
:?*:�Jl::
:?*:iJl::
:?*:lJl::
:?*:nJl::
:?*:oJl::
:?*:rJl::
:?*:sJl::
:?*:uJl::
:?*:yJl::
HOT_PrintHotstring("lle")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en JM (gisme) :
;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aJm::
:?*:eJm::
:?*:�Jm::
:?*:�Jm::
:?*:iJm::
:?*:lJm::
:?*:nJm::
:?*:oJm::
:?*:rJm::
:?*:sJm::
:?*:uJm::
:?*:yJm::
HOT_PrintHotstring("sme", 1)
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en JO (gition) :
;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aJo::
:?*:eJo::
:?*:�Jo::
:?*:�Jo::
:?*:iJo::
:?*:lJo::
:?*:nJo::
:?*:oJo::
:?*:rJo::
:?*:sJo::
:?*:uJo::
:?*:yJo::
HOT_PrintHotstring("tion", 1)
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en JQ (gique) :
;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aJq::
:?*:eJq::
:?*:�Jq::
:?*:�Jq::
:?*:iJq::
:?*:lJq::
:?*:nJq::
:?*:oJq::
:?*:rJq::
:?*:sJq::
:?*:uJq::
:?*:yJq::
HOT_PrintHotstring("que", 1)
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en JQT (giquement) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aJqt::
:?*:eJqt::
:?*:�Jqt::
:?*:�Jqt::
:?*:iJqt::
:?*:lJqt::
:?*:nJqt::
:?*:oJqt::
:?*:rJqt::
:?*:sJqt::
:?*:uJqt::
:?*:yJqt::
HOT_PrintHotstring("ment")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en JR (gieur) :
;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aJr::
:?*:eJr::
:?*:�Jr::
:?*:�Jr::
:?*:iJr::
:?*:lJr::
:?*:nJr::
:?*:oJr::
:?*:rJr::
:?*:sJr::
:?*:uJr::
:?*:yJr::
HOT_PrintHotstring("ur")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en JS (giesse) :
;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aJs::
:?*:eJs::
:?*:�Js::
:?*:�Js::
:?*:iJs::
:?*:lJs::
:?*:nJs::
:?*:oJs::
:?*:rJs::
:?*:sJs::
:?*:uJs::
:?*:yJs::
HOT_PrintHotstring("sse")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en JT (giement) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aJt::
:?*:eJt::
:?*:�Jt::
:?*:�Jt::
:?*:iJt::
:?*:lJt::
:?*:nJt::
:?*:oJt::
:?*:rJt::
:?*:sJt::
:?*:uJt::
:?*:yJt::
HOT_PrintHotstring("ment")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en L (elle) :
;;;;;;;;;;;;;;;;;;;;;;;
:?*:eL::
HOT_PrintHotstring("lle")
Return
:?*:qL::
HOT_PrintHotstring("uelle")
Return
:?*:oL::
HOT_PrintHotstring("�lle")
Return
:?*:aL::
:?*:bL::
:?*:cL::
:?*:dL::
:?*:�L::
:?*:fL::
:?*:gL::
:?*:hL::
:?*:iL::
:?*:jL::
:?*:kL::
:?*:lL::
:?*:mL::
:?*:nL::
:?*:pL::
:?*:rL::
:?*:sL::
:?*:tL::
:?*:uL::
:?*:vL::
:?*:wL::
:?*:xL::
:?*:yL::
:?*:zL::
HOT_PrintHotstring("elle")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en LA (ellant) :
;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:eLa::
:?*:qLa::
:?*:oLa::
:?*:aLa::
:?*:bLa::
:?*:cLa::
:?*:dLa::
:?*:�La::
:?*:fLa::
:?*:gLa::
:?*:hLa::
:?*:iLa::
:?*:jLa::
:?*:kLa::
:?*:lLa::
:?*:mLa::
:?*:nLa::
:?*:pLa::
:?*:rLa::
:?*:sLa::
:?*:tLa::
:?*:uLa::
:?*:vLa::
:?*:wLa::
:?*:xLa::
:?*:yLa::
:?*:zLa::
HoT_PrintHotstring("ant", 1)
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en LB (ellable) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:eLb::
:?*:qLb::
:?*:oLb::
:?*:aLb::
:?*:bLb::
:?*:cLb::
:?*:dLb::
:?*:�Lb::
:?*:fLb::
:?*:gLb::
:?*:hLb::
:?*:iLb::
:?*:jLb::
:?*:kLb::
:?*:lLb::
:?*:mLb::
:?*:nLb::
:?*:pLb::
:?*:rLb::
:?*:sLb::
:?*:tLb::
:?*:uLb::
:?*:vLb::
:?*:wLb::
:?*:xLb::
:?*:yLb::
:?*:zLb::
HOT_PrintHotstring("able", 1)
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en LBT (ellablement) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:eLbt::
:?*:qLbt::
:?*:oLbt::
:?*:aLbt::
:?*:bLbt::
:?*:cLbt::
:?*:dLbt::
:?*:�Lbt::
:?*:fLbt::
:?*:gLbt::
:?*:hLbt::
:?*:iLbt::
:?*:jLbt::
:?*:kLbt::
:?*:lLbt::
:?*:mLbt::
:?*:nLbt::
:?*:pLbt::
:?*:rLbt::
:?*:sLbt::
:?*:tLbt::
:?*:uLbt::
:?*:vLbt::
:?*:wLbt::
:?*:xLbt::
:?*:yLbt::
:?*:zLbt::
HOT_PrintHotstring("ment")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en LE (ellence) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:eLe::
:?*:qLe::
:?*:oLe::
:?*:aLe::
:?*:bLe::
:?*:cLe::
:?*:dLe::
:?*:�Le::
:?*:fLe::
:?*:gLe::
:?*:hLe::
:?*:iLe::
:?*:jLe::
:?*:kLe::
:?*:lLe::
:?*:mLe::
:?*:nLe::
:?*:pLe::
:?*:rLe::
:?*:sLe::
:?*:tLe::
:?*:uLe::
:?*:vLe::
:?*:wLe::
:?*:xLe::
:?*:yLe::
:?*:zLE::
HOT_PrintHotstring("nce")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en LET (ellencement) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:eLet::
:?*:qLet::
:?*:oLet::
:?*:aLet::
:?*:bLet::
:?*:cLet::
:?*:dLet::
:?*:�Let::
:?*:fLet::
:?*:gLet::
:?*:hLet::
:?*:iLet::
:?*:jLet::
:?*:kLet::
:?*:lLet::
:?*:mLet::
:?*:nLet::
:?*:pLet::
:?*:rLet::
:?*:sLet::
:?*:tLet::
:?*:uLet::
:?*:vLet::
:?*:wLet::
:?*:xLet::
:?*:yLet::
:?*:zLet::
HOT_PrintHotstring("ment")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en LT (ellement) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:eLt::
:?*:qLt::
:?*:oLt::
:?*:aLt::
:?*:bLt::
:?*:cLt::
:?*:dLt::
:?*:�Lt::
:?*:fLt::
:?*:gLt::
:?*:hLt::
:?*:iLt::
:?*:jLt::
:?*:kLt::
:?*:lLt::
:?*:mLt::
:?*:nLt::
:?*:pLt::
:?*:rLt::
:?*:sLt::
:?*:tLt::
:?*:uLt::
:?*:vLt::
:?*:wLt::
:?*:xLt::
:?*:yLt::
:?*:zLt::
HOT_PrintHotstring("ment")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en LZ (elleuse) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:elz::
:?*:qlz::
:?*:olz::
:?*:alz::
:?*:blz::
:?*:clz::
:?*:dlz::
:?*:�lz::
:?*:flz::
:?*:glz::
:?*:hlz::
:?*:ilz::
:?*:jlz::
:?*:klz::
:?*:llz::
:?*:mlz::
:?*:nlz::
:?*:plz::
:?*:rlz::
:?*:slz::
:?*:tlz::
:?*:ulz::
:?*:vlz::
:?*:wlz::
:?*:xlz::
:?*:ylz::
:?*:zlz::
HOT_PrintHotstring("use")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en LZT (elleusement) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:eLzt::
:?*:qLzt::
:?*:oLzt::
:?*:aLzt::
:?*:bLzt::
:?*:cLzt::
:?*:dLzt::
:?*:�Lzt::
:?*:fLzt::
:?*:gLzt::
:?*:hLzt::
:?*:iLzt::
:?*:jLzt::
:?*:kLzt::
:?*:lLzt::
:?*:mLzt::
:?*:nLzt::
:?*:pLzt::
:?*:rLzt::
:?*:sLzt::
:?*:tLzt::
:?*:uLzt::
:?*:vLzt::
:?*:wLzt::
:?*:xLzt::
:?*:yLzt::
:?*:zLzt::
HOT_PrintHotstring("ment")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en M (isme) :
;;;;;;;;;;;;;;;;;;;;;;;
:?*:qM::
HOT_PrintHotstring("uisme")
Return
:?*:iM::
:?*:�M::
:?*:yM::
HOT_PrintHotstring("sme")
Return
:?*:aM::
:?*:bM::
:?*:cM::
:?*:dM::
:?*:eM::
:?*:�M::
:?*:�M::
:?*:fM::
:?*:gM::
:?*:hM::
:?*:jM::
:?*:kM::
:?*:lM::
:?*:mM::
:?*:nM::
:?*:oM::
:?*:�M::
:?*:pM::
:?*:rM::
:?*:sM::
:?*:tM::
:?*:uM::
; :?*:vM::
:?*:wM::
:?*:xM::
:?*:zM::
HOT_PrintHotstring("isme")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en MA (ismant) :
;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:qMa::
:?*:iMa::
:?*:�Ma::
:?*:yMa::
:?*:aMa::
:?*:bMa::
:?*:cMa::
:?*:dMa::
:?*:eMa::
:?*:�Ma::
:?*:�Ma::
:?*:fMa::
:?*:gMa::
:?*:hMa::
:?*:jMa::
:?*:kMa::
:?*:lMa::
:?*:mMa::
:?*:nMa::
:?*:oMa::
:?*:�Ma::
:?*:pMa::
:?*:rMa::
:?*:sMa::
:?*:tMa::
:?*:uMa::
:?*:vMa::
:?*:wMa::
:?*:xMa::
:?*:zMa::
HoT_PrintHotstring("ant", 1)
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en MB (ismable) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:qMb::
:?*:iMb::
:?*:�Mb::
:?*:yMb::
:?*:aMb::
:?*:bMb::
:?*:cMb::
:?*:dMb::
:?*:eMb::
:?*:�Mb::
:?*:�Mb::
:?*:fMb::
:?*:gMb::
:?*:hMb::
:?*:jMb::
:?*:kMb::
:?*:lMb::
:?*:mMb::
:?*:nMb::
:?*:oMb::
:?*:�Mb::
:?*:pMb::
:?*:rMb::
:?*:sMb::
:?*:tMb::
:?*:uMb::
:?*:vMb::
:?*:wMb::
:?*:xMb::
:?*:zMb::
HOT_PrintHotstring("able", 1)
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en ML (ismelle) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:qMl::
:?*:iMl::
:?*:�Ml::
:?*:yMl::
:?*:aMl::
:?*:bMl::
:?*:cMl::
:?*:dMl::
:?*:eMl::
:?*:�Ml::
:?*:�Ml::
:?*:fMl::
:?*:gMl::
:?*:hMl::
:?*:jMl::
:?*:kMl::
:?*:lMl::
:?*:mMl::
:?*:nMl::
:?*:oMl::
:?*:�Ml::
:?*:pMl::
:?*:rMl::
:?*:sMl::
:?*:tMl::
:?*:uMl::
:?*:vMl::
:?*:wMl::
:?*:xMl::
:?*:zMl::
HOT_PrintHotstring("lle")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en MQ (ismique) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:qMq::
:?*:iMq::
:?*:�Mq::
:?*:yMq::
:?*:aMq::
:?*:bMq::
:?*:cMq::
:?*:dMq::
:?*:eMq::
:?*:�Mq::
:?*:�Mq::
:?*:fMq::
:?*:gMq::
:?*:hMq::
:?*:jMq::
:?*:kMq::
:?*:lMq::
:?*:mMq::
:?*:nMq::
:?*:oMq::
:?*:�Mq::
:?*:pMq::
:?*:rMq::
:?*:sMq::
:?*:tMq::
:?*:uMq::
:?*:vMq::
:?*:wMq::
:?*:xMq::
:?*:zMq::
HOT_PrintHotstring("ique", 1)
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en MQT (ismiquement) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:qMqt::
:?*:iMqt::
:?*:�Mqt::
:?*:yMqt::
:?*:aMqt::
:?*:bMqt::
:?*:cMqt::
:?*:dMqt::
:?*:eMqt::
:?*:�Mqt::
:?*:�Mqt::
:?*:fMqt::
:?*:gMqt::
:?*:hMqt::
:?*:jMqt::
:?*:kMqt::
:?*:lMqt::
:?*:mMqt::
:?*:nMqt::
:?*:oMqt::
:?*:�Mqt::
:?*:pMqt::
:?*:rMqt::
:?*:sMqt::
:?*:tMqt::
:?*:uMqt::
:?*:vMqt::
:?*:wMqt::
:?*:xMqt::
:?*:zMqt::
HOT_PrintHotstring("ment")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en N (aison) :
;;;;;;;;;;;;;;;;;;;;;;;;
:?*:qN::
HOT_PrintHotstring("uaison")
Return
:?*:aN::
HOT_PrintHotstring("ison")
Return
:?*:bN::
:?*:cN::
:?*:dN::
:?*:eN::
:?*:�N::
:?*:�N::
:?*:fN::
:?*:gN::
:?*:hN::
:?*:iN::
:?*:jN::
:?*:kN::
:?*:lN::
:?*:mN::
:?*:nN::
:?*:oN::
:?*:pN::
:?*:rN::
:?*:sN::
:?*:tN::
:?*:uN::
:?*:vN::
:?*:wN::
:?*:xN::
:?*:yN::
:?*:zN::
HOT_PrintHotstring("aison")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en NA (aisonnant) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:qNa::
:?*:aNa::
:?*:bNa::
:?*:cNa::
:?*:dNa::
:?*:eNa::
:?*:�Na::
:?*:�Na::
:?*:fNa::
:?*:gNa::
:?*:hNa::
:?*:iNa::
:?*:jNa::
:?*:kNa::
:?*:lNa::
:?*:mNa::
:?*:nNa::
:?*:oNa::
:?*:pNa::
:?*:rNa::
:?*:sNa::
:?*:tNa::
:?*:uNa::
:?*:vNa::
:?*:wNa::
:?*:xNa::
:?*:yNa::
:?*:zNa::
HOT_PrintHotstring("nant")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en NB (aisonnable) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:qNb::
:?*:aNb::
:?*:bNb::
:?*:cNb::
:?*:dNb::
:?*:eNb::
:?*:�Nb::
:?*:�Nb::
:?*:fNb::
:?*:gNb::
:?*:hNb::
:?*:iNb::
:?*:jNb::
:?*:kNb::
:?*:lNb::
:?*:mNb::
:?*:nNb::
:?*:oNb::
:?*:pNb::
:?*:rNb::
:?*:sNb::
:?*:tNb::
:?*:uNb::
:?*:vNb::
:?*:wNb::
:?*:xNb::
:?*:yNb::
:?*:zNb::
HOT_PrintHotstring("nable")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en NBT (aisonnablement) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:qNbt::
:?*:aNbt::
:?*:bNbt::
:?*:cNbt::
:?*:dNbt::
:?*:eNbt::
:?*:�Nbt::
:?*:�Nbt::
:?*:fNbt::
:?*:gNbt::
:?*:hNbt::
:?*:iNbt::
:?*:jNbt::
:?*:kNbt::
:?*:lNbt::
:?*:mNbt::
:?*:nNbt::
:?*:oNbt::
:?*:pNbt::
:?*:rNbt::
:?*:sNbt::
:?*:tNbt::
:?*:uNbt::
:?*:vNbt::
:?*:wNbt::
:?*:xNbt::
:?*:yNbt::
:?*:zNbt::
HOT_PrintHotstring("ment")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en NR (aisonneur) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:qNr::
:?*:aNr::
:?*:bNr::
:?*:cNr::
:?*:dNr::
:?*:eNr::
:?*:�Nr::
:?*:�Nr::
:?*:fNr::
:?*:gNr::
:?*:hNr::
:?*:iNr::
:?*:jNr::
:?*:kNr::
:?*:lNr::
:?*:mNr::
:?*:nNr::
:?*:oNr::
:?*:pNr::
:?*:rNr::
:?*:sNr::
:?*:tNr::
:?*:uNr::
:?*:vNr::
:?*:wNr::
:?*:xNr::
:?*:yNr::
:?*:zNr::
HOT_PrintHotstring("neur")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en NT (aisonnement) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:qNt::
:?*:aNt::
:?*:bNt::
:?*:cNt::
:?*:dNt::
:?*:eNt::
:?*:�Nt::
:?*:�Nt::
:?*:fNt::
:?*:gNt::
:?*:hNt::
:?*:iNt::
:?*:jNt::
:?*:kNt::
:?*:lNt::
:?*:mNt::
:?*:nNt::
:?*:oNt::
:?*:pNt::
:?*:rNt::
:?*:sNt::
:?*:tNt::
:?*:uNt::
:?*:vNt::
:?*:wNt::
:?*:xNt::
:?*:yNt::
:?*:zNt::
HOT_PrintHotstring("nement")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en NZ (aisonneuse) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:qNz::
:?*:aNz::
:?*:bNz::
:?*:cNz::
:?*:dNz::
:?*:eNz::
:?*:�Nz::
:?*:�Nz::
:?*:fNz::
:?*:gNz::
:?*:hNz::
:?*:iNz::
:?*:jNz::
:?*:kNz::
:?*:lNz::
:?*:mNz::
:?*:nNz::
:?*:oNz::
:?*:pNz::
:?*:rNz::
:?*:sNz::
:?*:tNz::
:?*:uNz::
:?*:vNz::
:?*:wNz::
:?*:xNz::
:?*:yNz::
:?*:zNz::
HOT_PrintHotstring("neuse")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en O (tion) :
;;;;;;;;;;;;;;;;;;;;;;;
:?*:tO::
HOT_PrintHotstring("ion")
Return
:?*:aO::
:?*:bO::
:?*:cO::
:?*:eO::
:?*:�O::
:?*:�O::
:?*:gO::
:?*:iO::
:?*:kO::
:?*:lO::
:?*:nO::
:?*:oO::
:?*:�O::
:?*:pO::
:?*:rO::
:?*:sO::
:?*:uO::
:?*:yO::
HOT_PrintHotstring("tion")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en OA (tionnant) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:tOa::
:?*:aOa::
:?*:bOa::
:?*:cOa::
:?*:eOa::
:?*:�Oa::
:?*:�Oa::
:?*:gOa::
:?*:iOa::
:?*:kOa::
:?*:lOa::
:?*:nOa::
:?*:oOa::
:?*:�Oa::
:?*:pOa::
:?*:rOa::
:?*:sOa::
:?*:uOa::
:?*:yOa::
HOT_PrintHotstring("nant")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en OB (tionnable) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:tOb::
:?*:aOb::
:?*:bOb::
:?*:cOb::
:?*:eOb::
:?*:�Ob::
:?*:�Ob::
:?*:gOb::
:?*:iOb::
:?*:kOb::
:?*:lOb::
:?*:nOb::
:?*:oOb::
:?*:�Ob::
:?*:pOb::
:?*:rOb::
:?*:sOb::
:?*:uOb::
:?*:yOb::
HOT_PrintHotstring("nable")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en OBT (tionnablement) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:tObt::
:?*:aObt::
:?*:bObt::
:?*:cObt::
:?*:eObt::
:?*:�Obt::
:?*:�Obt::
:?*:gObt::
:?*:iObt::
:?*:kObt::
:?*:lObt::
:?*:nObt::
:?*:oObt::
:?*:�Obt::
:?*:pObt::
:?*:rObt::
:?*:sObt::
:?*:uObt::
:?*:yObt::
HOT_PrintHotstring("ment")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en OL (tionnelle) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:tOl::
:?*:aOl::
:?*:bOl::
:?*:cOl::
:?*:eOl::
:?*:�Ol::
:?*:�Ol::
:?*:gOl::
:?*:iOl::
:?*:kOl::
:?*:lOl::
:?*:nOl::
:?*:oOl::
:?*:�Ol::
:?*:pOl::
:?*:rOl::
:?*:sOl::
:?*:uOl::
:?*:yOl::
HOT_PrintHotstring("nelle")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en OLT (tionnellement) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:tOlt::
:?*:aOlt::
:?*:bOlt::
:?*:cOlt::
:?*:eOlt::
:?*:�Olt::
:?*:�Olt::
:?*:gOlt::
:?*:iOlt::
:?*:kOlt::
:?*:lOlt::
:?*:nOlt::
:?*:oOlt::
:?*:�Olt::
:?*:pOlt::
:?*:rOlt::
:?*:sOlt::
:?*:uOlt::
:?*:yOlt::
HOT_PrintHotstring("ment")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en OM (tionisme) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:tOm::
:?*:aOm::
:?*:bOm::
:?*:cOm::
:?*:eOm::
:?*:�Om::
:?*:�Om::
:?*:gOm::
:?*:iOm::
:?*:kOm::
:?*:lOm::
:?*:nOm::
:?*:oOm::
:?*:�Om::
:?*:pOm::
:?*:rOm::
:?*:sOm::
:?*:uOm::
:?*:yOm::
HOT_PrintHotstring("isme")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en OQ (tionique) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:tOq::
:?*:aOq::
:?*:bOq::
:?*:cOq::
:?*:eOq::
:?*:�Oq::
:?*:�Oq::
:?*:gOq::
:?*:iOq::
:?*:kOq::
:?*:lOq::
:?*:nOq::
:?*:oOq::
:?*:�Oq::
:?*:pOq::
:?*:rOq::
:?*:sOq::
:?*:uOq::
:?*:yOq::
HOT_PrintHotstring("ique")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en OQT (tioniquement) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:tOqt::
:?*:aOqt::
:?*:bOqt::
:?*:cOqt::
:?*:eOqt::
:?*:�Oqt::
:?*:�Oqt::
:?*:gOqt::
:?*:iOqt::
:?*:kOqt::
:?*:lOqt::
:?*:nOqt::
:?*:oOqt::
:?*:�Oqt::
:?*:pOqt::
:?*:rOqt::
:?*:sOqt::
:?*:uOqt::
:?*:yOqt::
HOT_PrintHotstring("ment")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en OT (tionnement) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:tOt::
:?*:aOt::
:?*:bOt::
:?*:cOt::
:?*:eOt::
:?*:�Ot::
:?*:�Ot::
:?*:gOt::
:?*:iOt::
:?*:kOt::
:?*:lOt::
:?*:nOt::
:?*:oOt::
:?*:�Ot::
:?*:pOt::
:?*:rOt::
:?*:sOt::
:?*:uOt::
:?*:yOt::
HOT_PrintHotstring("nement")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en Q (ique) :
;;;;;;;;;;;;;;;;;;;;;;;
:?*:aQ::
:?*:eQ::
:?*:�Q::
:?*:�Q::
:?*:iQ::
:?*:oQ::
:?*:yQ::
HOT_PrintHotstring("que")
Return
:?*:bQ::
:?*:cQ::
:?*:dQ::
:?*:fQ::
:?*:gQ::
:?*:hQ::
:?*:jQ::
:?*:lQ::
:?*:mQ::
:?*:nQ::
:?*:pQ::
:?*:rQ::
:?*:sQ::
:?*:tQ::
:?*:uQ::
:?*:vQ::
:?*:xQ::
:?*:zQ::
HOT_PrintHotstring("ique")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en QA (iquant) :
;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aQa::
:?*:eQa::
:?*:�Qa::
:?*:�Qa::
:?*:iQa::
:?*:oQa::
:?*:yQa::
:?*:bQa::
:?*:cQa::
:?*:dQa::
:?*:fQa::
:?*:gQa::
:?*:hQa::
:?*:jQa::
:?*:lQa::
:?*:mQa::
:?*:nQa::
:?*:pQa::
:?*:rQa::
:?*:sQa::
:?*:tQa::
:?*:uQa::
:?*:vQa::
:?*:xQa::
:?*:zQa::
HoT_PrintHotstring("ant", 1)
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en QB (iquable) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aQb::
:?*:eQb::
:?*:�Qb::
:?*:�Qb::
:?*:iQb::
:?*:oQb::
:?*:yQb::
:?*:bQb::
:?*:cQb::
:?*:dQb::
:?*:fQb::
:?*:gQb::
:?*:hQb::
:?*:jQb::
:?*:lQb::
:?*:mQb::
:?*:nQb::
:?*:pQb::
:?*:rQb::
:?*:sQb::
:?*:tQb::
:?*:uQb::
:?*:vQb::
:?*:xQb::
:?*:zQb::
HOT_PrintHotstring("able", 1)
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en QBT (iquablement) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aQbt::
:?*:eQbt::
:?*:�Qbt::
:?*:�Qbt::
:?*:iQbt::
:?*:oQbt::
:?*:yQbt::
:?*:bQbt::
:?*:cQbt::
:?*:dQbt::
:?*:fQbt::
:?*:gQbt::
:?*:hQbt::
:?*:jQbt::
:?*:lQbt::
:?*:mQbt::
:?*:nQbt::
:?*:pQbt::
:?*:rQbt::
:?*:sQbt::
:?*:tQbt::
:?*:uQbt::
:?*:vQbt::
:?*:xQbt::
:?*:zQbt::
HOT_PrintHotstring("ment")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en QR (iqueur) :
;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aQr::
:?*:eQr::
:?*:�Qr::
:?*:�Qr::
:?*:iQr::
:?*:oQr::
:?*:yQr::
:?*:bQr::
:?*:cQr::
:?*:dQr::
:?*:fQr::
:?*:gQr::
:?*:hQr::
:?*:jQr::
:?*:lQr::
:?*:mQr::
:?*:nQr::
:?*:pQr::
:?*:rQr::
:?*:sQr::
:?*:tQr::
:?*:uQr::
:?*:vQr::
:?*:xQr::
:?*:zQr::
HOT_PrintHotstring("ur")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en QT (iquement) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aQt::
:?*:eQt::
:?*:�Qt::
:?*:�Qt::
:?*:iQt::
:?*:oQt::
:?*:yQt::
:?*:bQt::
:?*:cQt::
:?*:dQt::
:?*:fQt::
:?*:gQt::
:?*:hQt::
:?*:jQt::
:?*:lQt::
:?*:mQt::
:?*:nQt::
:?*:pQt::
:?*:rQt::
:?*:sQt::
:?*:tQt::
:?*:uQt::
:?*:vQt::
:?*:xQt::
:?*:zQt::
HOT_PrintHotstring("ment")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en QZ (iqueuse) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:aQz::
:?*:eQz::
:?*:�Qz::
:?*:�Qz::
:?*:iQz::
:?*:oQz::
:?*:yQz::
:?*:bQz::
:?*:cQz::
:?*:dQz::
:?*:fQz::
:?*:gQz::
:?*:hQz::
:?*:jQz::
:?*:lQz::
:?*:mQz::
:?*:nQz::
:?*:pQz::
:?*:rQz::
:?*:sQz::
:?*:tQz::
:?*:uQz::
:?*:vQz::
:?*:xQz::
:?*:zQz::
HOT_PrintHotstring("use")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en R (eur) :
;;;;;;;;;;;;;;;;;;;;;;
:?*:eR::
HOT_PrintHotstring("ur")
Return
:?*:qR::
HOT_PrintHotstring("ueur")
Return
:?*:aR::
:?*:bR::
:?*:cR::
:?*:dR::
:?*:�R::
:?*:�R::
:?*:fR::
:?*:gR::
:?*:hR::
:?*:iR::
:?*:kR::
:?*:lR::
:?*:mR::
:?*:nR::
:?*:oR::
:?*:pR::
:?*:rR::
:?*:sR::
:?*:tR::
:?*:uR::
:?*:vR::
:?*:wR::
:?*:xR::
:?*:yR::
:?*:zR::
HOT_PrintHotstring("eur")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en RA (eurant) :
;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:eRa::
:?*:qRa::
:?*:aRa::
:?*:bRa::
:?*:cRa::
:?*:dRa::
:?*:�Ra::
:?*:�Ra::
:?*:fRa::
:?*:gRa::
:?*:hRa::
:?*:iRa::
:?*:jRa::
:?*:kRa::
:?*:lRa::
:?*:mRa::
:?*:nRa::
:?*:oRa::
:?*:pRa::
:?*:rRa::
:?*:sRa::
:?*:tRa::
:?*:uRa::
:?*:vRa::
:?*:wRa::
:?*:xRa::
:?*:yRa::
:?*:zRa::
HOT_PrintHotstring("ant")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en RB (eurable) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:eRb::
:?*:qRb::
:?*:aRb::
:?*:bRb::
:?*:cRb::
:?*:dRb::
:?*:�Rb::
:?*:�Rb::
:?*:fRb::
:?*:gRb::
:?*:hRb::
:?*:iRb::
:?*:jRb::
:?*:kRb::
:?*:lRb::
:?*:mRb::
:?*:nRb::
:?*:oRb::
:?*:pRb::
:?*:rRb::
:?*:sRb::
:?*:tRb::
:?*:uRb::
:?*:vRb::
:?*:wRb::
:?*:xRb::
:?*:yRb::
:?*:zRb::
HOT_PrintHotstring("able")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en RBT (eurablement) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:eRbt::
:?*:qRbt::
:?*:aRbt::
:?*:bRbt::
:?*:cRbt::
:?*:dRbt::
:?*:�Rbt::
:?*:�Rbt::
:?*:fRbt::
:?*:gRbt::
:?*:hRbt::
:?*:iRbt::
:?*:jRbt::
:?*:kRbt::
:?*:lRbt::
:?*:mRbt::
:?*:nRbt::
:?*:oRbt::
:?*:pRbt::
:?*:rRbt::
:?*:sRbt::
:?*:tRbt::
:?*:uRbt::
:?*:vRbt::
:?*:wRbt::
:?*:xRbt::
:?*:yRbt::
:?*:zRbt::
HOT_PrintHotstring("ment")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en RN (euraison) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:eRn::
:?*:qRn::
:?*:aRn::
:?*:bRn::
:?*:cRn::
:?*:dRn::
:?*:�Rn::
:?*:�Rn::
:?*:fRn::
:?*:gRn::
:?*:hRn::
:?*:iRn::
:?*:jRn::
:?*:kRn::
:?*:lRn::
:?*:mRn::
:?*:nRn::
:?*:oRn::
:?*:pRn::
:?*:rRn::
:?*:sRn::
:?*:tRn::
:?*:uRn::
:?*:vRn::
:?*:wRn::
:?*:xRn::
:?*:yRn::
:?*:zRn::
HOT_PrintHotstring("aison")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en RQ (eurique) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:eRq::
:?*:qRq::
:?*:aRq::
:?*:bRq::
:?*:cRq::
:?*:dRq::
:?*:�Rq::
:?*:�Rq::
:?*:fRq::
:?*:gRq::
:?*:hRq::
:?*:iRq::
:?*:jRq::
:?*:kRq::
:?*:lRq::
:?*:mRq::
:?*:nRq::
:?*:oRq::
:?*:pRq::
:?*:rRq::
:?*:sRq::
:?*:tRq::
:?*:uRq::
:?*:vRq::
:?*:wRq::
:?*:xRq::
:?*:yRq::
:?*:zRq::
HOT_PrintHotstring("ique")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en RQT (euriquement) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:eRqt::
:?*:qRqt::
:?*:aRqt::
:?*:bRqt::
:?*:cRqt::
:?*:dRqt::
:?*:�Rqt::
:?*:�Rqt::
:?*:fRqt::
:?*:gRqt::
:?*:hRqt::
:?*:iRqt::
:?*:jRqt::
:?*:kRqt::
:?*:lRqt::
:?*:mRqt::
:?*:nRqt::
:?*:oRqt::
:?*:pRqt::
:?*:rRqt::
:?*:sRqt::
:?*:tRqt::
:?*:uRqt::
:?*:vRqt::
:?*:wRqt::
:?*:xRqt::
:?*:yRqt::
:?*:zRqt::
HOT_PrintHotstring("ment")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en RT (eurement) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:eRt::
:?*:qRt::
:?*:aRt::
:?*:bRt::
:?*:cRt::
:?*:dRt::
:?*:�Rt::
:?*:�Rt::
:?*:fRt::
:?*:gRt::
:?*:hRt::
:?*:iRt::
:?*:jRt::
:?*:kRt::
:?*:lRt::
:?*:mRt::
:?*:nRt::
:?*:oRt::
:?*:pRt::
:?*:rRt::
:?*:sRt::
:?*:tRt::
:?*:uRt::
:?*:vRt::
:?*:wRt::
:?*:xRt::
:?*:yRt::
:?*:zRt::
HOT_PrintHotstring("ement")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en RZ (eureuse) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:eRz::
:?*:qRz::
:?*:aRz::
:?*:bRz::
:?*:cRz::
:?*:dRz::
:?*:�Rz::
:?*:�Rz::
:?*:fRz::
:?*:gRz::
:?*:hRz::
:?*:iRz::
:?*:jRz::
:?*:kRz::
:?*:lRz::
:?*:mRz::
:?*:nRz::
:?*:oRz::
:?*:pRz::
:?*:rRz::
:?*:sRz::
:?*:tRz::
:?*:uRz::
:?*:vRz::
:?*:wRz::
:?*:xRz::
:?*:yRz::
:?*:zRz::
HOT_PrintHotstring("euse")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en RZT (eureusement) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:eRzt::
:?*:qRzt::
:?*:aRzt::
:?*:bRzt::
:?*:cRzt::
:?*:dRzt::
:?*:�Rzt::
:?*:�Rzt::
:?*:fRzt::
:?*:gRzt::
:?*:hRzt::
:?*:iRzt::
:?*:jRzt::
:?*:kRzt::
:?*:lRzt::
:?*:mRzt::
:?*:nRzt::
:?*:oRzt::
:?*:pRzt::
:?*:rRzt::
:?*:sRzt::
:?*:tRzt::
:?*:uRzt::
:?*:vRzt::
:?*:wRzt::
:?*:xRzt::
:?*:yRzt::
:?*:zRzt::
HOT_PrintHotstring("ment")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en S (esse) :
;;;;;;;;;;;;;;;;;;;;;;;
:?*:eS::
HOT_PrintHotstring("sse")
Return
:?*:qS::
HOT_PrintHotstring("uesse")
Return
:?*:aS::
:?*:bS::
:?*:cS::
:?*:dS::
:?*:�S::
:?*:fS::
:?*:gS::
:?*:hS::
:?*:iS::
:?*:jS::
:?*:kS::
:?*:lS::
:?*:mS::
:?*:nS::
:?*:oS::
:?*:pS::
:?*:rS::
:?*:sS::
:?*:tS::
:?*:uS::
:?*:vS::
:?*:wS::
:?*:xS::
:?*:yS::
:?*:zS::
HOT_PrintHotstring("esse")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en SA (essant) :
;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:eSa::
:?*:qSa::
:?*:aSa::
:?*:bSa::
:?*:cSa::
:?*:dSa::
:?*:�Sa::
:?*:fSa::
:?*:gSa::
:?*:hSa::
:?*:iSa::
:?*:jSa::
:?*:kSa::
:?*:lSa::
:?*:mSa::
:?*:nSa::
:?*:oSa::
:?*:pSa::
:?*:rSa::
:?*:sSa::
:?*:tSa::
:?*:uSa::
:?*:vSa::
:?*:wSa::
:?*:xSa::
:?*:ySa::
:?*:zSa::
HoT_PrintHotstring("ant", 1)
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en SB (essable) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:eSb::
:?*:qSb::
:?*:aSb::
:?*:bSb::
:?*:cSb::
:?*:dSb::
:?*:�Sb::
:?*:fSb::
:?*:gSb::
:?*:hSb::
:?*:iSb::
:?*:jSb::
:?*:kSb::
:?*:lSb::
:?*:mSb::
:?*:nSb::
:?*:oSb::
:?*:pSb::
:?*:rSb::
:?*:sSb::
:?*:tSb::
:?*:uSb::
:?*:vSb::
:?*:wSb::
:?*:xSb::
:?*:ySb::
:?*:zSb::
HOT_PrintHotstring("able", 1)
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en SBT (essablement) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:eSbt::
:?*:qSbt::
:?*:aSbt::
:?*:bSbt::
:?*:cSbt::
:?*:dSbt::
:?*:�Sbt::
:?*:fSbt::
:?*:gSbt::
:?*:hSbt::
:?*:iSbt::
:?*:jSbt::
:?*:kSbt::
:?*:lSbt::
:?*:mSbt::
:?*:nSbt::
:?*:oSbt::
:?*:pSbt::
:?*:rSbt::
:?*:sSbt::
:?*:tSbt::
:?*:uSbt::
:?*:vSbt::
:?*:wSbt::
:?*:xSbt::
:?*:ySbt::
:?*:zSbt::
HOT_PrintHotstring("ment")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en SE (essence) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:Se::
:?*:eSe::
:?*:qSe::
:?*:aSe::
:?*:bSe::
:?*:cSe::
:?*:dSe::
:?*:�Se::
:?*:fSe::
:?*:gSe::
:?*:hSe::
:?*:iSe::
:?*:jSe::
:?*:kSe::
:?*:lSe::
:?*:mSe::
:?*:nSe::
:?*:oSe::
:?*:pSe::
:?*:rSe::
:?*:sSe::
:?*:tSe::
:?*:uSe::
:?*:vSe::
:?*:wSe::
:?*:xSe::
:?*:ySe::
:?*:zSe::
HOT_PrintHotstring("nce")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en SQ (essique) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:eSq::
:?*:qSq::
:?*:aSq::
:?*:bSq::
:?*:cSq::
:?*:dSq::
:?*:�Sq::
:?*:fSq::
:?*:gSq::
:?*:hSq::
:?*:iSq::
:?*:jSq::
:?*:kSq::
:?*:lSq::
:?*:mSq::
:?*:nSq::
:?*:oSq::
:?*:pSq::
:?*:rSq::
:?*:sSq::
:?*:tSq::
:?*:uSq::
:?*:vSq::
:?*:wSq::
:?*:xSq::
:?*:ySq::
:?*:zSq::
HOT_PrintHotstring("ique", 1)
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en SQT (essiquement) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:eSqt::
:?*:qSqt::
:?*:aSqt::
:?*:bSqt::
:?*:cSqt::
:?*:dSqt::
:?*:�Sqt::
:?*:fSqt::
:?*:gSqt::
:?*:hSqt::
:?*:iSqt::
:?*:jSqt::
:?*:kSqt::
:?*:lSqt::
:?*:mSqt::
:?*:nSqt::
:?*:oSqt::
:?*:pSqt::
:?*:rSqt::
:?*:sSqt::
:?*:tSqt::
:?*:uSqt::
:?*:vSqt::
:?*:wSqt::
:?*:xSqt::
:?*:ySqt::
:?*:zSqt::
HOT_PrintHotstring("ment")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en SR (esseur) :
;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:eSr::
:?*:qSr::
:?*:aSr::
:?*:bSr::
:?*:cSr::
:?*:dSr::
:?*:�Sr::
:?*:fSr::
:?*:gSr::
:?*:hSr::
:?*:iSr::
:?*:jSr::
:?*:kSr::
:?*:lSr::
:?*:mSr::
:?*:nSr::
:?*:oSr::
:?*:pSr::
:?*:rSr::
:?*:sSr::
:?*:tSr::
:?*:uSr::
:?*:vSr::
:?*:wSr::
:?*:xSr::
:?*:ySr::
:?*:zSr::
HOT_PrintHotstring("ur")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en ST (essement) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:eSt::
:?*:qSt::
:?*:aSt::
:?*:bSt::
:?*:cSt::
:?*:dSt::
:?*:�St::
:?*:fSt::
:?*:gSt::
:?*:hSt::
:?*:iSt::
:?*:jSt::
:?*:kSt::
:?*:lSt::
:?*:mSt::
:?*:nSt::
:?*:oSt::
:?*:pSt::
:?*:rSt::
:?*:sSt::
:?*:tSt::
:?*:uSt::
:?*:vSt::
:?*:wSt::
:?*:xSt::
:?*:ySt::
:?*:zSt::
HOT_PrintHotstring("ment")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en SZ (esseuse) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:eSz::
:?*:qSz::
:?*:aSz::
:?*:bSz::
:?*:cSz::
:?*:dSz::
:?*:�Sz::
:?*:fSz::
:?*:gSz::
:?*:hSz::
:?*:iSz::
:?*:jSz::
:?*:kSz::
:?*:lSz::
:?*:mSz::
:?*:nSz::
:?*:oSz::
:?*:pSz::
:?*:rSz::
:?*:sSz::
:?*:tSz::
:?*:uSz::
:?*:vSz::
:?*:wSz::
:?*:xSz::
:?*:ySz::
:?*:zSz::
HOT_PrintHotstring("use")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en T (ment) :
;;;;;;;;;;;;;;;;;;;;;;;
:?*:mT::
HOT_PrintHotstring("ent")
Return
:?*:uT::
:?*:iT::
:?*:eT::
:?*:�T::
:?*:�T::
:?*:oT::
HOT_PrintHotstring("ment")
Return
:?*:aT::
HOT_PrintHotstring("mment")
Return
:?*:qT::
HOT_PrintHotstring("uement")
Return
:?*:bT::
:?*:cT::
:?*:dT::
:?*:fT::
:?*:gT::
:?*:hT::
:?*:lT::
:?*:mT::
:?*:nT::
:?*:pT::
:?*:rT::
:?*:sT::
:?*:tT::
:?*:vT::
:?*:wT::
:?*:xT::
:?*:yT::
:?*:zT::
HOT_PrintHotstring("ement")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en TB (mentable) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:Tb::
:?*:mTb::
:?*:uTb::
:?*:iTb::
:?*:eTb::
:?*:�Tb::
:?*:�Tb::
:?*:aTb::
:?*:qTb::
:?*:bTb::
:?*:cTb::
:?*:dTb::
:?*:fTb::
:?*:gTb::
:?*:hTb::
:?*:lTb::
:?*:mTb::
:?*:nTb::
:?*:oTb::
:?*:pTb::
:?*:rTb::
:?*:sTb::
:?*:tTb::
:?*:vTb::
:?*:wTb::
:?*:xTb::
:?*:yTb::
:?*:zTb::
HOT_PrintHotstring("able")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en TBT (mentablement) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:mTbt::
:?*:uTbt::
:?*:iTbt::
:?*:eTbt::
:?*:�Tbt::
:?*:�Tbt::
:?*:aTbt::
:?*:qTbt::
:?*:bTbt::
:?*:cTbt::
:?*:dTbt::
:?*:fTbt::
:?*:gTbt::
:?*:hTbt::
:?*:lTbt::
:?*:mTbt::
:?*:nTbt::
:?*:oTbt::
:?*:pTbt::
:?*:rTbt::
:?*:sTbt::
:?*:tTbt::
:?*:vTbt::
:?*:wTbt::
:?*:xTbt::
:?*:yTbt::
:?*:zTbt::
HOT_PrintHotstring("ment")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en TE (mentence) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:mTe::
:?*:uTe::
:?*:iTe::
:?*:eTe::
:?*:�Te::
:?*:�Te::
:?*:aTe::
:?*:qTe::
:?*:bTe::
:?*:cTe::
:?*:dTe::
:?*:fTe::
:?*:gTe::
:?*:hTe::
:?*:lTe::
:?*:mTe::
:?*:nTe::
:?*:oTe::
:?*:pTe::
:?*:rTe::
:?*:sTe::
:?*:tTe::
:?*:vTe::
:?*:wTe::
:?*:xTe::
:?*:yTe::
:?*:zTe::
HOT_PrintHotstring("ence")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en TL (mentelle) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:mTl::
:?*:uTl::
:?*:iTl::
:?*:eTl::
:?*:�Tl::
:?*:�Tl::
:?*:aTl::
:?*:qTl::
:?*:bTl::
:?*:cTl::
:?*:dTl::
:?*:fTl::
:?*:gTl::
:?*:hTl::
:?*:lTl::
:?*:mTl::
:?*:nTl::
:?*:oTl::
:?*:pTl::
:?*:rTl::
:?*:sTl::
:?*:tTl::
:?*:vTl::
:?*:wTl::
:?*:xTl::
:?*:yTl::
:?*:zTl::
HOT_PrintHotstring("elle")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en TM (mentisme) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:mTm::
:?*:uTm::
:?*:iTm::
:?*:eTm::
:?*:�Tm::
:?*:�Tm::
:?*:aTm::
:?*:qTm::
:?*:bTm::
:?*:cTm::
:?*:dTm::
:?*:fTm::
:?*:gTm::
:?*:hTm::
:?*:lTm::
:?*:mTm::
:?*:nTm::
:?*:oTm::
:?*:pTm::
:?*:rTm::
:?*:sTm::
:?*:tTm::
:?*:vTm::
:?*:wTm::
:?*:xTm::
:?*:yTm::
:?*:zTm::
HOT_PrintHotstring("isme")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en TN (mentaison) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:mTn::
:?*:uTn::
:?*:iTn::
:?*:eTn::
:?*:�Tn::
:?*:�Tn::
:?*:aTn::
:?*:qTn::
:?*:bTn::
:?*:cTn::
:?*:dTn::
:?*:fTn::
:?*:gTn::
:?*:hTn::
:?*:lTn::
:?*:mTn::
:?*:nTn::
:?*:oTn::
:?*:pTn::
:?*:rTn::
:?*:sTn::
:?*:tTn::
:?*:vTn::
:?*:wTn::
:?*:xTn::
:?*:yTn::
:?*:zTn::
HOT_PrintHotstring("aison")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en TO (mention) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:To::
:?*:mTo::
:?*:uTo::
:?*:iTo::
:?*:eTo::
:?*:�To::
:?*:�To::
:?*:aTo::
:?*:qTo::
:?*:bTo::
:?*:cTo::
:?*:dTo::
:?*:fTo::
:?*:gTo::
:?*:hTo::
:?*:lTo::
:?*:mTo::
:?*:nTo::
:?*:oTo::
:?*:pTo::
:?*:rTo::
:?*:sTo::
:?*:tTo::
:?*:vTo::
:?*:wTo::
:?*:xTo::
:?*:yTo::
:?*:zTo::
HOT_PrintHotstring("ion")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en TQ (mentique) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:mTq::
:?*:uTq::
:?*:iTq::
:?*:eTq::
:?*:�Tq::
:?*:�Tq::
:?*:aTq::
:?*:qTq::
:?*:bTq::
:?*:cTq::
:?*:dTq::
:?*:fTq::
:?*:gTq::
:?*:hTq::
:?*:lTq::
:?*:mTq::
:?*:nTq::
:?*:oTq::
:?*:pTq::
:?*:rTq::
:?*:sTq::
:?*:tTq::
:?*:vTq::
:?*:wTq::
:?*:xTq::
:?*:yTq::
:?*:zTq::
HOT_PrintHotstring("ique")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en TR (menteur) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:Tr::
:?*:mTr::
:?*:uTr::
:?*:iTr::
:?*:eTr::
:?*:�Tr::
:?*:�Tr::
:?*:aTr::
:?*:qTr::
:?*:bTr::
:?*:cTr::
:?*:dTr::
:?*:fTr::
:?*:gTr::
:?*:hTr::
:?*:lTr::
:?*:mTr::
:?*:nTr::
:?*:oTr::
:?*:pTr::
:?*:rTr::
:?*:sTr::
:?*:tTr::
:?*:vTr::
:?*:wTr::
:?*:xTr::
:?*:yTr::
:?*:zTr::
HOT_PrintHotstring("eur")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en TZ (menteuse) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:Tz::
:?*:mTz::
:?*:uTz::
:?*:iTz::
:?*:eTz::
:?*:�Tz::
:?*:�Tz::
:?*:aTz::
:?*:qTz::
:?*:bTz::
:?*:cTz::
:?*:dTz::
:?*:fTz::
:?*:gTz::
:?*:hTz::
:?*:lTz::
:?*:mTz::
:?*:nTz::
:?*:oTz::
:?*:pTz::
:?*:rTz::
:?*:sTz::
:?*:tTz::
:?*:vTz::
:?*:wTz::
:?*:xTz::
:?*:yTz::
:?*:zTz::
HOT_PrintHotstring("euse")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en Y (ille) :
;;;;;;;;;;;;;;;;;;;;;;;
:?*:iY::
HOT_PrintHotstring("lle")
Return
:?*:qY::
HOT_PrintHotstring("uille")
Return
:?*:aY::
:?*:bY::
:?*:cY::
:?*:dY::
:?*:eY::
:?*:�Y::
:?*:�Y::
:?*:fY::
:?*:gY::
:?*:hY::
:?*:jY::
:?*:kY::
:?*:lY::
:?*:mY::
:?*:nY::
:?*:oY::
:?*:pY::
:?*:rY::
:?*:sY::
:?*:tY::
:?*:uY::
:?*:vY::
:?*:wY::
:?*:xY::
:?*:yY::
:?*:zY::
HOT_PrintHotstring("ille")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en YA (illant) :
;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:iYa::
:?*:qYa::
:?*:aYa::
:?*:bYa::
:?*:cYa::
:?*:dYa::
:?*:eYa::
:?*:�Ya::
:?*:�Ya::
:?*:fYa::
:?*:gYa::
:?*:hYa::
:?*:jYa::
:?*:kYa::
:?*:lYa::
:?*:mYa::
:?*:nYa::
:?*:oYa::
:?*:pYa::
:?*:rYa::
:?*:sYa::
:?*:tYa::
:?*:uYa::
:?*:vYa::
:?*:wYa::
:?*:xYa::
:?*:yYa::
:?*:zYa::
HoT_PrintHotstring("ant", 1)
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en YB (illable) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:iYb::
:?*:qYb::
:?*:aYb::
:?*:bYb::
:?*:cYb::
:?*:dYb::
:?*:eYb::
:?*:�Yb::
:?*:�Yb::
:?*:fYb::
:?*:gYb::
:?*:hYb::
:?*:jYb::
:?*:kYb::
:?*:lYb::
:?*:mYb::
:?*:nYb::
:?*:oYb::
:?*:pYb::
:?*:rYb::
:?*:sYb::
:?*:tYb::
:?*:uYb::
:?*:vYb::
:?*:wYb::
:?*:xYb::
:?*:yYb::
:?*:zYb::
HOT_PrintHotstring("able", 1)
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en YE (illence) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:iYe::
:?*:qYe::
:?*:aYe::
:?*:bYe::
:?*:cYe::
:?*:dYe::
:?*:eYe::
:?*:�Ye::
:?*:�Ye::
:?*:fYe::
:?*:gYe::
:?*:hYe::
:?*:jYe::
:?*:kYe::
:?*:lYe::
:?*:mYe::
:?*:nYe::
:?*:oYe::
:?*:pYe::
:?*:rYe::
:?*:sYe::
:?*:tYe::
:?*:uYe::
:?*:vYe::
:?*:wYe::
:?*:xYe::
:?*:yYe::
:?*:zYe::
HOT_PrintHotstring("nce")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en YQ (illique) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:iYq::
:?*:qYq::
:?*:aYq::
:?*:bYq::
:?*:cYq::
:?*:dYq::
:?*:eYq::
:?*:�Yq::
:?*:�Yq::
:?*:fYq::
:?*:gYq::
:?*:hYq::
:?*:jYq::
:?*:kYq::
:?*:lYq::
:?*:mYq::
:?*:nYq::
:?*:oYq::
:?*:pYq::
:?*:rYq::
:?*:sYq::
:?*:tYq::
:?*:uYq::
:?*:vYq::
:?*:wYq::
:?*:xYq::
:?*:yYq::
:?*:zYq::
HOT_PrintHotstring("ique", 1)
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en YR (illeur) :
;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:iYr::
:?*:qYr::
:?*:aYr::
:?*:bYr::
:?*:cYr::
:?*:dYr::
:?*:eYr::
:?*:�Yr::
:?*:�Yr::
:?*:fYr::
:?*:gYr::
:?*:hYr::
:?*:jYr::
:?*:kYr::
:?*:lYr::
:?*:mYr::
:?*:nYr::
:?*:oYr::
:?*:pYr::
:?*:rYr::
:?*:sYr::
:?*:tYr::
:?*:uYr::
:?*:vYr::
:?*:wYr::
:?*:xYr::
:?*:yYr::
:?*:zYr::
HOT_PrintHotstring("ur")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en YS (illesse) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:iYs::
:?*:qYs::
:?*:aYs::
:?*:bYs::
:?*:cYs::
:?*:dYs::
:?*:eYs::
:?*:�Ys::
:?*:�Ys::
:?*:fYs::
:?*:gYs::
:?*:hYs::
:?*:jYs::
:?*:kYs::
:?*:lYs::
:?*:mYs::
:?*:nYs::
:?*:oYs::
:?*:pYs::
:?*:rYs::
:?*:sYs::
:?*:tYs::
:?*:uYs::
:?*:vYs::
:?*:wYs::
:?*:xYs::
:?*:yYs::
:?*:zYs::
HOT_PrintHotstring("sse")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en YT (illement) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:iYt::
:?*:qYt::
:?*:aYt::
:?*:bYt::
:?*:cYt::
:?*:dYt::
:?*:eYt::
:?*:�Yt::
:?*:�Yt::
:?*:fYt::
:?*:gYt::
:?*:hYt::
:?*:jYt::
:?*:kYt::
:?*:lYt::
:?*:mYt::
:?*:nYt::
:?*:oYt::
:?*:pYt::
:?*:rYt::
:?*:sYt::
:?*:tYt::
:?*:uYt::
:?*:vYt::
:?*:wYt::
:?*:xYt::
:?*:yYt::
:?*:zYt::
HOT_PrintHotstring("ment")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en YZ (illeuse) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:iYz::
:?*:qYz::
:?*:aYz::
:?*:bYz::
:?*:cYz::
:?*:dYz::
:?*:eYz::
:?*:�Yz::
:?*:�Yz::
:?*:fYz::
:?*:gYz::
:?*:hYz::
:?*:jYz::
:?*:kYz::
:?*:lYz::
:?*:mYz::
:?*:nYz::
:?*:oYz::
:?*:pYz::
:?*:rYz::
:?*:sYz::
:?*:tYz::
:?*:uYz::
:?*:vYz::
:?*:wYz::
:?*:xYz::
:?*:yYz::
:?*:zYZ::
HOT_PrintHotstring("use")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en Z (euse) :
;;;;;;;;;;;;;;;;;;;;;;;
:?*:eZ::
HOT_PrintHotstring("use")
Return
:?*:qZ::
HOT_PrintHotstring("ueuse")
Return
:?*:aZ::
:?*:bZ::
:?*:cZ::
:?*:dZ::
:?*:�Z::
:?*:�Z::
:?*:fZ::
:?*:gZ::
:?*:hZ::
:?*:iZ::
:?*:�Z::
:?*:jZ::
:?*:kZ::
:?*:lZ::
:?*:mZ::
:?*:nZ::
:?*:oZ::
:?*:pZ::
:?*:rZ::
:?*:sZ::
:?*:tZ::
:?*:uZ::
:?*:vZ::
:?*:wZ::
:?*:xZ::
:?*:yZ::
:?*:zZ::
HOT_PrintHotstring("euse")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Suffixe en ZT (eusement) :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:eZt::
:?*:qZt::
:?*:aZt::
:?*:bZt::
:?*:cZt::
:?*:dZt::
:?*:�Zt::
:?*:�Zt::
:?*:fZt::
:?*:gZt::
:?*:hZt::
:?*:iZt::
:?*:�Zt::
:?*:jZt::
:?*:kZt::
:?*:lZt::
:?*:mZt::
:?*:nZt::
:?*:oZt::
:?*:pZt::
:?*:rZt::
:?*:sZt::
:?*:tZt::
:?*:uZt::
:?*:vZt::
:?*:wZt::
:?*:xZt::
:?*:yZt::
:?*:zZt::
HOT_PrintHotstring("ment")
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

:?*:Aa::
HOT_PrintHotstring("en temps", 3)
Return
:?*:Ra::
HOT_PrintHotstring("rrant", 2)
Return
:?*:Ga::
HOT_PrintHotstring("�ant", 2)
Return
:?*:Ha::
HOT_PrintHotstring("ant", 1)
Return
:?*:La::
HOT_PrintHotstring("h�lant", 4)
Return

:?*:Ab::
HOT_PrintHotstring("en table", 3)
Return
:?*:Rb::
HOT_PrintHotstring("�rable", 3)
Return
:?*:Eb::
HOT_PrintHotstring(" sable", 2)
Return
:?*:Hb::
HOT_PrintHotstring("h�chable", 4)
Return

:?*:Re::
HOT_PrintHotstring("rrance", 2)
Return
:?*:Ee::
HOT_PrintHotstring("nce")
Return
:?*:Ge::
:?*:Se::
HOT_PrintHotstring("nce")
Return
:?*:Ze::
HOT_PrintHotstring("aisance", 4)
Return

:?*:Lg::
HOT_PrintHotstring("h�lage", 4)
Return

:?*:Rj::
HOT_PrintHotstring("orgie", 3)
Return
:?*:Jj::
HOT_PrintHotstring("gi", 1)
Return

:?*:El::
HOT_PrintHotstring(" selle", 2)
Return
:?*:Rl::
HOT_PrintHotstring("oreille", 3)
Return
:?*:Sl::
HOT_PrintHotstring("aisselle", 4)
Return
:?*:Tl::
HOT_PrintHotstring("-elle")
Return

:?*:Gm::
HOT_PrintHotstring("isme", 1)
Return
:?*:Hm::
HOT_PrintHotstring("schisme", 4)
Return
:?*:Om::
HOT_PrintHotstring("sionisme", 4)
Return

:?*:En::
HOT_PrintHotstring(" saison", 2)
Return
:?*:Rn::
HOT_PrintHotstring("oraison", 3)
Return

:?*:Bo::
HOT_PrintHotstring("ation", 1)
Return
:?*:To::
HOT_PrintHotstring("ion")
Return

:?*:Aq::
HOT_PrintHotstring("ique")
Return
:?*:Oq::
HOT_PrintHotstring("sionique", 4)
Return
:?*:Yq::
HOT_PrintHotstring("dyllique", 3)
Return

:?*:Hr::
HOT_PrintHotstring("ur")
Return
:?*:Rr::
HOT_PrintHotstring("horreur", 3)
Return
:?*:Tr::
HOT_PrintHotstring("eur")
Return

:?*:Lt::
HOT_PrintHotstring(" ment")
Return
:?*:Rt::
HOT_PrintHotstring("rrement", 2)
Return

:?*:Ay::
HOT_PrintHotstring("ill")
Return
:?*:Gy::
HOT_PrintHotstring("ile", 1)
Return

:?*:Hz::
HOT_PrintHotstring("use")
Return
:?*:Rz::
HOT_PrintHotstring("heureuse", 3)
Return
:?*:Tz::
HOT_PrintHotstring("euse")
Return

; Suffixes par d�faut :
:?*:A::
HOT_PrintHotstring("ant")
Return
:?*:B::
HOT_PrintHotstring("able")
Return
:?*:E::
HOT_PrintHotstring("ence")
Return
:?*:G::
HOT_PrintHotstring("age")
Return
:?*:H::
HOT_PrintHotstring("chie")
Return
:?*:J::
HOT_PrintHotstring("gie")
Return
:?*:L::
HOT_PrintHotstring("elle")
Return
:?*:M::
HOT_PrintHotstring("isme")
Return
:?*:N::
HOT_PrintHotstring("naison")
Return
:?*:O::
HOT_PrintHotstring("tion")
Return
:?*:Q::
HOT_PrintHotstring("ique")
Return
:?*:R::
HOT_PrintHotstring("eur")
Return
:?*:S::
HOT_PrintHotstring("esse")
Return
:?*:T::
HOT_PrintHotstring("ment")
Return
:?*:Y::
HOT_PrintHotstring("ille")
Return
:?*:Z::
HOT_PrintHotstring("euse")
Return

#Hotstring C0 B0
#IfWinActive

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; CapsLock acting like shift :
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

HOT_CapsLock:
*CapsLock::
SetCapsLockState, Off
SetStoreCapslockMode, Off
SendInput, {Blind}{Shift DownTemp}
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

*CapsLock Up::
;SetCapsLockState, Off
;SetStoreCapslockMode, Off
SendInput, {Blind}{Shift Up}
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
