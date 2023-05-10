sunrise_bot <- function() {

  print("Welcome to sunrise music")
  print("What is your name? : ")
  name <- readLines("stdin", 1)
  print(paste("Hi!","Nice to meet you",name))

  while(TRUE) {
    print("What kind of music do you like?")
    print("Pop rock, Dream pop, Indie pop") 
    type <- readLines("stdin", 1)
  
    if (type == "Pop rock") {
    print(paste("So cool!", name, "I recommended to The 1975 band from England"))
    print("Hope you like this!")
    break
  } else if (type == "Dream pop") {
    print(paste("Nice!", name, "I recommended to Anatomy Rabbit band from Thailand"))
    print("Hope you enjoy!")
    break
  } 
    else {
    print(paste("Yeah!", name, "I recommended to Wave to earth band from Korea"))
    print("Hope you enjoy!")
    break
  } 
}
   
    print("Do you want to listen another playlist on sunrise music? [Y] or [N]")
    listen = readLines("stdin", 1)
   
      
  while(TRUE) {
    if (listen == "N"){
    print("Thank you for coming to playlist")
    print("See you next time ^_^ ")
    break
  }
  
   if (listen == "Y") {
    print("Please choose playlist for number ")
    print("[1] : KPOP Top Hits")
    print("[2] : Thai Y2K")
    print("[3] : อยู่อย่างเหงาๆ ")
    listen = as.numeric(readLines("stdin", 1))
  { 
    print("Yeah! Let's go to the playlist")
    {
    print("Have fun and relax with me")
   }
    print("Thank you for your using")
    break
    }
  } 
}  
}
sunrise_bot()

