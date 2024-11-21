;Capslock用作修饰键
#inputlevel,2
$CapsLock::F20
#inputlevel,1

;单按Capslock切换大小写状态
F20::
capstate :=GetKeyState("capslock","T")
if capstate=0
{
SetCapsLockState,On
}
else
{
SetCapsLockState,off
}
return

;Capslock 实现上下左右,删除,回车等
F20 & j::
send,{left}
return

F20 & l::
send,{right}
return

F20 & i::
send,{up}
return

F20 & k::
send,{down}
return

F20 & u::
send,{PgUp}
return

F20 & o::
send,{PgDn}
return

F20 & -::
Run nircmd.exe setdefaultsounddevice "BenQ BL2480T"
return

F20 & =::
Run nircmd.exe setdefaultsounddevice "Realtek Digital Output"
return

#inputlevel,0