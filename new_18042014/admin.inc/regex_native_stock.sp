Searching 1 file for "^\s*native|^\s*stock" (regex, whole word)

E:\notepad++ sourcemod\include\admin.inc:
  185: native DumpAdminCache(AdminCachePart:part, bool:rebuild);
  196: native AddCommandOverride(const String:cmd[], OverrideType:type, flags);
  206: native bool:GetCommandOverride(const String:cmd[], OverrideType:type, &flags);
  215: native UnsetCommandOverride(const String:cmd[], OverrideType:type);
  223: native GroupId:CreateAdmGroup(const String:group_name[]);
  231: native GroupId:FindAdmGroup(const String:group_name[]);
  242: native SetAdmGroupAddFlag(GroupId:id, AdminFlag:flag, bool:enabled);
  252: native bool:GetAdmGroupAddFlag(GroupId:id, AdminFlag:flag);
  261: native GetAdmGroupAddFlags(GroupId:id);
  267: native SetAdmGroupImmunity(GroupId:id, ImmunityType:type, bool:enabled);
  273: native bool:GetAdmGroupImmunity(GroupId:id, ImmunityType:type);
  282: native SetAdmGroupImmuneFrom(GroupId:id, GroupId:other_id);
  290: native GetAdmGroupImmuneCount(GroupId:id);
  299: native GroupId:GetAdmGroupImmuneFrom(GroupId:id, number); 
  310: native AddAdmGroupCmdOverride(GroupId:id, const String:name[], OverrideType:type, OverrideRule:rule);
  321: native bool:GetAdmGroupCmdOverride(GroupId:id, const String:name[], OverrideType:type, &OverrideRule:rule);
  330: native RegisterAuthIdentType(const String:name[]);
  338: native AdminId:CreateAdmin(const String:name[]="");
  350: native GetAdminUsername(AdminId:id, String:name[], maxlength);
  361: native bool:BindAdminIdentity(AdminId:id, const String:auth[], const String:ident[]);
  371: native SetAdminFlag(AdminId:id, AdminFlag:flag, bool:enabled);
  381: native bool:GetAdminFlag(AdminId:id, AdminFlag:flag, AdmAccessMode:mode=Access_Effective);
  390: native GetAdminFlags(AdminId:id, AdmAccessMode:mode);
  400: native bool:AdminInheritGroup(AdminId:id, GroupId:gid);
  408: native GetAdminGroupCount(AdminId:id);
  422: native GroupId:GetAdminGroup(AdminId:id, index, const String:name[], maxlength);
  431: native SetAdminPassword(AdminId:id, const String:password[]);
  442: native bool:GetAdminPassword(AdminId:id, String:buffer[]="", maxlength=0);
  451: native AdminId:FindAdminByIdentity(const String:auth[], const String:identity[]);
  461: native bool:RemoveAdmin(AdminId:id);
  471: native FlagBitsToBitArray(bits, bool:array[], maxSize);
  480: native FlagBitArrayToBits(const bool:array[], maxSize);
  489: native FlagArrayToBits(const AdminFlag:array[], numFlags);
  499: native FlagBitsToArray(bits, AdminFlag:array[], maxSize);
  508: native bool:FindFlagByName(const String:name[], &AdminFlag:flag);
  517: native bool:FindFlagByChar(c, &AdminFlag:flag);
  526: native bool:FindFlagChar(AdminFlag:flag, &c);
  535: native ReadFlagString(const String:flags[], &numchars=0);
  556: native CanAdminTarget(AdminId:admin, AdminId:target);
  565: native bool:CreateAuthMethod(const String:method[]);
  574: native SetAdmGroupImmunityLevel(GroupId:gid, level);
  582: native GetAdmGroupImmunityLevel(GroupId:gid);
  591: native SetAdminImmunityLevel(AdminId:id, level);
  599: native GetAdminImmunityLevel(AdminId:id);
  607: stock FlagToBit(AdminFlag:flag)
  619: stock bool:BitToFlag(bit, &AdminFlag:flag)

46 matches in 1 file
