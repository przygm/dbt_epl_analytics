SELECT
  game_id,
  player_id,
  TOTAL_SCORING_ATT,
  accurate_pass,
  expected_goals,
  goals
FROM {{ source('epl_data', 'PLAYER_GAME_STATISTIC') }}