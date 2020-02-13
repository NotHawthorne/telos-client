extends TileMap


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var man = HyperNetManager.new()

func spawnUnit(id, hp, x, y, type):
	var unit = load("res://builder.tscn")
	var inst = unit.instance();
	print("spawning " + type)
	inst.id = id;
	inst.position = Vector2(int(x), int(y))
	get_parent().add_child(inst)
	pass
	
func updateUnit(id, x, y):
	print("updating unit " + id)
	for N in get_parent().get_children():
		if N.get("id"):
			if (N.id == id):
				N.position = Vector2(int(x), int(y))

# Called when the node enters the scene tree for the first time.
func _ready():
	var fr = funcref(self, 'spawnUnit')
	var _updateUnit = funcref(self, 'updateUnit')
	man.registerCallback("register_unit", fr)
	man.registerCallback("update_unit", _updateUnit)
	man.runScript("test.lua")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
