defines:

_adminmenu_included
ADMINMENU_PLAYERCOMMANDS
ADMINMENU_SERVERCOMMANDS
ADMINMENU_VOTINGCOMMANDS


Handle:GetAdminTopMenu();
AddTargetsToMenu(Handle:menu, 
AddTargetsToMenu2(Handle:menu, source_client, flags);
bool:RedisplayAdminMenu(Handle:topmenu, client)
OnAdminMenuCreated(Handle:topmenu);
OnAdminMenuReady(Handle:topmenu);


AddTargetsToMenu
AddTargetsToMenu2
GetAdminTopMenu
OnAdminMenuCreated
OnAdminMenuReady
RedisplayAdminMenu