SELECT
  T1.game_id,
  T1.player_id,
  T2.PLAYER_FIRST_NAME,
  T2.PLAYER_LAST_NAME,
  T2.PLAYER_KNOWN_NAME,
  T1.TOTAL_SCORING_ATT,
  T1.ACCURATE_PASS,
  T1.EXPECTED_GOALS,
  T1.GOALS
FROM {{ ref('stg_epl_player_stats') }} T1
LEFT JOIN {{ source('epl_data', 'PLAYER') }} T2
  ON T1.player_id = T2.ID