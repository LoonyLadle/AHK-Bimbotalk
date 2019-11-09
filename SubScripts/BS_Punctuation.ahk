;------------------------------------------------------------------------------
; Randomly turns periods into questions, exclaimations, or tildes.
;------------------------------------------------------------------------------

#Hotstring B0
:?O:.::
{
	global PriorKeys
  
  ; Quit out early if it seems we're typing multiple periods, such as for an elipsis.
  if (PriorKeys[3].name = ".")
  {
    return
  }
  
  Random, nRand, 0, 99
  
  if (nRand < 10)
  {
    MySendInput("?")
  }
  else if (nRand < 30)
  {
    MySendInput("~")
  }
  else if (nRand < 40)
  {
    MySendInput("{!}")
  }
  else
  {
    MySendInput(".")
  }
}
return
