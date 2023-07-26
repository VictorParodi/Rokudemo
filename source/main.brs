sub main()
	screen = createObject("roSGScreen")
	scene = screen.createScene("home_scene")
	new_scene = screen.createScene("new_scene")
	screen.show()
	port = createObject("roMessagePort")
	screen.setMessagePort(m.port)

	while(true)
		' Nothing here
	end while

	' vscode_rdb_on_device_component_entry
end sub