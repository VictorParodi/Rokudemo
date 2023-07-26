function init()
	? "Initializing home_scene"
	m.top.backgroundURI = ""
	m.top.backgroundColor = "#2196F3"

	m.category_component = m.top.findNode("category_screen")
	m.category_component.setFocus(true)
end function

function onKeyPress(key, press) as boolean
	? "Event: ", key, press
	return true
end function