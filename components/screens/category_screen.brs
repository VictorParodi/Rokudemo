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
	item = m.category_list.content.getChild(obj.getData())
	? "Feed --> : ", item.feed_url
	loadFeed(item.feed_url)
end sub

function loadFeed(url)
	m.feed_task = createObject("roSGNode", "load_feed_task")
	m.feed_task.observeField("response", "onFeedResponse")
	m.feed_task.url = url
	m.feed_task.control = "RUN"
end function

sub onFeedResponse(obj)
	? "Feed response: " obj.getData()
end sub