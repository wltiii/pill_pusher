const singlePillSetJsonString = '''{
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

const multiplePillSetsJsonString = '''{
  "dependent": "Dad",
  "sets": [
    {
      "name": "Morning",
      "frequency": "Daily",
      "pills": [
        {
          "name": "C",
          "dose": "1/2 of 500 mg - 250 mg",
          "brand": "Kirkland Chewable C",
          "form": "chewable tablet"
        },
        {
          "name": "D3",
          "dose": "50 mcg (2000 IU)",
          "brand": "Kirkland Extra Strength D3",
          "form": "softgel"
        },
        {
          "name": "Fish Oil - Alaskan Omega-3",
          "dose": "500 mg EPA DHA",
          "brand": "Pure Alaska Omega",
          "form": "softgel"
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
          "name": "Aspirin - Low Dose (Baby)",
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
          "name": "CoQ10 - Qunol Ubiquinol",
          "dose": "100 Mg",
          "brand": "Qunol Ubiquinol",
          "form": "softgel tablet"
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
        }
      ]
    },
    {
      "name": "Tuesday",
      "frequency": "Weekly",
      "pills": [
        {
          "name": "Ozempic (semaglutide) 0.25 or 0.5 mg/Dose (qty 3)",
          "dose": "500 Mg",
          "brand": "Tagi Pharm",
          "form": "injectable",
          "quantity": 90,
          "rx": "14-6868470",
          "directions": "Inject 0.5mg once weekly for 4 weeks then change to 1mg weekly. Hold for six seconds after depressing plunger.",
          "pharmacy": {
            "name": "Fairvew Southdale Hospital Pharmacy, Edina, MN",
            "phone": "952.924.1400"
          }
        }
      ]
    }
  ]
}''';

const dependentSinglePillSetsJsonString = '''{
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

const noDependentSinglePillSetsJsonString = '''{
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
