extends Control

var MyHiddenText #Defining variable global so i could use in other functions

func _ready():
	var ChooseRandomOne = ["about", "above","abuse","adult","after"]
	randomize()
	var RandomNumber = randi() % 5 #Random number between 0 to 4
	MyHiddenText = ChooseRandomOne[RandomNumber]
	print(MyHiddenText) #Randomness Working!
	$HiddenWordToBoard/FirstLetter.text = "1" #Clearing Random Letter
	$HiddenWordToBoard/SecondLetter.text = "2"#Clearing Random Letter
	$HiddenWordToBoard/ThirdLetter.text = "3"#Clearing Random Letter
	$HiddenWordToBoard/FourthLetter.text = "4"#Clearing Random Letter
	$HiddenWordToBoard/FifthLetter.text = "5"#Clearing Random Letter


func _on_EnterHiddenWord_text_entered(new_text):
	if MyHiddenText == new_text: #If my entered text equal to random selected verb print win to debug
		print("You Win!")
		$HiddenWordToBoard/FirstLetter.text = MyHiddenText[0]
		$HiddenWordToBoard/SecondLetter.text = MyHiddenText[1]
		$HiddenWordToBoard/ThirdLetter.text = MyHiddenText[2]
		$HiddenWordToBoard/FourthLetter.text = MyHiddenText[3]
		$HiddenWordToBoard/FifthLetter.text = MyHiddenText[4]
		
	else:
		print("You Fail!")
		$LetterToGuessWord.clear()
		

func _on_LetterToGuessWord_text_changed(new_text):
	if new_text == MyHiddenText[0]:
		$HiddenWordToBoard/FirstLetter.text = MyHiddenText[0]

	elif new_text == MyHiddenText[1]:
		$HiddenWordToBoard/SecondLetter.text = MyHiddenText[1]

	elif new_text == MyHiddenText[2]:
		$HiddenWordToBoard/ThirdLetter.text = MyHiddenText[2]

	elif new_text == MyHiddenText[3]:
		$HiddenWordToBoard/FourthLetter.text = MyHiddenText[3]

	elif new_text == MyHiddenText[4]:
		$HiddenWordToBoard/FifthLetter.text = MyHiddenText[4]

	else:
		print("Wrong Letter")

