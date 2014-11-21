
new Handle:g_hDatabase;
new Handle:g_hStatement;
new Handle:OnlineTimer;
new Handle:cvar;

public OnPluginStart()
{
	cvar = CreateConVar("sm_membersonly_kick_msg", "Members only!", "Kick message for non-members", FCVAR_PLUGIN);
}

public OnClientPostAdminCheck(client)
{
	// skip bots and admins who ahve access to admin menu
	if(IsFakeClient(client) || CheckCommandAccess(client, "sm_admin", ADMFLAG_GENERIC))
	{
		return;
	}

	// Mysql connection has closed at this moment, re-connect
	if(g_hDatabase == INVALID_HANDLE)
	{
		new String:error[512];
		g_hDatabase = SQL_Connect("members only", true, error, sizeof(error));

		// Error to connect
		if(g_hDatabase == INVALID_HANDLE)
		{
			SetFailState("SQL_Connect fail: %s", error);
		}
	}

	// Reset timer
	if(OnlineTimer != INVALID_HANDLE)
	{
		KillTimer(OnlineTimer);
		OnlineTimer = INVALID_HANDLE;
	}

	OnlineTimer = CreateTimer(20.0, OnlineTimer_callback, g_hDatabase);

	if(g_hStatement == INVALID_HANDLE)
	{
		new String:error[512];
		g_hStatement = SQL_PrepareQuery(g_hDatabase, "SELECT steamid FROM members_only WHERE steamid LIKE ?", error, sizeof(error));

		if(g_hStatement == INVALID_HANDLE)
		{
			LogError("SQL_PrepareQuery fail: %s", error);
			return;
		}
	}

	new String:auth[19];
	GetClientAuthString(client, auth, sizeof(auth));
	Format(auth, sizeof(auth), "%c%s", '%', auth[8]);

	SQL_BindParamString(g_hStatement, 0, auth, true);

	if(!SQL_Execute(g_hStatement))
	{
		LogError("SQL_Execute fail");
		return;
	}

	if(!SQL_GetRowCount(g_hStatement))
	{
		new String:msg[256];
		GetConVarString(cvar, msg, sizeof(msg));
		KickClient(client, " \n %s \n ", msg);
	}
}


public Action:OnlineTimer_callback(Handle:timer, Handle:db)
{
	OnlineTimer = INVALID_HANDLE;

	if(!SQL_IsSameConnection(g_hDatabase, db))
	{
		LogError("Different database connections has happen!!! Note for Dev");
	}

	if(g_hStatement != INVALID_HANDLE)
	{
		CloseHandle(g_hStatement);
		g_hStatement = INVALID_HANDLE;
	}

	if(g_hDatabase != INVALID_HANDLE)
	{
		CloseHandle(g_hDatabase);
		g_hDatabase = INVALID_HANDLE;
	}

	return Plugin_Continue;
}