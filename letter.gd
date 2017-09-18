extends Node2D

export var letter = 'a'
export var direction = 'a'

var anim
var letters_temp
var letter_label

func _ready():
	self.anim = self.get_node('anim')
	var r = rand_range(0, self.anim.get_current_animation_length())
	self.anim.seek(r)
	self.letter_label = self.get_node('sprite/label')
	write(self.letter)
	
func write(letter):
	self.letter_label.set_text(str(letter))

func new_letter(letters):
	var rand_letter = int(rand_range(0,letters.size()))
	self.letter = letters[rand_letter]
	write(self.letter)
	letters.remove(rand_letter)
	return letters