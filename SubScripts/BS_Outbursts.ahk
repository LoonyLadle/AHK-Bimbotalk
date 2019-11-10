;------------------------------------------------------------------------------
; Randomly inserts bimbo phrases after some specific words.
;------------------------------------------------------------------------------

#Hotstring B0
::and::
::could::
::should::
::would::
::to::
{
  CommonOutbursts()
}
return

#Hotstring B0 EndChars `n `t
::I::
{
  CommonOutbursts()
}
return

; Put the EndChars back the way they were to prevent problems later.
#Hotstring EndChars -()[]{}:;'"/\,.?!`n `t

;------------------------------------------------------------------------------
; Randomly add bimbo phrases between words.
;------------------------------------------------------------------------------
#Hotstring B0
:?*: ::
{
  ; Quit out early if the last character was not alphanumeric.
  if (RegExMatch(A_PriorKey, "\w") = 0)
  {
    return
  }
  
  Random, nRand, 0, 99
  
  if (nRand < 2)
  {
    MySendInput(", like,")
  }
  else if (nRand < 3)
  {
    MySendInput(", you know,")
  }
}
return

;------------------------------------------------------------------------------
; Wrapper for common outbursts.
;------------------------------------------------------------------------------
CommonOutbursts(nBackspace:=1)
{
  Random, nRand, 0, 99
  
  if (nRand < 20)
  {
    MySendInput(", like,", nBackspace)
  }
  else if (nRand < 30)
  {
    MySendInput(", you know,", nBackspace)
  }
  else if (nRand < 40)
  {
    MySendInput(" basically", nBackspace)
  }
  else if (nRand < 50)
  {
    MySendInput(" literally", nBackspace)
  }
  else if (nRand < 60)
  {
    MySendInput(" totally", nBackspace)
  }
}
return
