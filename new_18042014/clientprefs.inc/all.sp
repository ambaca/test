_clientprefs_included

CookieAccess
CookieMenu
CookieMenuAction

CookieAccess_Private
CookieAccess_Protected
CookieAccess_Public
CookieMenuAction_DisplayOption
CookieMenuAction_SelectOption
CookieMenu_OnOff
CookieMenu_OnOff_Int
CookieMenu_YesNo
CookieMenu_YesNo_Int

public CookieMenuHandler(client, CookieMenuAction:action, any:info, String:buffer[], maxlen);
Handle:RegClientCookie(const String:name[], const String:description[], CookieAccess:access);
Handle:FindClientCookie(const String:name[]);
SetClientCookie(client, Handle:cookie, const String:value[]);
GetClientCookie(client, Handle:cookie, String:buffer[], maxlen);
SetAuthIdCookie(const String:authID[], Handle:cookie, const String:value[]);
bool:AreClientCookiesCached(client);
OnClientCookiesCached(client);
SetCookiePrefabMenu(Handle:cookie, CookieMenu:type, const String:display[], CookieMenuHandler:handler=CookieMenuHandler:-1, info=0);
SetCookieMenuItem(CookieMenuHandler:handler, any:info, const String:display[]);
ShowCookieMenu(client);
Handle:GetCookieIterator();
bool:ReadCookieIterator(Handle:iter, 
CookieAccess:GetCookieAccess(Handle:cookie);
GetClientCookieTime(client, Handle:cookie);

AreClientCookiesCached
CookieMenuHandler
FindClientCookie
GetClientCookie
GetClientCookieTime
GetCookieAccess
GetCookieIterator
OnClientCookiesCached
ReadCookieIterator
RegClientCookie
SetAuthIdCookie
SetClientCookie
SetCookieMenuItem
SetCookiePrefabMenu
ShowCookieMenu