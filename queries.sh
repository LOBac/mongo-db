#!/bin/sh

# Get all aerobic species
db.COLLECTION.find({"OxygenDemand": "Aerobic"})

# Get the diseases and symptoms of bacterium 123123123
db.COLLECTION.find({"idBacterium": 123123123}, {"Diseases": {"NameDisease": 1, "Symptoms": 1}})

# Get the ids of bacteria discovered from 1998
db.COLLECTION.find({"Year": {\$gte1998}}, {"idBacterium": 1})

# Get the ids of Flagella or Cilia bacteria
db.COLLECTION.find({"MovementType": {\$in: ["Flagella", "Cilia"]}}, {"idBacterium": 1})
