defines:

_admin_included
AdminFlags_TOTAL
ADMFLAG_RESERVATION
ADMFLAG_GENERIC
ADMFLAG_KICK
ADMFLAG_BAN
ADMFLAG_UNBAN
ADMFLAG_SLAY
ADMFLAG_CHANGEMAP
ADMFLAG_CONVARS
ADMFLAG_CONFIG
ADMFLAG_CHAT
ADMFLAG_VOTE
ADMFLAG_PASSWORD
ADMFLAG_RCON
ADMFLAG_CHEATS
ADMFLAG_ROOT
ADMFLAG_CUSTOM1
ADMFLAG_CUSTOM2
ADMFLAG_CUSTOM3
ADMFLAG_CUSTOM4
ADMFLAG_CUSTOM5
ADMFLAG_CUSTOM6
AUTHMETHOD_STEAM
AUTHMETHOD_IP
AUTHMETHOD_NAME

enums:

AdminFlag
OverrideType
OverrideRule
ImmunityType
GroupId
AdminId
AdmAccessMode
AdminCachePart

enum values:

Admin_Reservation
Admin_Generic
Admin_Kick
Admin_Ban
Admin_Unban
Admin_Slay
Admin_Changemap
Admin_Convars
Admin_Config
Admin_Chat
Admin_Vote
Admin_Password
Admin_RCON
Admin_Cheats
Admin_Root
Admin_Custom1
Admin_Custom2
Admin_Custom3
Admin_Custom4
Admin_Custom5
Admin_Custom6
Override_Command
Override_CommandGroup
Command_Deny
Command_Allow
Immunity_Default
Immunity_Global
INVALID_GROUP_ID
INVALID_ADMIN_ID
Access_Real
Access_Effective
AdminCache_Overrides
AdminCache_Groups
AdminCache_Admins

natives:

AddAdmGroupCmdOverride(GroupId:id, const String:name[], OverrideType:type, OverrideRule:rule);
AddCommandOverride(const String:cmd[], OverrideType:type, flags);
AdminId:CreateAdmin(const String:name[]="");
AdminId:FindAdminByIdentity(const String:auth[], const String:identity[]);
CanAdminTarget(AdminId:admin, AdminId:target);
DumpAdminCache(AdminCachePart:part, bool:rebuild);
FlagArrayToBits(const AdminFlag:array[], numFlags);
FlagBitArrayToBits(const bool:array[], maxSize);
FlagBitsToArray(bits, AdminFlag:array[], maxSize);
FlagBitsToBitArray(bits, bool:array[], maxSize);
GetAdmGroupAddFlags(GroupId:id);
GetAdmGroupImmuneCount(GroupId:id);
GetAdmGroupImmunityLevel(GroupId:gid);
GetAdminFlags(AdminId:id, AdmAccessMode:mode);
GetAdminGroupCount(AdminId:id);
GetAdminImmunityLevel(AdminId:id);
GetAdminUsername(AdminId:id, String:name[], maxlength);
GroupId:CreateAdmGroup(const String:group_name[]);
GroupId:FindAdmGroup(const String:group_name[]);
GroupId:GetAdmGroupImmuneFrom(GroupId:id, number); 
GroupId:GetAdminGroup(AdminId:id, index, const String:name[], maxlength);
ReadFlagString(const String:flags[], &numchars=0);
RegisterAuthIdentType(const String:name[]);
SetAdmGroupAddFlag(GroupId:id, AdminFlag:flag, bool:enabled);
SetAdmGroupImmuneFrom(GroupId:id, GroupId:other_id);
//SetAdmGroupImmunity(GroupId:id, ImmunityType:type, bool:enabled);
SetAdmGroupImmunityLevel(GroupId:gid, level);
SetAdminFlag(AdminId:id, AdminFlag:flag, bool:enabled);
SetAdminImmunityLevel(AdminId:id, level);
SetAdminPassword(AdminId:id, const String:password[]);
UnsetCommandOverride(const String:cmd[], OverrideType:type);
bool:AdminInheritGroup(AdminId:id, GroupId:gid);
bool:BindAdminIdentity(AdminId:id, const String:auth[], const String:ident[]);
bool:CreateAuthMethod(const String:method[]);
bool:FindFlagByChar(c, &AdminFlag:flag);
bool:FindFlagByName(const String:name[], &AdminFlag:flag);
bool:FindFlagChar(AdminFlag:flag, &c);
bool:GetAdmGroupAddFlag(GroupId:id, AdminFlag:flag);
bool:GetAdmGroupCmdOverride(GroupId:id, const String:name[], OverrideType:type, &OverrideRule:rule);
//bool:GetAdmGroupImmunity(GroupId:id, ImmunityType:type);
bool:GetAdminFlag(AdminId:id, AdminFlag:flag, AdmAccessMode:mode=Access_Effective);
bool:GetAdminPassword(AdminId:id, String:buffer[]="", maxlength=0);
bool:GetCommandOverride(const String:cmd[], OverrideType:type, &flags);
bool:RemoveAdmin(AdminId:id);

stocks:

FlagToBit(AdminFlag:flag)
bool:BitToFlag(bit, &AdminFlag:flag)