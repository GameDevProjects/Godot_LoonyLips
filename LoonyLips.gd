extends Node2D

func _ready():
	var promt = [5, "Martin", "Bulgarien", "Kind", "Wölfen", 2]
	var story = "Vor %s Jahren wanderte %s über eine Brücke mitten in %s. Unter dieser Brücke versteckte sich ein %s um sich vor %s zu verstecken, versteckte sich bereits %s Tage dort."
	$BlackBoard/StoryText.text = (story % promt)

func _on_TextBox_text_entered(new_text):
	$BlackBoard/StoryText.text = new_text
	$BlackBoard/TextBox.text = ""


func _on_TextureButton_pressed():
	var new_text = $BlackBoard/TextBox.text
	_on_TextBox_text_entered(new_text)