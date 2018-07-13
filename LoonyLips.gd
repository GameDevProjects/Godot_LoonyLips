extends Node2D
var player_words = []
var promt = ["eine Zahl", "eine Nummer", "ein Land", "ein Lebewesen", "weiter Lebewesen(mehrzahl)", "eine Zahl"]
var story = "Vor %s Jahren wanderte %s über eine Brücke mitten in %s. Unter dieser Brücke schlief ein %s um sich vor %s zu verstecken, versteckte sich bereits %s Tage dort."

func _ready():
	$BlackBoard/TextBox.text = ""
	promt_player()

func _on_TextBox_text_entered(new_text):
	player_words.append(new_text)
	$BlackBoard/TextBox.text = ""
	promt_player()


func _on_TextureButton_pressed():
	var new_text = $BlackBoard/TextBox.text
	_on_TextBox_text_entered(new_text)
	
func promt_player():
	$BlackBoard/StoryText.text = ("Bitte gib mir " + promt[player_words.size()] + "!")
