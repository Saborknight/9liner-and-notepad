cw_5liner_gcff_fnc_previousPage =
{
_currentPage = cw_5liner_gcff_currentPage;
_previousPage = _currentPage - 1;

If (_previousPage <= 0)exitWith {hint (["STR_cw_nineline_and_notepad_Scripts_PageNotAvailable"] call BIS_fnc_localize);};

cw_5liner_gcff_currentPage = cw_5liner_gcff_currentPage - 1;
profileNamespace setVariable ["cw_5liner_gcff_lastPage", cw_5liner_gcff_currentPage];

_pagetext = [cw_5liner_gcff_currentPage] call cw_5liner_gcff_fnc_GetPageText;

[_pagetext] call cw_5liner_gcff_fnc_fill;

hint format [(["STR_cw_nineliner_and_notepad_Scripts_PageStep"] call BIS_fnc_localize), cw_5liner_gcff_currentPage];
};