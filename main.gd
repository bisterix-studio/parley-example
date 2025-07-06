extends Node

var dialogue_sequence_ast: ParleyDialogueSequenceAst = preload('res://dialogue_sequences/dialogue.ds')

func _ready() -> void:
	var _result: Node = Parley.start_dialogue({}, dialogue_sequence_ast)
