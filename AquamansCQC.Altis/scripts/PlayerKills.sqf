private["_victim","_killer"];

_victim = _this select 0;
_killer = _this select 1;

if (player == _killer) then
{
    PlayerKills = PlayerKills + 1;
    systemChat(PlayerKills);
};
