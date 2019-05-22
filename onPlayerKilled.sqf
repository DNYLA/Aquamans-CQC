player setVariable["Saved_Loadout",getUnitLoadout player];

_AquamanCDeaths = profileNamespace getVariable "Aquaman_CQC_Deaths";
_UpdateDeaths = _AquamanCDeaths + 1;

profileNamespace setVariable["Aquaman_CQC_Deaths", _UpdateDeaths];

player setCustomAimCoef 0.0;


//Stops Player From Being able to be shot when dead. (Hard to explain but just disable the line and then someone infront of you at OG and you will see there body infront of you for a sec).
//player setPos PlayerSpawnPoint;