; =============================================
; CONFIGURAÇÃO
; =============================================
MoveSpeed := 15
MouseLeft := false
MouseRight := false
MouseUp := false
MouseDown := false

; =============================================
; NAVEGAÇÃO COM SETAS
; =============================================
CapsLock & e::Send, {Up}
CapsLock & s::Send, {Left}
CapsLock & d::Send, {Down}
CapsLock & f::Send, {Right}

; =============================================
; TROCA DE ÁREAS DE TRABALHO
; =============================================
CapsLock & w::SendInput, ^#{Right}
CapsLock & r::SendInput, ^#{Left}

; =============================================
; INSERIR ABERTURA DE PARÊNTESES, CHAVES E COLCHETES
; =============================================
CapsLock & 1::Send, (
CapsLock & 2::Send, {{}
CapsLock & 3::Send, [

; =============================================
; PAGE UP / PAGE DOWN
; =============================================
CapsLock & h::Send, {PgUp}
CapsLock & g::Send, {PgDn}

; =============================================
; MOVIMENTO CONTÍNUO DO MOUSE
; =============================================
CapsLock & j::
    MouseLeft := true
    SetTimer, MoveMouse, 10
Return

CapsLock & j up::
    MouseLeft := false
Return

CapsLock & l::
    MouseRight := true
    SetTimer, MoveMouse, 10
Return

CapsLock & l up::
    MouseRight := false
Return

CapsLock & i::
    MouseUp := true
    SetTimer, MoveMouse, 10
Return

CapsLock & i up::
    MouseUp := false
Return

CapsLock & k::
    MouseDown := true
    SetTimer, MoveMouse, 10
Return

CapsLock & k up::
    MouseDown := false
Return

MoveMouse:
    MouseGetPos, xpos, ypos
    if (MouseLeft)
        xpos -= MoveSpeed
    if (MouseRight)
        xpos += MoveSpeed
    if (MouseUp)
        ypos -= MoveSpeed
    if (MouseDown)
        ypos += MoveSpeed
    MouseMove, xpos, ypos, 0
Return

; =============================================
; CLIQUES
; =============================================
CapsLock & n::Click, Left
CapsLock & m::Click, Right
