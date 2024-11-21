#InputLevel 1
CapsLock::
{
    Keywait "CapsLock", "T0.3"
    state := GetKeyState("CapsLock", "T")
    if (state = 0) {
        SetCapsLockState "AlwaysOn"
    } else {
        SetCapsLockState "AlwaysOff"
    }
}

; CapsLock + j for left arrow
CapsLock & j::Send("{Left}")

; CapsLock + l for right arrow
CapsLock & l::Send("{Right}")

; CapsLock + i for up arrow
CapsLock & i::Send("{Up}")

; CapsLock + k for down arrow
CapsLock & k::Send("{Down}")

; CapsLock + u for Page Up
CapsLock & u::Send("{PgUp}")

; CapsLock + o for Page Down
CapsLock & o::Send("{PgDn}")

#InputLevel 0
; do nothing