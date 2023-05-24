#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
INSERT_DATA="games.csv"

tail +2 $INSERT_DATA | while IFS=',' read -r year round winner opponent winner_goals opponent_goals; do
  con1=$(eval "$PSQL \"SELECT COUNT(*) FROM teams;\"")
  #echo "$con1"
  if [[ $con1 -eq 24 ]]; then
    echo "enough teams were inserted"
  else
    result=$(eval "$PSQL \"SELECT COUNT(*) FROM teams WHERE name = '$winner';\"")
    if [[ $result -eq 0 ]]; then
      eval "$PSQL \"INSERT INTO teams(name) VALUES ('$winner');\""
    else
      echo "Team '$winner' already inserted."
    fi

    result=$(eval "$PSQL \"SELECT COUNT(*) FROM teams WHERE name = '$opponent';\"")
    if [[ $result -eq 0 ]]; then
      eval "$PSQL \"INSERT INTO teams(name) VALUES ('$opponent');\""
    else
      echo "Team '$opponent' already inserted."
    fi
  fi
  
  opponent_id=$(eval "$PSQL \"SELECT team_id FROM teams WHERE name = '$opponent';\"")
  echo "Id del oponente '$opponent_id'"
  winner_id=$(eval "$PSQL \"SELECT team_id FROM teams WHERE name = '$winner';\"")
  echo "Id del ganador '$winner_id'"
  if [[ -n $opponent_id && -n $winner_id ]]; then
    eval "$PSQL \"INSERT INTO games(opponent_id,winner_id,winner_goals,opponent_goals,year,round) VALUES('$opponent_id','$winner_id','$winner_goals','$opponent_goals','$year','$round');\""
  fi

done 

