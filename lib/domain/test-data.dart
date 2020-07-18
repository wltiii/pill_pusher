  final morningPillsTestSet = '''{
    "name": "Morning",
    "frequency": "Daily",
    "pills": [
      "pill" : {"C"},
      "pill" : {"D"},
      "pill" : {"Fish (Krill) Oil"},
      "pill" : {"Glipizide"},
      "pill" : {"Probiotic"},
      "pill" : {"Zinc"},
      "pill" : {
        "name": "Extra Virgin Olive Oil",
        "dose": "Two tablespoons",
      },
    ]
  }''';

  final testPillSets = '''{
    "dependent": "Coda",
    "sets": [
      {
        "name": "Morning",
        "frequency": "Daily",
        "pills": [
          "C",
          "D",
          "Fish (Krill) Oil",
          "Glipizide",
          "Probiotic",
          "Zinc"
        ]
      },
      {
        "name": "Dinner",
        "frequency": "Daily",
        "pills": [
          "Metformin"
        ]
      },
      {
        "name": "Bedtime",
        "frequency": "Daily",
        "pills": [
          "Baby aspirin",
          "C",
          "Cinsulin - Cinnamon",
          "Lisinopril - 1/2 of 5mg",
          "Simvastatin",
          "Ubiquinol - CoQ10"
        ]
      }
    ]
  }''';

  final testPillSetsHavingOneSet = '''{
      "dependent": "Coda",
      "sets" : [
        {
          "name": "Morning",
          "frequency": "Daily",
          "pills": [
            "C",
            "D",
            "Fish (Krill) Oil",
            "Glipizide",
            "Probiotic",
            "Zinc"
          ]
        }
      ]
    }''';

  final testPillSetsNoDependent = '''{
      "sets" : [
        {
          "name": "Morning",
          "frequency": "Daily",
          "pills": [
            "C",
            "D",
            "Fish (Krill) Oil",
            "Glipizide",
            "Probiotic",
            "Zinc"
          ]
        }
      ]
    }''';
