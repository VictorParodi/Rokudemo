sub main()
	screen = createObject("roSGScreen")
	scene = screen.createScene("home_scene")
	scene = screen.createScene("category_screen")
	screen.show()
	' vscode_rdb_on_device_component_entry
	port = createObject("roMessagePort")
	screen.setMessagePort(m.port)

	while(true)
		' Nothing here
	end while
end sub