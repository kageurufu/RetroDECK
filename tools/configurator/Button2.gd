extends Button

func _ready():
	self.pressed.connect(self._button_pressed)

func _button_pressed():
	var output := [] #[] is shared, Array isn't (maybe fixed in 4.1)
	var exit_code := OS.execute("bash", ["touch_external.sh"], output)
	print("exit code: ", exit_code)
	print("output: ", output)
