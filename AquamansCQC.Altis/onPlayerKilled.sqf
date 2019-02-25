player setVariable["Saved_Loadout",getUnitLoadout player];

_AquamanCDeaths = profileNamespace getVariable "Aquaman_CQC_Deaths";
_UpdateDeaths = _AquamanCDeaths + 1;

systemChat( format ["Deaths: %1", _UpdateDeaths]);

profileNamespace setVariable["Aquaman_CQC_Deaths", _UpdateDeaths];

player setCustomAimCoef 0.35;