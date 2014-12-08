defines:
_console_included
COMMAND_FILTER_ALIVE
COMMAND_FILTER_CONNECTED
COMMAND_FILTER_DEAD
COMMAND_FILTER_NO_BOTS
COMMAND_FILTER_NO_IMMUNITY
COMMAND_FILTER_NO_MULTI
COMMAND_TARGET_AMBIGUOUS
COMMAND_TARGET_EMPTY_FILTER
COMMAND_TARGET_IMMUNE
COMMAND_TARGET_NONE
COMMAND_TARGET_NOT_ALIVE
COMMAND_TARGET_NOT_DEAD
COMMAND_TARGET_NOT_HUMAN
COMMAND_TARGET_NOT_IN_GAME
MAX_TARGET_LENGTH


enums:
ConVarBounds
ConVarQueryResult
QueryCookie
ReplySource




enum values:
ConVarBound_Lower
ConVarBound_Upper
ConVarQuery_NotFound
ConVarQuery_NotValid
ConVarQuery_Okay
ConVarQuery_Protected
QUERYCOOKIE_FAILED
SM_REPLY_TO_CHAT
SM_REPLY_TO_CONSOLE



 native ServerCommand(const String:format[], any:...);
 native ServerCommandEx(String:buffer[], maxlen, const String:format[], any:...);
 native InsertServerCommand(const String:format[], any:...);
 native ServerExecute();
 native ClientCommand(client, const String:fmt[], any:...);
 native FakeClientCommand(client, const String:fmt[], any:...);
 native FakeClientCommandEx(client, const String:fmt[], any:...);
 native PrintToServer(const String:format[], any:...);
 native PrintToConsole(client, const String:format[], any:...);
 native ReplyToCommand(client, const String:format[], any:...);
 native ReplySource:GetCmdReplySource();
 native ReplySource:SetCmdReplySource(ReplySource:source);
 native bool:IsChatTrigger();
 native ShowActivity2(client, const String:tag[], const String:format[], any:...);
 native ShowActivity(client, const String:format[], any:...);
 native ShowActivityEx(client, const String:tag[], const String:format[], any:...);
 native FormatActivitySource(client, target, const String:namebuf[], maxlength);
 functag public Action:SrvCmd(args);
 native RegServerCmd(const String:cmd[], SrvCmd:callback, const String:description[]="", flags=0);
 functag public Action:ConCmd(client, args);
 native RegConsoleCmd(const String:cmd[], ConCmd:callback, const String:description[]="", flags=0);
 native RegAdminCmd(const String:cmd[],
 native GetCmdArgs();
 native GetCmdArg(argnum, String:buffer[], maxlength);
 native GetCmdArgString(String:buffer[], maxlength);
 native Handle:CreateConVar(const String:name[], const String:defaultValue[], const String:description[]="", flags=0, bool:hasMin=false, Float:min=0.0, bool:hasMax=false, Float:max=0.0);
 native Handle:FindConVar(const String:name[]);
 functag public ConVarChanged(Handle:convar, const String:oldValue[], const String:newValue[]);
 native HookConVarChange(Handle:convar, ConVarChanged:callback);
 native UnhookConVarChange(Handle:convar, ConVarChanged:callback);
 native bool:GetConVarBool(Handle:convar);
 native SetConVarBool(Handle:convar, bool:value, bool:replicate=false, bool:notify=false);
 native GetConVarInt(Handle:convar);
 native SetConVarInt(Handle:convar, value, bool:replicate=false, bool:notify=false);
 native Float:GetConVarFloat(Handle:convar);
 native SetConVarFloat(Handle:convar, Float:value, bool:replicate=false, bool:notify=false);
 native GetConVarString(Handle:convar, String:value[], maxlength);
 native SetConVarString(Handle:convar, const String:value[], bool:replicate=false, bool:notify=false);
 native ResetConVar(Handle:convar, bool:replicate=false, bool:notify=false);
 native GetConVarDefault(Handle:convar, String:value[], maxlength);
 native GetConVarFlags(Handle:convar);
 native SetConVarFlags(Handle:convar, flags);
 native bool:GetConVarBounds(Handle:convar, ConVarBounds:type, &Float:value);
 native SetConVarBounds(Handle:convar, ConVarBounds:type, bool:set, Float:value=0.0);
 native GetConVarName(Handle:convar, String:name[], maxlength);
 native QueryCookie:QueryClientConVar(client, const String:cvarName[], ConVarQueryFinished:callback, any:value=0);
 native Handle:GetCommandIterator();
 native bool:ReadCommandIterator(Handle:iter, 
 native bool:CheckCommandAccess(client, 
 native bool:CheckAccess(AdminId:id, 
 stock bool:IsValidConVarChar(c)
 native GetCommandFlags(const String:name[]);
 native bool:SetCommandFlags(const String:name[], flags);
 native Handle:FindFirstConCommand(String:buffer[], max_size, &bool:isCommand, &flags=0, String:description[]="", descrmax_size=0);
 native bool:FindNextConCommand(Handle:search, String:buffer[], max_size, &bool:isCommand, &flags=0, String:description[]="", descrmax_size=0);
 native bool:SendConVarValue(client, Handle:convar, const String:value[]);
 native AddServerTag(const String:tag[]);
 native RemoveServerTag(const String:tag[]);
 functag public Action:CommandListener(client, const String:command[], argc);
 native bool:AddCommandListener(CommandListener:callback, const String:command[]="");
 native RemoveCommandListener(CommandListener:callback, const String:command[]="");
 forward Action:OnClientSayCommand(client, const String:command[], const String:sArgs[]);
 forward OnClientSayCommand_Post(client, const String:command[], const String:sArgs[]);
 
 
 
AddCommandListener
AddServerTag
CheckAccess
CheckCommandAccess
ClientCommand
CommandListener
ConCmd
ConVarChanged
CreateConVar
FakeClientCommand
FakeClientCommandEx
FindConVar
FindFirstConCommand
FindNextConCommand
FormatActivitySource
GetCmdArg
GetCmdArgString
GetCmdArgs
GetCmdReplySource
GetCommandFlags
GetCommandIterator
GetConVarBool
GetConVarBounds
GetConVarDefault
GetConVarFlags
GetConVarFloat
GetConVarInt
GetConVarName
GetConVarString
HookConVarChange
InsertServerCommand
IsChatTrigger
IsValidConVarChar
OnClientSayCommand
OnClientSayCommand_Post
PrintToConsole
PrintToServer
QueryClientConVar
ReadCommandIterator
RegAdminCmd
RegConsoleCmd
RegServerCmd
RemoveCommandListener
RemoveServerTag
ReplyToCommand
ResetConVar
SendConVarValue
ServerCommand
ServerCommandEx
ServerExecute
SetCmdReplySource
SetCommandFlags
SetConVarBool
SetConVarBounds
SetConVarFlags
SetConVarFloat
SetConVarInt
SetConVarString
ShowActivity
ShowActivity2
ShowActivityEx
SrvCmd
UnhookConVarChange