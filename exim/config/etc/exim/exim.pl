sub randinet {
@inet = ("5.134.119.115", "185.47.131.35", "185.47.131.36", "185.47.131.37", "185.47.131.38", "185.47.131.39", "185.47.131.41", "185.47.131.42", "185.47.131.43", "185.47.131.44", 
"185.47.131.45", "185.47.131.46", "185.47.131.47", "185.47.131.49", "185.47.131.48", "185.47.131.128");
return $inet[int rand($#inet+1)];
}


