import 'package:quiz_app/models/country.dart';

class Countries {
  static List<Country> get countryList =>
      _countryList.map((e) => Country.fromJson(e)).toList();

  static final List<Map<String, dynamic>> _countryList = [
    {
      "code": "AF",
      "name": "Afghan",
      "prefix": "93",
    },
    {
      "code": "AX",
      "name": "Åland Island",
      "prefix": "358",
    },
    {
      "code": "AL",
      "name": "Albanian",
      "prefix": "355",
    },
    {
      "code": "DZ",
      "name": "Algerian",
      "prefix": "213",
    },
    {
      "code": "AS",
      "name": "American Samoan",
      "prefix": "1684",
    },
    {
      "code": "AD",
      "name": "Andorran",
      "prefix": "376",
    },
    {
      "code": "AO",
      "name": "Angolan",
      "prefix": "244",
    },
    {
      "code": "AI",
      "name": "Anguillan",
      "prefix": "1264",
    },
    {
      "code": "AQ",
      "name": "Antarctic",
      "prefix": "672",
    },
    {
      "code": "AG",
      "name": "Antiguan or Barbudan",
      "prefix": "1268",
    },
    {
      "code": "AR",
      "name": "Argentine",
      "prefix": "54",
    },
    {
      "code": "AM",
      "name": "Armenian",
      "prefix": "374",
    },
    {
      "code": "AW",
      "name": "Aruban",
      "prefix": "297",
    },
    {
      "code": "AU",
      "name": "Australian",
      "prefix": "61",
    },
    {
      "code": "AT",
      "name": "Austrian",
      "prefix": "43",
    },
    {
      "code": "AZ",
      "name": "Azerbaijani, Azeri",
      "prefix": "994",
    },
    {
      "code": "BS",
      "name": "Bahamian",
      "prefix": "1242",
    },
    {
      "code": "BH",
      "name": "Bahraini",
      "prefix": "973",
    },
    {
      "code": "BD",
      "name": "Bangladeshi",
      "prefix": "880",
    },
    {
      "code": "BB",
      "name": "Barbadian",
      "prefix": "1246",
    },
    {
      "code": "BY",
      "name": "Belarusian",
      "prefix": "375",
    },
    {
      "code": "BE",
      "name": "Belgian",
      "prefix": "32",
    },
    {
      "code": "BZ",
      "name": "Belizean",
      "prefix": "501",
    },
    {
      "code": "BJ",
      "name": "Beninese, Beninois",
      "prefix": "229",
    },
    {
      "code": "BM",
      "name": "Bermudian, Bermudan",
      "prefix": "1441",
    },
    {
      "code": "BT",
      "name": "Bhutanese",
      "prefix": "975",
    },
    {
      "code": "BO",
      "name": "Bolivian",
      "prefix": "591",
    },
    {
      "code": "BA",
      "name": "Bosnian or Herzegovinian",
      "prefix": "387",
    },
    {
      "code": "BW",
      "name": "Motswana, Botswanan",
      "prefix": "267",
    },
    {
      "code": "BV",
      "name": "Bouvet Island",
      "prefix": "47",
    },
    {
      "code": "BR",
      "name": "Brazilian",
      "prefix": "55",
    },
    {
      "code": "IO",
      "name": "BIOT",
      "prefix": "246",
    },
    {
      "code": "BN",
      "name": "Bruneian",
      "prefix": "673",
    },
    {
      "code": "BG",
      "name": "Bulgarian",
      "prefix": "359",
    },
    {
      "code": "BF",
      "name": "Burkinabé",
      "prefix": "226",
    },
    {
      "code": "BI",
      "name": "Burundian",
      "prefix": "257",
    },
    {
      "code": "CV",
      "name": "Cabo Verdean",
      "prefix": "238",
    },
    {
      "code": "KH",
      "name": "Cambodian",
      "prefix": "855",
    },
    {
      "code": "CM",
      "name": "Cameroonian",
      "prefix": "237",
    },
    {
      "code": "CA",
      "name": "Canadian",
      "prefix": "1",
    },
    {
      "code": "KY",
      "name": "Caymanian",
      "prefix": "1345",
    },
    {
      "code": "CF",
      "name": "Central African",
      "prefix": "236",
    },
    {
      "code": "TD",
      "name": "Chadian",
      "prefix": "235",
    },
    {
      "code": "CL",
      "name": "Chilean",
      "prefix": "56",
    },
    {
      "code": "CN",
      "name": "Chinese",
      "prefix": "86",
    },
    {
      "code": "CX",
      "name": "Christmas Island",
      "prefix": "61",
    },
    {
      "code": "CC",
      "name": "Cocos Island",
      "prefix": "61",
    },
    {
      "code": "CO",
      "name": "Colombian",
      "prefix": "57",
    },
    {
      "code": "KM",
      "name": "Comoran, Comorian",
      "prefix": "269",
    },
    {
      "code": "CG",
      "name": "Congolese",
      "prefix": "242",
    },
    {
      "code": "CD",
      "name": "Congolese",
      "prefix": "243",
    },
    {
      "code": "CK",
      "name": "Cook Island",
      "prefix": "682",
    },
    {
      "code": "CR",
      "name": "Costa Rican",
      "prefix": "506",
    },
    {
      "code": "CI",
      "name": "Ivorian",
      "prefix": "225",
    },
    {
      "code": "HR",
      "name": "Croatian",
      "prefix": "385",
    },
    {
      "code": "CU",
      "name": "Cuban",
      "prefix": "53",
    },
    {
      "code": "CY",
      "name": "Cypriot",
      "prefix": "357",
    },
    {
      "code": "CZ",
      "name": "Czech",
      "prefix": "420",
    },
    {
      "code": "DK",
      "name": "Danish",
      "prefix": "45",
    },
    {
      "code": "DJ",
      "name": "Djiboutian",
      "prefix": "253",
    },
    {
      "code": "DM",
      "name": "Dominican",
      "prefix": "1767",
    },
    {
      "code": "DO",
      "name": "Dominican",
      "prefix": "1",
    },
    {
      "code": "EC",
      "name": "Ecuadorian",
      "prefix": "593",
    },
    {
      "code": "EG",
      "name": "Egypt",
      "prefix": "20",
    },
    {
      "code": "SV",
      "name": "Salvadoran",
      "prefix": "503",
    },
    {
      "code": "GQ",
      "name": "Equatorial Guinean, Equatoguinean",
      "prefix": "240",
    },
    {
      "code": "ER",
      "name": "Eritrean",
      "prefix": "291",
    },
    {
      "code": "EE",
      "name": "Estonian",
      "prefix": "372",
    },
    {
      "code": "ET",
      "name": "Ethiopian",
      "prefix": "251",
    },
    {
      "code": "FK",
      "name": "Falkland Island",
      "prefix": "500",
    },
    {
      "code": "FO",
      "name": "Faroese",
      "prefix": "298",
    },
    {
      "code": "FJ",
      "name": "Fijian",
      "prefix": "679",
    },
    {
      "code": "FI",
      "name": "Finnish",
      "prefix": "358",
    },
    {
      "code": "FR",
      "name": "French",
      "prefix": "33",
    },
    {
      "code": "GF",
      "name": "French Guianese",
      "prefix": "594",
    },
    {
      "code": "PF",
      "name": "French Polynesian",
      "prefix": "689",
    },
    {
      "code": "TF",
      "name": "French Southern Territories",
      "prefix": "262",
    },
    {
      "code": "GA",
      "name": "Gabonese",
      "prefix": "241",
    },
    {
      "code": "GM",
      "name": "Gambian",
      "prefix": "220",
    },
    {
      "code": "GE",
      "name": "Georgian",
      "prefix": "995",
    },
    {
      "code": "DE",
      "name": "German",
      "prefix": "49",
    },
    {
      "code": "GH",
      "name": "Ghanaian",
      "prefix": "233",
    },
    {
      "code": "GI",
      "name": "Gibraltar",
      "prefix": "350",
    },
    {
      "code": "GR",
      "name": "Greek, Hellenic",
      "prefix": "30",
    },
    {
      "code": "GL",
      "name": "Greenlandic",
      "prefix": "299",
    },
    {
      "code": "GD",
      "name": "Grenadian",
      "prefix": "1473",
    },
    {
      "code": "GP",
      "name": "Guadeloupe",
      "prefix": "590",
    },
    {
      "code": "GU",
      "name": "Guamanian, Guambat",
      "prefix": "1671",
    },
    {
      "code": "GT",
      "name": "Guatemalan",
      "prefix": "502",
    },
    {
      "code": "GG",
      "name": "Channel Island",
      "prefix": "44",
    },
    {
      "code": "GN",
      "name": "Guinean",
      "prefix": "224",
    },
    {
      "code": "GW",
      "name": "Bissau-Guinean",
      "prefix": "245",
    },
    {
      "code": "GY",
      "name": "Guyanese",
      "prefix": "592",
    },
    {
      "code": "HT",
      "name": "Haitian",
      "prefix": "509",
    },
    {
      "code": "HM",
      "name": "Heard Island or McDonald Islands",
      "prefix": "0",
    },
    {
      "code": "VA",
      "name": "Vatican",
      "prefix": "379",
    },
    {
      "code": "HN",
      "name": "Honduran",
      "prefix": "504",
    },
    {
      "code": "HK",
      "name": "Hong Kong, Hong Kongese",
      "prefix": "852",
    },
    {
      "code": "HU",
      "name": "Hungarian, Magyar",
      "prefix": "36",
    },
    {
      "code": "IS",
      "name": "Icelandic",
      "prefix": "354",
    },
    {
      "code": "IN",
      "name": "Indian",
      "prefix": "91",
    },
    {
      "code": "ID",
      "name": "Indonesian",
      "prefix": "62",
    },
    {
      "code": "IR",
      "name": "Iranian, Persian",
      "prefix": "98",
    },
    {
      "code": "IQ",
      "name": "Iraqi",
      "prefix": "964",
    },
    {
      "code": "IE",
      "name": "Irish",
      "prefix": "353",
    },
    {
      "code": "IM",
      "name": "Manx",
      "prefix": "44",
    },
    {
      "code": "IL",
      "name": "Israeli",
      "prefix": "972",
    },
    {
      "code": "IT",
      "name": "Italian",
      "prefix": "39",
    },
    {
      "code": "JM",
      "name": "Jamaican",
      "prefix": "1876",
    },
    {
      "code": "JP",
      "name": "Japanese",
      "prefix": "81",
    },
    {
      "code": "JE",
      "name": "Channel Island",
      "prefix": "44",
    },
    {
      "code": "JO",
      "name": "Jordanian",
      "prefix": "962",
    },
    {
      "code": "KZ",
      "name": "Kazakhstani, Kazakh",
      "prefix": "7",
    },
    {
      "code": "KE",
      "name": "Kenyan",
      "prefix": "254",
    },
    {
      "code": "KI",
      "name": "I-Kiribati",
      "prefix": "686",
    },
    {
      "code": "KP",
      "name": "North Korean",
      "prefix": "850",
    },
    {
      "code": "KR",
      "name": "South Korean",
      "prefix": "82",
    },
    {
      "code": "KW",
      "name": "Kuwaiti",
      "prefix": "965",
    },
    {
      "code": "KG",
      "name": "Kyrgyzstani, Kyrgyz, Kirgiz, Kirghiz",
      "prefix": "996",
    },
    {
      "code": "LA",
      "name": "Lao, Laotian",
      "prefix": "856",
    },
    {
      "code": "LV",
      "name": "Latvian",
      "prefix": "371",
    },
    {
      "code": "LB",
      "name": "Lebanese",
      "prefix": "961",
    },
    {
      "code": "LS",
      "name": "Basotho",
      "prefix": "266",
    },
    {
      "code": "LR",
      "name": "Liberian",
      "prefix": "231",
    },
    {
      "code": "LY",
      "name": "Libyan",
      "prefix": "218",
    },
    {
      "code": "LI",
      "name": "Liechtenstein",
      "prefix": "423",
    },
    {
      "code": "LT",
      "name": "Lithuanian",
      "prefix": "370",
    },
    {
      "code": "LU",
      "name": "Luxembourg, Luxembourgish",
      "prefix": "352",
    },
    {
      "code": "MO",
      "name": "Macanese, Chinese",
      "prefix": "853",
    },
    {
      "code": "MK",
      "name": "Macedonian",
      "prefix": "389",
    },
    {
      "code": "MG",
      "name": "Malagasy",
      "prefix": "261",
    },
    {
      "code": "MW",
      "name": "Malawian",
      "prefix": "265",
    },
    {
      "code": "MY",
      "name": "Malaysian",
      "prefix": "60",
    },
    {
      "code": "MV",
      "name": "Maldivian",
      "prefix": "960",
    },
    {
      "code": "ML",
      "name": "Malian, Malinese",
      "prefix": "223",
    },
    {
      "code": "MT",
      "name": "Maltese",
      "prefix": "356",
    },
    {
      "code": "MH",
      "name": "Marshallese",
      "prefix": "692",
    },
    {
      "code": "MQ",
      "name": "Martiniquais, Martinican",
      "prefix": "596",
    },
    {
      "code": "MR",
      "name": "Mauritanian",
      "prefix": "222",
    },
    {
      "code": "MU",
      "name": "Mauritian",
      "prefix": "230",
    },
    {
      "code": "YT",
      "name": "Mahoran",
      "prefix": "262",
    },
    {
      "code": "MX",
      "name": "Mexican",
      "prefix": "52",
    },
    {
      "code": "FM",
      "name": "Micronesian",
      "prefix": "691",
    },
    {
      "code": "MD",
      "name": "Moldovan",
      "prefix": "373",
    },
    {
      "code": "MC",
      "name": "Monégasque, Monacan",
      "prefix": "377",
    },
    {
      "code": "MN",
      "name": "Mongolian",
      "prefix": "976",
    },
    {
      "code": "ME",
      "name": "Montenegrin",
      "prefix": "382",
    },
    {
      "code": "MS",
      "name": "Montserratian",
      "prefix": "1664",
    },
    {
      "code": "MA",
      "name": "Moroccan",
      "prefix": "212",
    },
    {
      "code": "MZ",
      "name": "Mozambican",
      "prefix": "258",
    },
    {
      "code": "MM",
      "name": "Burmese",
      "prefix": "95",
    },
    {
      "code": "NA",
      "name": "Namibian",
      "prefix": "264",
    },
    {
      "code": "NR",
      "name": "Nauruan",
      "prefix": "674",
    },
    {
      "code": "NP",
      "name": "Nepali, Nepalese",
      "prefix": "977",
    },
    {
      "code": "NL",
      "name": "Dutch, Netherlandic",
      "prefix": "31",
    },
    {
      "code": "NC",
      "name": "New Caledonian",
      "prefix": "687",
    },
    {
      "code": "NZ",
      "name": "New Zealand, NZ",
      "prefix": "64",
    },
    {
      "code": "NI",
      "name": "Nicaraguan",
      "prefix": "505",
    },
    {
      "code": "NE",
      "name": "Nigerien",
      "prefix": "227",
    },
    {
      "code": "NG",
      "name": "Nigerian",
      "prefix": "234",
    },
    {
      "code": "NU",
      "name": "Niuean",
      "prefix": "683",
    },
    {
      "code": "NF",
      "name": "Norfolk Island",
      "prefix": "672",
    },
    {
      "code": "MP",
      "name": "Northern Marianan",
      "prefix": "1670",
    },
    {
      "code": "NO",
      "name": "Norwegian",
      "prefix": "47",
    },
    {
      "code": "OM",
      "name": "Omani",
      "prefix": "968",
    },
    {
      "code": "PK",
      "name": "Pakistani",
      "prefix": "92",
    },
    {
      "code": "PW",
      "name": "Palauan",
      "prefix": "680",
    },
    {
      "code": "PS",
      "name": "Palestinian",
      "prefix": "970",
    },
    {
      "code": "PA",
      "name": "Panamanian",
      "prefix": "507",
    },
    {
      "code": "PG",
      "name": "Papua New Guinean, Papuan",
      "prefix": "675",
    },
    {
      "code": "PY",
      "name": "Paraguayan",
      "prefix": "595",
    },
    {
      "code": "PE",
      "name": "Peruvian",
      "prefix": "51",
    },
    {
      "code": "PH",
      "name": "Philippine, Filipino",
      "prefix": "63",
    },
    {
      "code": "PN",
      "name": "Pitcairn Island",
      "prefix": "64",
    },
    {
      "code": "PL",
      "name": "Polish",
      "prefix": "48",
    },
    {
      "code": "PT",
      "name": "Portuguese",
      "prefix": "351",
    },
    {
      "code": "PR",
      "name": "Puerto Rican",
      "prefix": "1939",
    },
    {
      "code": "QA",
      "name": "Qatari",
      "prefix": "974",
    },
    {
      "code": "RE",
      "name": "Réunionese, Réunionnais",
      "prefix": "262",
    },
    {
      "code": "RO",
      "name": "Romanian",
      "prefix": "40",
    },
    {
      "code": "RU",
      "name": "Russian",
      "prefix": "7",
    },
    {
      "code": "RW",
      "name": "Rwandan",
      "prefix": "250",
    },
    {
      "code": "BL",
      "name": "Barthélemois",
      "prefix": "590",
    },
    {
      "code": "SH",
      "name": "Saint Helenian",
      "prefix": "290",
    },
    {
      "code": "KN",
      "name": "Kittitian or Nevisian",
      "prefix": "1869",
    },
    {
      "code": "LC",
      "name": "Saint Lucian",
      "prefix": "1758",
    },
    {
      "code": "MF",
      "name": "Saint-Martinoise",
      "prefix": "590",
    },
    {
      "code": "PM",
      "name": "Saint-Pierrais or Miquelonnais",
      "prefix": "508",
    },
    {
      "code": "VC",
      "name": "Saint Vincentian, Vincentian",
      "prefix": "1784",
    },
    {
      "code": "WS",
      "name": "Samoan",
      "prefix": "685",
    },
    {
      "code": "SM",
      "name": "Sammarinese",
      "prefix": "378",
    },
    {
      "code": "ST",
      "name": "São Toméan",
      "prefix": "239",
    },
    {
      "code": "SA",
      "name": "Saudi, Saudi Arabian",
      "prefix": "966",
    },
    {
      "code": "SN",
      "name": "Senegalese",
      "prefix": "221",
    },
    {
      "code": "RS",
      "name": "Serbian",
      "prefix": "381",
    },
    {
      "code": "SC",
      "name": "Seychellois",
      "prefix": "248",
    },
    {
      "code": "SL",
      "name": "Sierra Leonean",
      "prefix": "232",
    },
    {
      "code": "SG",
      "name": "Singaporean",
      "prefix": "65",
    },
    {
      "code": "SK",
      "name": "Slovak",
      "prefix": "421",
    },
    {
      "code": "SI",
      "name": "Slovenian, Slovene",
      "prefix": "386",
    },
    {
      "code": "SB",
      "name": "Solomon Island",
      "prefix": "677",
    },
    {
      "code": "SO",
      "name": "Somali, Somalian",
      "prefix": "252",
    },
    {
      "code": "ZA",
      "name": "South African",
      "prefix": "27",
    },
    {
      "code": "GS",
      "name": "South Georgia or South Sandwich Islands",
      "prefix": "500",
    },
    {
      "code": "SS",
      "name": "South Sudanese",
      "prefix": "211",
    },
    {
      "code": "ES",
      "name": "Spanish",
      "prefix": "34",
    },
    {
      "code": "LK",
      "name": "Sri Lankan",
      "prefix": "94",
    },
    {
      "code": "SD",
      "name": "Sudanese",
      "prefix": "249",
    },
    {
      "code": "SR",
      "name": "Surinamese",
      "prefix": "597",
    },
    {
      "code": "SJ",
      "name": "Svalbard",
      "prefix": "47",
    },
    {
      "code": "SZ",
      "name": "Swazi",
      "prefix": "268",
    },
    {
      "code": "SE",
      "name": "Swedish",
      "prefix": "46",
    },
    {
      "code": "CH",
      "name": "Swiss",
      "prefix": "41",
    },
    {
      "code": "SY",
      "name": "Syrian",
      "prefix": "963",
    },
    {
      "code": "TW",
      "name": "Chinese, Taiwanese",
      "prefix": "886",
    },
    {
      "code": "TJ",
      "name": "Tajikistani",
      "prefix": "992",
    },
    {
      "code": "TZ",
      "name": "Tanzanian",
      "prefix": "255",
    },
    {
      "code": "TH",
      "name": "Thai",
      "prefix": "66",
    },
    {
      "code": "TL",
      "name": "Timorese",
      "prefix": "670",
    },
    {
      "code": "TG",
      "name": "Togolese",
      "prefix": "228",
    },
    {
      "code": "TK",
      "name": "Tokelauan",
      "prefix": "690",
    },
    {
      "code": "TO",
      "name": "Tongan",
      "prefix": "676",
    },
    {
      "code": "TT",
      "name": "Trinidadian or Tobagonian",
      "prefix": "1868",
    },
    {
      "code": "TN",
      "name": "Tunisian",
      "prefix": "216",
    },
    {
      "code": "TR",
      "name": "Turkish",
      "prefix": "90",
    },
    {
      "code": "TM",
      "name": "Turkmen",
      "prefix": "993",
    },
    {
      "code": "TC",
      "name": "Turks and Caicos Island",
      "prefix": "1649",
    },
    {
      "code": "TV",
      "name": "Tuvaluan",
      "prefix": "688",
    },
    {
      "code": "UG",
      "name": "Ugandan",
      "prefix": "256",
    },
    {
      "code": "UA",
      "name": "Ukrainian",
      "prefix": "380",
    },
    {
      "code": "AE",
      "name": "Emirati, Emirian, Emiri",
      "prefix": "971",
    },
    {
      "code": "GB",
      "name": "British, UK",
      "prefix": "44",
    },
    {
      "code": "US",
      "name": "American",
      "prefix": "1",
    },
    {
      "code": "UY",
      "name": "Uruguayan",
      "prefix": "598",
    },
    {
      "code": "UZ",
      "name": "Uzbekistani, Uzbek",
      "prefix": "998",
    },
    {
      "code": "VU",
      "name": "Ni-Vanuatu, Vanuatuan",
      "prefix": "678",
    },
    {
      "code": "VE",
      "name": "Venezuelan",
      "prefix": "58",
    },
    {
      "code": "VN",
      "name": "Vietnamese",
      "prefix": "84",
    },
    {
      "code": "VG",
      "name": "British Virgin Island",
      "prefix": "1284",
    },
    {
      "code": "VI",
      "name": "U.S. Virgin Island",
      "prefix": "1340",
    },
    {
      "code": "WF",
      "name": "Wallis and Futuna, Wallisian or Futunan",
      "prefix": "681",
    },
    {
      "code": "YE",
      "name": "Yemeni",
      "prefix": "967",
    },
    {
      "code": "ZM",
      "name": "Zambian",
      "prefix": "260",
    },
    {
      "code": "ZW",
      "name": "Zimbabwean",
      "prefix": "263",
    }
  ];
}
