extends Spatial

export(Resource) var _dialogue = _dialogue as Dialogue
export(Resource) var _dialogue_correct = _dialogue_correct as Dialogue
export(Resource) var _dialogue_incorrect = _dialogue_incorrect as Dialogue

export(NodePath) onready var _correct_food = get_node(_correct_food) as Food


func _on_DialogTrigger_body_entered(body):
	Signals.emit_dialog_initiated(_dialogue)


func food_chosen(food: Food):
	if food == _correct_food:
		Signals.emit_dialog_initiated(_dialogue_correct)
	else:
		Signals.emit_dialog_initiated(_dialogue_incorrect)

