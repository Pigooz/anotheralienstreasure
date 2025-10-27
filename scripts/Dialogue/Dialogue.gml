function create_dialogue(_messages){
	if (instance_exists(oDialog)) return;
	
	var _inst = instance_create_depth(0, 0, 0, oDialog);
	_inst.messages = _messages;
	_inst.current_message = 0;
	
}

char_colors = {
	"Goober": c_yellow,
	"Bruh": c_aqua
}

welcome_dialog = [
{
	name:"Goober",
	msg: "Trash pickin time" 

},
{
	name:"Goober",
	msg: "Trash pickin time" 

},
{
	name: "Goober",
	msg: "Trash pickin time" 

},
{
	name: "Goober",
	msg: "Trash pickin time" 

}

]
cutscene_dialog_1 = [
{
	name:"Phone Thing",
	msg: "*ring ring*" 

},
{
	name:"Mission Control",
	msg: "Hello, hello~! Is this thing working?" 

}
]
cutscene_dialog_2 = [
{
	name:"Mission Control",
	msg: "Goober, hiii!! Congratulations on your first mission!" 

},
{
	name:"Goober",
	msg: ":D" 

},
{
	name:"Mission Control",
	msg: "Well, I'll try to keep this brief so you can go out and make us rich-I MEAN. Collect some awesome trash :)))" 

}
]
cutscene_dialog_3 = [
{
	name:"Mission Control",
	msg: "Today your target is the planet 'Earth'. There's tons of trash around, so you'll have plenty to gather." 

},
{
	name:"Goober",
	msg: "As you know, this stuff is waste material to the Earthlings, so us taking will be no problem for them. But, it'll be verrrry valuable for us back here. Its a win-win!" 

}
]
cutscene_dialog_4 = [
{
	name:"Mission Control",
	msg: "Remember to collect as much trash as you possibly can, kay?" 

},
{
	name:"Goober",
	msg: "So, yeah. Go forth." 

},
{
	name:"Goober",
	msg: ":D !" 

}
]