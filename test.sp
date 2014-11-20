

public OnPluginStart()
{
/*
	"flashbang_detonate"
	{
		"userid"	"short"
		"entityid"	"short"
			"x"        "float"
			"y"        "float"
			"z"        "float"
	}
	"player_blind"
	{
		"userid"	"short"
	}
*/
	//HookUserMessage(GetUserMessageId("Fade"), Fade, true);

	HookEventEx("flashbang_detonate", flashbang);
	HookEventEx("player_blind", flashbang);
}

public flashbang(Handle:event,const String:name[],bool:dontBroadcast)
{
	new client = GetClientOfUserId(GetEventInt(event, "userid"));
	PrintToServer("%s %N %f %f", name, client, GetEntPropFloat(client, Prop_Send, "m_flFlashDuration"), GetEntPropFloat(client, Prop_Send, "m_flFlashMaxAlpha"));
}

public Action:Fade(UserMsg:msg_id, Handle:bf, players[], playersNum, bool:reliable, bool:init)
{
	if(!reliable)
	{
		return Plugin_Continue;
	}


	if(GetUserMessageType() == UM_Protobuf) // CSGO
	{
		new clr[4];
		PbReadColor(bf, "clr", clr);
		PrintToServer("du %i ho %i fa %i clr %i %i %i %i", PbReadInt(bf, "duration"), PbReadInt(bf, "hold_time"), PbReadInt(bf, "flags"), clr[0], clr[1], clr[2], clr[3])

	   //if(StrEqual(buffer, "#Cstrike_Name_Change"))
	   //{
	   //    return Plugin_Handled;
	   //}
	}
	return Plugin_Continue;
}

