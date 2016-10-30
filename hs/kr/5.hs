data Person = Actor String Integer Double| Rezh String Integer 


helpCheck (Actor _ _ rost) = if (rost >= 180 && rost<=190) then True else False
helpCheck (Rezh _ _) = False


checkPeople [] = False
checkPeople (x:xs) = helpCheck x || checkPeople xs

test = checkPeople [Actor "Petya" 1996 191, Rezh "Vasya" 5, Rezh "Misha" 1, Actor "Kolya" 1998 180]