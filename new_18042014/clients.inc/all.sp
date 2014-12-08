_clients_included

NetFlow
NetFlow_Outgoing
NetFlow_Incoming
NetFlow_Both
MAXPLAYERS
MAX_NAME_LENGTH
MaxClients;

forward bool:OnClientConnect(client, String:rejectmsg[], maxlen);
forward OnClientConnected(client);
forward OnClientPutInServer(client);
forward OnClientDisconnect(client);
forward OnClientDisconnect_Post(client);
forward Action:OnClientCommand(client, args);
forward OnClientSettingsChanged(client);
forward OnClientAuthorized(client, const String:auth[]);
forward Action:OnClientPreAdminCheck(client);
forward OnClientPostAdminFilter(client);
forward OnClientPostAdminCheck(client);
native GetMaxClients();
native GetMaxHumanPlayers();
native GetClientCount(bool:inGameOnly=true);
native bool:GetClientName(client, String:name[], maxlen);
native bool:GetClientIP(client, String:ip[], maxlen, bool:remport=true);
native bool:GetClientAuthString(client, String:auth[], maxlen, bool:validate=true);
native GetSteamAccountID(client, bool:validate=true);
native GetClientUserId(client);
native bool:IsClientConnected(client);
native bool:IsClientInGame(client);
native bool:IsClientInKickQueue(client);
stock bool:IsPlayerInGame(client)
native bool:IsClientAuthorized(client);
native bool:IsFakeClient(client);
native bool:IsClientSourceTV(client);
native bool:IsClientReplay(client);
native bool:IsClientObserver(client);
native bool:IsPlayerAlive(client);
native bool:GetClientInfo(client, const String:key[], String:value[], maxlen);
native GetClientTeam(client);
native SetUserAdmin(client, AdminId:id, bool:temp=false);
native AdminId:GetUserAdmin(client);
native AddUserFlags(client, AdminFlag:...);
native RemoveUserFlags(client, AdminFlag:...);
native SetUserFlagBits(client, flags);
native GetUserFlagBits(client);
native bool:CanUserTarget(client, target);
native bool:RunAdminCacheChecks(client);
native NotifyPostAdminCheck(client);
native CreateFakeClient(const String:name[]);
native SetFakeClientConVar(client, const String:cvar[], const String:value[]);
native GetClientHealth(client);
native GetClientModel(client, String:model[], maxlen);
native GetClientWeapon(client, String:weapon[], maxlen);
native GetClientMaxs(client, Float:vec[3]);
native GetClientMins(client, Float:vec[3]);
native GetClientAbsAngles(client, Float:ang[3]);
native GetClientAbsOrigin(client, Float:vec[3]);
native GetClientArmor(client);
native GetClientDeaths(client);
native GetClientFrags(client);
native GetClientDataRate(client);
native bool:IsClientTimingOut(client);
native Float:GetClientTime(client);
native Float:GetClientLatency(client, NetFlow:flow);
native Float:GetClientAvgLatency(client, NetFlow:flow);
native Float:GetClientAvgLoss(client, NetFlow:flow);
native Float:GetClientAvgChoke(client, NetFlow:flow);
native Float:GetClientAvgData(client, NetFlow:flow);
native Float:GetClientAvgPackets(client, NetFlow:flow);
native GetClientOfUserId(userid);
native KickClient(client, const String:format[]="", any:...);
native KickClientEx(client, const String:format[]="", any:...);
native ChangeClientTeam(client, team);
native GetClientSerial(client);
native GetClientFromSerial(serial);


AddUserFlags
CanUserTarget
ChangeClientTeam
CreateFakeClient
GetClientAbsAngles
GetClientAbsOrigin
GetClientArmor
GetClientAuthString
GetClientAvgChoke
GetClientAvgData
GetClientAvgLatency
GetClientAvgLoss
GetClientAvgPackets
GetClientCount
GetClientDataRate
GetClientDeaths
GetClientFrags
GetClientFromSerial
GetClientHealth
GetClientIP
GetClientInfo
GetClientLatency
GetClientMaxs
GetClientMins
GetClientModel
GetClientName
GetClientOfUserId
GetClientSerial
GetClientTeam
GetClientTime
GetClientUserId
GetClientWeapon
GetMaxClients
GetMaxHumanPlayers
GetSteamAccountID
GetUserAdmin
GetUserFlagBits
IsClientAuthorized
IsClientConnected
IsClientInGame
IsClientInKickQueue
IsClientObserver
IsClientReplay
IsClientSourceTV
IsClientTimingOut
IsFakeClient
IsPlayerAlive
IsPlayerInGame
KickClient
KickClientEx
NotifyPostAdminCheck
OnClientAuthorized
OnClientCommand
OnClientConnect
OnClientConnected
OnClientDisconnect
OnClientDisconnect_Post
OnClientPostAdminCheck
OnClientPostAdminFilter
OnClientPreAdminCheck
OnClientPutInServer
OnClientSettingsChanged
RemoveUserFlags
RunAdminCacheChecks
SetFakeClientConVar
SetUserAdmin
SetUserFlagBits
