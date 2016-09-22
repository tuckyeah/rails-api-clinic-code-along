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

# Update
  curl --include --request PATCH http://localhost:3000/patients/2 \
    --header "Content-Type: application/json" \
    --data '{
      "patient": {
        "name": "Fox Mulder",
        "sickness": "Too spooky"
      }
    }'

# Destroy

curl --include --request DELETE http://localhost:3000/patients/6 \
  --header "Content-Type: application/json"
