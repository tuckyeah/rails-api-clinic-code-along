# index

# show

# create
curl --include --request POST http://localhost:3000/patients \
  --header "Content-Type: application/json" \
  --data '{
    "patient": {
      "name": "Joe Schmoe",
      "sickness": "Starring in the dope show"
    }
  }'
