
#include <sdktools>
#include <sdkhooks>

public OnPluginStart()
{
	HookEventEx("player_spawn", spawn);
	HookEventEx("player_death", spawn);
}

new list[MAXPLAYERS +1];

public spawn(Handle:event, const String:name[], bool:dontBroadcast)
{
	new client = GetClientOfUserId(GetEventInt(event, "userid"));

	if(StrContains(name, "death") != -1)
	{
		new ent = EntRefToEntIndex(list[client]);

		if(ent > MaxClients && IsValidEntity(ent))
		{
			DispatchKeyValue(ent, "OnUser1", "!self,Kill,,6.0,-1");
			AcceptEntityInput(ent, "FireUser1", client);
		}
		return;
	}

	CreateTimer(1.0, delay, client);
}

public Action:delay(Handle:timer, any:client)
{
	if(client == 0 || !IsPlayerAlive(client))
	{
		return;
	}

	new ent = CreateEntityByName("env_sprite_oriented");
	if(ent != -1)
	{

		list[client] = EntIndexToEntRef(ent);

		PrecacheDecal("decals/admin");
		new Float:origin[3], Float:ang[3];
		GetClientEyePosition(client, origin);
		GetClientEyeAngles(client, ang);

		origin[2] += 10.0
		TeleportEntity(ent, origin, ang, NULL_VECTOR);

		DispatchKeyValueVector(ent, "angles", ang);
		DispatchKeyValue(ent, "model", "decals/admin.vmt");
		DispatchKeyValue(ent, "spawnflags", "1");
		DispatchKeyValue(ent, "scale", "0.25");
		DispatchKeyValue(ent, "renderamt", "255");
		DispatchKeyValue(ent, "rendercolor", "255 255 255");
		DispatchKeyValue(ent, "rendermode", "2");

		SetVariantString("OnUser1 !self,SetParent,!activator,0.3,-1");
		AcceptEntityInput(ent, "AddOutput", ent);


		SetVariantString("OnUser1 !self,SetParentAttachmentMaintainOffset,primary,0.6,-1");
		AcceptEntityInput(ent, "AddOutput", ent);

		AcceptEntityInput(ent, "FireUser1", client);

		DispatchSpawn(ent);
		ActivateEntity(ent);
	}
}