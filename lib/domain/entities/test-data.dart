final singlePillSetJsonString = '''{
    "name": "Morning",
    "frequency": "Daily",
    "pills": [
      {"name": "C"},
      {"name": "D"},
      {"name": "Fish (Krill) Oil"},
      {"name": "Glipizide"},
      {"name": "Probiotic"},
      {"name": "Zinc"},
      {
        "name": "Extra Virgin Olive Oil",
        "dose": "Two tablespoons"
      }
    ]
  }''';

final multiplePillSetsJsonString = '''{
    "dependent": "Dad",
    "sets": [
      {
        "name": "Morning",
        "frequency": "Daily",
        "pills": [
          {
            "name": "C",
            "dose": "250 mg - 1/2 of 500 mg",
            "brand": "Kirkland Chewable C",
            "form": "chewable tablet"
          },
          {
            "name": "Metformin Hcl Er 24Hr 500 Mg",
            "dose": "500 Mg",
            "brand": "Tagi Pharm",
            "form": "tablet",
            "quantity": 90,
            "rx": "6405675",
            "directions": "Take one tablet by mouth once day with dinner",
            "pharmacy": {
              "name": "Costco St. Louis Park, MN",
              "phone": "763.582.9602"
            }
          },
          {
            "name": "D3",
            "dose": "50 mcg (2000 IU)",
            "brand": "Kirkland Extra Strength D3",
            "form": "tablet"
          },
          {
            "name": "Fish (Krill) Oil",
            "dose": "500 mg",
            "brand": "Kirkland Krill Oil",
            "form": "tablet"
          },
          {
            "name": "Probiotic",
            "dose": "One capsule",
            "brand": "Culturelle",
            "form": "Capsule"
          },
          {
            "name": "Zinc",
            "dose": "25 mg - 1/2 of 50 mg",
            "brand": "N",
            "form": "tablet"
          },
          {
            "name": "Extra Virgin Olive Oil",
            "dose": "Two tablespoons",
            "brand": "Kirkland Organic 100% California Extra Virgin Olive Oil",
            "form": "liquid"
          }
        ]
      },
      {
        "name": "Bedtime",
        "frequency": "Daily",
        "pills": [
          {
            "name": "Low Dose (Baby) Aspirin",
            "dose": "81 Mg",
            "brand": "Kirkland",
            "form": "tablet"
          },
          {
            "name": "C",
            "dose": "250 mg - 1/2 of 500 mg",
            "brand": "Kirkland Chewable C",
            "form": "chewable tablet"
          },
          {
            "name": "Cinsulin - Cinnamon",
            "dose": "One capsule",
            "brand": "Trunature Cinsulin",
            "form": "capsule"
          },
          {
            "name": "Simvastatin",
            "dose": "20 Mg",
            "brand": "Northstar",
            "form": "tablet",
            "quantity": 90,
            "rx": "6405676",
            "directions": "Take one tablet daily at bedtime",
            "pharmacy": {
              "name": "Costco St. Louis Park, MN",
              "phone": "763.582.9602"
            }
          },
          {
            "name": "CoQ10",
            "dose": "100 Mg",
            "brand": "Qunol Ubiquinol",
            "form": "softgel tablet"
          }
        ]
      }
    ]
  }''';

final dependentSinglePillSetsJsonString = '''{
    "dependent": "Coda",
      "sets" : [
        {
          "name": "Morning",
          "frequency": "Monthly",
          "pills": [
            {"name": "Heartgard"},
            {
              "name": "Nexgard",
              "dose": "Two tablespoons"
            }
          ]
        }
      ]
    }''';

final noDependentSinglePillSetsJsonString = '''{
      "sets" : [
        {
          "name": "Morning",
          "frequency": "Monthly",
          "pills": [
            {"name": "Heartgard"},
            {
              "name": "Nexgard",
              "dose": "Two tablespoons"
            }
          ]
        }
      ]
    }''';
