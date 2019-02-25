/* 
* @Author:  DnA
* @Profile: http://steamcommunity.com/id/dna_uk
* @Date:    2014-04-24 09:20:06
* @Last Modified by:   DnA
* @Last Modified time: 2014-05-19 11:18:46
*/
 
private [ "_title", "_text", "_titleColor" ];

_title = [ _this, 0, "Hint", [""] ] call BIS_fnc_param;
_text = [ _this, 1, "", [""] ] call BIS_fnc_param;
_titleColor = [ ( profileNamespace getVariable [ "GUI_BCG_RGB_R", 0.69 ] ), ( profileNamespace getVariable [ "GUI_BCG_RGB_G", 0.69 ] ), ( profileNamespace getVariable [ "GUI_BCG_RGB_B", 0.69 ] ), 1 ];

hint parseText format [ "<t align='center' color='%1' shadow='1' size='1.2'>%2</t><br /><t size='1.0'>%3</t>", ( _titleColor call BIS_fnc_colorRGBtoHTML ), _title, _text ];

true