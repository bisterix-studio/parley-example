extends Node

const basic_dialogue: ParleyDialogueSequenceAst = preload("res://dialogue_sequences/my_dialogue.ds")

func _ready() -> void:
  # Trigger the start of the Dialogue Sequence processing using the Parley autoload
	var _result: Node = Parley.start_dialogue({}, basic_dialogue)
