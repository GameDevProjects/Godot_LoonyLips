extends Node2D

func _ready():
	var promt = [5, "Martin", "Bulgarien", "Kind", "Wölfen", 2]
	var story = "Vor %s Jahren wanderte %s über eine Brücke mitten in %s. Unter dieser Brücke versteckte sich ein %s um sich vor %s zu verstecken es versteckte sich bereits %s Tage dort."
	print(story % promt)
