private["_display","_text","_units","_type","_bankMoney","_playerMoney"];

disableSerialization;

_handle = createDialog "ATM_management";
_display = findDisplay 2700;
_text = _display displayCtrl 2701;
_units = _display displayCtrl 2703;
_bankMoney = player getVariable ["bmoney", 0];
_playerMoney = player getVariable ["cmoney", 0];

if (_bankMoney > 999999) then
	{
		_bankMoney = (_bankMoney / 1000000);
		_bankMoney = round (_bankMoney * (100)) / 100; //round to two decimal places
		_bankMoney = format["%1 M", _bankMoney];
	};
if (_playerMoney > 999999) then
	{
		_playerMoney = (_playerMoney / 1000000);
		_playerMoney = round (_playerMoney * (100)) / 100; //round to two decimal places
		_playerMoney = format["%1 M", _playerMoney];
	};	


lbClear _units;
_text ctrlSetStructuredText parseText format["<img size='1.7' image='client\icons\bank.paa'/> $%1<br/><img size='1.6' image='client\icons\money.paa'/> $%2",_bankMoney,_playerMoney];


lbSetCurSel [2703,0];
