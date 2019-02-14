/* no fatigue */
player enableFatigue false;

/* cleaning the chat */
0 enableChannel [true, false];
1 enableChannel [true, false];
2 enableChannel [true, false];
3 enableChannel [true, false];

/* fixing the aids part of arma */
disableSerialization;
enableEnvironment false;
player disableConversation true;
enableSentences false;
enableRadio false;
enableSaving [false, false];
0 setFog 0;
setTerrainGrid 48.99;
player setCustomAimCoef 0.1;
