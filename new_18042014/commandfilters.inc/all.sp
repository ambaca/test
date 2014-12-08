_commandfilters_included

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

native ProcessTargetString(const String:pattern[],
stock ReplyToTargetError(client, reason)
functag public bool:MultiTargetFilter(const String:pattern[], Handle:clients);
native AddMultiTargetFilter(const String:pattern[], MultiTargetFilter:filter,
native RemoveMultiTargetFilter(const String:pattern[], MultiTargetFilter:filter);

AddMultiTargetFilter
MultiTargetFilter
ProcessTargetString
RemoveMultiTargetFilter
ReplyToTargetError