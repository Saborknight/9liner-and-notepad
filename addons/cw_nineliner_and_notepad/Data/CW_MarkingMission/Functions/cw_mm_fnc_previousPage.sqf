cw_mm_fnc_previousPage =
{
_currentPage = cw_mm_currentPage;
_previousPage = _currentPage - 1;

If (_previousPage <= 0)exitWith {hint (["STR_cw_nineline_and_notepad_Scripts_PageNotAvailable"] call BIS_fnc_localize);};

cw_mm_currentPage = cw_mm_currentPage - 1;
profileNamespace setVariable ["cw_mm_lastPage", cw_mm_currentPage];

_pagetext = [cw_mm_currentPage] call cw_mm_fnc_GetPageText;

[_pagetext] call cw_mm_fnc_fill;

hint format [([""] call BIS_fnc_localize)"PAGE %1/20", cw_mm_currentPage];
};