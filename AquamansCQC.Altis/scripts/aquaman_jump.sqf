if (!hasInterface) exitWith {};

SL_jumpBaseHeight = 1.8;
SL_jumpMaxHeight = 4.0;
SL_jumpBaseSpeed = 0.5;
SL_jumpAnimation = "AovrPercMrunSrasWrflDf";

"SL_fn_jumpOverAnim" addPublicVariableEventHandler {
 (_this select 1) spawn SL_fn_doAnim;
};

SL_fn_doAnim =
{
    params ["_unit","_velocity","_direction","_speed","_height","_anim"];
 _unit setVelocity [(_velocity select 0) + (sin _direction * _speed), (_velocity select 1) + (cos _direction * _speed), ((_velocity select 2) * _speed) + _height];
 _unit switchMove _anim;
};

SL_fn_jumpOver = {
 params ["_displayCode","_keyCode","_isShift","_isCtrl","_isAlt"];
 _handled = false;
 if ((_keyCode in actionKeys "GetOver" && _isShift) && (animationState player != SL_jumpAnimation)) then {
  private ["_height","_velocity","_direction","_speed"];
  if ((player == vehicle player) && (isTouchingGround player) && ((stance player == "STAND") || (stance player == "CROUCH"))) exitWith
  {
   _height = (SL_jumpBaseHeight - (load player)) max SL_jumpMaxHeight;
   _velocity = velocity player;
   _direction = direction player;
   _speed = SL_jumpBaseSpeed;
   player setVelocity [(_velocity select 0) + (sin _direction * _speed), (_velocity select 1) + (cos _direction * _speed), ((_velocity select 2) * _speed) + _height];
   SL_fn_jumpOverAnim = [player,_velocity,_direction,_speed,_height,SL_jumpAnimation];
   publicVariable "SL_fn_jumpOverAnim";
   if (currentWeapon player == "") then // half working buggy 'fix' for having no weapon in hands (no animation available for it... BIS!!)
   {
    player switchMove SL_jumpAnimation;
    player playMoveNow SL_jumpAnimation;
   }
   else
   {
    player switchMove SL_jumpAnimation;
   };
   _handled = true;
  };
 };
 _handled
};

waituntil {!(isNull (findDisplay 46))};
(findDisplay 46) displayAddEventHandler ["KeyDown", "_this call SL_fn_jumpOver;"];