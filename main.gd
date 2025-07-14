extends Node

const basic_dialogue: ParleyDialogueSequenceAst = preload("res://dialogue_sequences/my_dialogue.ds")


var ctx: ParleyContext


func _ready() -> void:
	# Trigger the start of the Dialogue Sequence processing using the Parley autoload
	ctx = ParleyContext.create(basic_dialogue)
	var _result: Node = Parley.run_dialogue(ctx, basic_dialogue)


func _exit_tree() -> void:
	# Ensure ctx is fully cleaned up
	if ctx:
		ctx.free()
