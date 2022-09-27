
_enemyUnits = ["TK_INS_Soldier_AT_EP1","TK_INS_Bonesetter_EP1","TK_INS_Soldier_3_EP1","TK_INS_Soldier_AR_EP1"];
_spawnPoint = ["marker_1","marker_2","marker_3","marker_4"];

_newCenter = createCenter east;
_enemyGroup = createGroup east;
_i = count _enemyUnits;
_j = count _spawnPoint;
_infantryNumbers = 0;

while{alive player} do {
  _infantryNumbers = player countEnemy allUnits;
  while{_infantryNumbers < 20} do {
      _enemyUnits select floor random _i createUnit [getMarkerPos (_spawnPoint select floor random _j), _enemyGroup];
      _infantryNumbers = _infantryNumbers + 1;
      sleep 0.1;
    };

_wp = _enemyGroup addWaypoint [getPos player, 10];
systemChat "new waves spawned";
sleep 120;
};
