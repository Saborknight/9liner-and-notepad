
private _lP = (profileNamespace getVariable ["nln_cas_nineliner_currentPage", -1]);
private _nP = (["cas_nineliner", _lP] call nln_main_fnc_getNextPage);

if (_nP <= -1) then
{
	private _pP = (["cas_nineliner", _lP] call nln_main_fnc_getPagePosition);
	
	if ((count _pP) > 0) then
	{
		hint (format["Page %1/%2", (_pP select 0) + 1, (_pP select 1)]);
	};
}
else
{
	private _pP = (["cas_nineliner", _nP] call nln_main_fnc_getPagePosition);
	hint (format["Page %1/%2", (_pP select 0), (_pP select 1)]);
};

[_nP] call nln_cas_nineliner_fnc_updateMenu;
profileNamespace setVariable ["nln_cas_nineliner_currentPage", _nP];