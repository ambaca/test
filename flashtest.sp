

public OnPluginStart()
{
/*
	"player_blind"
	{
		"userid"	"short"
	}
	"flashbang_detonate"
	{
		"userid"	"short"
		"entityid"	"short"
			"x"        "float"
			"y"        "float"
			"z"        "float"
	}
*/
	HookEventEx("player_blind", flashbang);
	HookEventEx("flashbang_detonate", flashbang);
	RegConsoleCmd("sm_test", test);
}

new Handle:ghdb;
public Action:test(client, args)
{
	new String:error[512];

	if(ghdb == INVALID_HANDLE)
	{
		ghdb = SQL_DefConnect(error, sizeof(error));

		if(ghdb == INVALID_HANDLE)
		{
			PrintToServer("%s", error);
			return Plugin_Handled;
		}
		else
			PrintToServer("connected");
	}
	else
	{
		CloseHandle(ghdb);
		ghdb = INVALID_HANDLE;
	}

	return Plugin_Handled;
}

public flashbang(Handle:event,const String:name[],bool:dontBroadcast)
{
	static blinds[MAXPLAYERS +1], counter = 0;

	if(StrEqual(name[7], "blind"))
	{
		blinds[counter++] = GetEventInt(event, "userid");
	}
	else
	{
		new client, flasher = GetClientOfUserId(GetEventInt(event, "userid"));

		for(new i = 0; i < counter; i++)
		{
			client = GetClientOfUserId(blinds[i]);
			PrintToServer("%s %N %f %f", name, client, GetEntPropFloat(client, Prop_Send, "m_flFlashDuration"), GetEntPropFloat(client, Prop_Send, "m_flFlashMaxAlpha"));
		}
		counter = 0;
	}
}