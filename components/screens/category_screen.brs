function init()
	m.category_list = m.top.findNode("category_list")
	m.category_list.setFocus(true)
	m.category_list.observeField("itemSelected", "onCategorySelected")
end function

sub onCategorySelected(obj)
	? "Field: ", obj.getField()
	? "Data: ", obj.getData()
	? "Item: ", m.category_list.checkedItem
	? "Node: ", m.category_list.content.getChild(obj.getData())
end sub