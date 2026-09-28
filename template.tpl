___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "One Privacy CMP",
  "categories": [
    "UTILITY"
  ],
  "brand": {
    "id": "brand_dummy",
    "displayName": "One Privacy",
    "thumbnail": "data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyBpZD0iTGF5ZXJfMiIgZGF0YS1uYW1lPSJMYXllciAyIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCA3ODAuMjggOTk5LjM0Ij4KICA8ZGVmcz4KICAgIDxzdHlsZT4KICAgICAgLmNscy0xIHsKICAgICAgICBmaWxsOiAjMTNiZjdmOwogICAgICB9CiAgICA8L3N0eWxlPgogIDwvZGVmcz4KICA8ZyBpZD0iTGF5ZXJfMS0yIiBkYXRhLW5hbWU9IkxheWVyIDEiPgogICAgPGc+CiAgICAgIDxwYXRoIGNsYXNzPSJjbHMtMSIgZD0iTTc4MC4yOCwzOTAuMTJjMCwyMTUuNDgtMTc0LjY4LDM5MC4xMi0zOTAuMTIsMzkwLjEyaC0xMjkuOThsNzEuNTgtMTU0LjQxYzE4LjczLDQuNjMsMzguMjMsNy4zOSw1OC40LDcuMzksMTM0LjAzLDAsMjQzLjA3LTEwOS4wNCwyNDMuMDctMjQzLjFzLTEwOS4wNC0yNDMuMDctMjQzLjA3LTI0My4wNy0yNDMuMSwxMDkuMDQtMjQzLjEsMjQzLjA3YzAsNjEuODYsMjMuMzksMTE4LjIxLDYxLjU5LDE2MS4xNkwuOTUsOTk5LjM0VjQxNS44MWMtLjU1LTguNDktLjk1LTE3LjA0LS45NS0yNS42OUMwLDE3NC42OCwxNzQuNjgsMCwzOTAuMTUsMHMzOTAuMTIsMTc0LjY4LDM5MC4xMiwzOTAuMTJaIi8+CiAgICAgIDxwYXRoIGNsYXNzPSJjbHMtMSIgZD0iTTQzNy4zNywzOTMuMTRjLS43Ni43Ni0xLjUyLDEuNDctMi4zMiwyLjEzLTMuNywzLjMyLTcuODIsNi4yNS0xMi4xOCw4LjY3bDExLjMyLDg0LjQ5LjQ3LDMuNywxLjg1LDEzLjc5aC05Mi43M2wxLjQyLTEwLjU3LjQzLTMuMjIsMTEuNzUtODguMThjLTUuMzEtMi45NC0xMC4xNC02LjU5LTE0LjQ1LTEwLjgtLjc2LS43MS0xLjQ3LTEuNDItMi4wOC0yLjE4LTExLjMzLTEyLjA0LTE4LjI0LTI4LjI0LTE4LjI0LTQ2LjA2czcuMy0zNC45MiwxOS4xLTQ3LjE1YzEuMjMtMS4yOCwyLjU2LTIuNTEsMy45My0zLjcsNy4wMS02LjE2LDE1LjM1LTEwLjksMjQuNS0xMy43NCw1LjY0LTEuNzUsMTEuNjEtMi44LDE3LjgyLTIuOTkuNzEtLjA1LDEuNDItLjA1LDIuMTgtLjA1LDcuMDEsMCwxMy43NCwxLjA5LDIwLjA5LDMuMDMsNy40OSwyLjMyLDE0LjQsNS45MiwyMC41MiwxMC41NywxLjM3LDEsMi43LDIuMDgsMy45MywzLjIyLDE0LjEyLDEyLjM3LDIzLjAzLDMwLjU2LDIzLjAzLDUwLjgsMCwxOC45MS03Ljc3LDM2LjAxLTIwLjMzLDQ4LjI0WiIvPgogICAgPC9nPgogIDwvZz4KPC9zdmc+"
  },
  "description": "Loads the One Privacy consent banner and sets Google Consent Mode v2 default and update states from the visitor\u0027s stored consent.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "projectId",
    "displayName": "Project ID",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ],
    "help": "Your One Privacy project ID. Find it in the One Privacy dashboard under Banner Configuration → Scripts."
  },
  {
    "type": "SELECT",
    "name": "environment",
    "displayName": "Environment",
    "macrosInSelect": false,
    "selectItems": [
      {
        "value": "live",
        "displayValue": "Live (Production)"
      },
      {
        "value": "test",
        "displayValue": "Test"
      }
    ],
    "simpleValueType": true,
    "defaultValue": "live",
    "help": "Live loads the banner you published to Live. Test loads the banner you published to Test, for staging sites."
  },
  {
    "type": "GROUP",
    "name": "defaultConsentGroup",
    "displayName": "Default Consent Settings",
    "groupStyle": "ZIPPY_OPEN",
    "subParams": [
      {
        "type": "PARAM_TABLE",
        "name": "regionDefaults",
        "displayName": "Default Consent Settings",
        "paramTableColumns": [
          {
            "param": {
              "type": "SELECT",
              "name": "adStorage",
              "displayName": "ad_storage",
              "macrosInSelect": false,
              "selectItems": [
                {
                  "value": "granted",
                  "displayValue": "granted"
                },
                {
                  "value": "denied",
                  "displayValue": "denied"
                }
              ],
              "simpleValueType": true,
              "defaultValue": "denied"
            },
            "isUnique": false
          },
          {
            "param": {
              "type": "SELECT",
              "name": "analyticsStorage",
              "displayName": "analytics_storage",
              "macrosInSelect": false,
              "selectItems": [
                {
                  "value": "granted",
                  "displayValue": "granted"
                },
                {
                  "value": "denied",
                  "displayValue": "denied"
                }
              ],
              "simpleValueType": true,
              "defaultValue": "denied"
            },
            "isUnique": false
          },
          {
            "param": {
              "type": "SELECT",
              "name": "adUserData",
              "displayName": "ad_user_data",
              "macrosInSelect": false,
              "selectItems": [
                {
                  "value": "granted",
                  "displayValue": "granted"
                },
                {
                  "value": "denied",
                  "displayValue": "denied"
                }
              ],
              "simpleValueType": true,
              "defaultValue": "denied"
            },
            "isUnique": false
          },
          {
            "param": {
              "type": "SELECT",
              "name": "adPersonalization",
              "displayName": "ad_personalization",
              "macrosInSelect": false,
              "selectItems": [
                {
                  "value": "granted",
                  "displayValue": "granted"
                },
                {
                  "value": "denied",
                  "displayValue": "denied"
                }
              ],
              "simpleValueType": true,
              "defaultValue": "denied"
            },
            "isUnique": false
          },
          {
            "param": {
              "type": "SELECT",
              "name": "functionalityStorage",
              "displayName": "functionality_storage",
              "macrosInSelect": false,
              "selectItems": [
                {
                  "value": "granted",
                  "displayValue": "granted"
                },
                {
                  "value": "denied",
                  "displayValue": "denied"
                }
              ],
              "simpleValueType": true,
              "defaultValue": "denied"
            },
            "isUnique": false
          },
          {
            "param": {
              "type": "SELECT",
              "name": "personalizationStorage",
              "displayName": "personalization_storage",
              "macrosInSelect": false,
              "selectItems": [
                {
                  "value": "granted",
                  "displayValue": "granted"
                },
                {
                  "value": "denied",
                  "displayValue": "denied"
                }
              ],
              "simpleValueType": true,
              "defaultValue": "denied"
            },
            "isUnique": false
          },
          {
            "param": {
              "type": "TEXT",
              "name": "regions",
              "displayName": "Regions",
              "simpleValueType": true,
              "defaultValue": "All",
              "valueValidators": [
                {
                  "type": "NON_EMPTY"
                }
              ],
              "help": "All, or comma separated ISO 3166-1 country codes (DE, FR) and ISO 3166-2 codes (US-CA). A more specific region wins."
            },
            "isUnique": true
          }
        ],
        "newRowTitle": "Add Setting",
        "newRowButtonText": "Add Setting",
        "editRowTitle": "Edit Setting",
        "help": "The consent state Google tags start with, before the visitor chooses. One row per group of regions. security_storage is always granted."
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "otherSettingsGroup",
    "displayName": "Other Settings",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "CHECKBOX",
        "name": "consentModeCommands",
        "checkboxText": "Send Consent Mode default and update commands",
        "simpleValueType": true,
        "defaultValue": true,
        "help": "Turn off to stop every Google Consent Mode command from this tag and from the banner. Google tags then get no consent state from One Privacy; block them until consent with the one-privacy-consent-updated dataLayer event."
      },
      {
        "type": "TEXT",
        "name": "waitForUpdate",
        "displayName": "Wait for update (milliseconds)",
        "simpleValueType": true,
        "defaultValue": 500,
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          },
          {
            "type": "POSITIVE_NUMBER"
          }
        ],
        "help": "How long Google tags wait for the visitor's consent choice before they run with the default state."
      },
      {
        "type": "CHECKBOX",
        "name": "adsDataRedaction",
        "checkboxText": "Enable ads_data_redaction",
        "simpleValueType": true,
        "defaultValue": true,
        "help": "Redacts ad identifiers in network requests while ad_storage is denied."
      },
      {
        "type": "CHECKBOX",
        "name": "urlPassthrough",
        "checkboxText": "Enable url_passthrough",
        "simpleValueType": true,
        "defaultValue": true,
        "help": "Passes ad click and session information in URLs while storage is denied."
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const setDefaultConsentState = require('setDefaultConsentState');
const updateConsentState = require('updateConsentState');
const getCookieValues = require('getCookieValues');
const decodeUriComponent = require('decodeUriComponent');
const encodeUriComponent = require('encodeUriComponent');
const injectScript = require('injectScript');
const gtagSet = require('gtagSet');
const makeInteger = require('makeInteger');

const CONSENT_COOKIE = 'onePrivacyConsent';
const GROUP_FUNCTIONAL = 'C0002';
const GROUP_PERFORMANCE = 'C0003';
const GROUP_TARGETING = 'C0004';
const SDK_BASE = 'https://api.oneprivacy.io/consent/v1/';
const DEVELOPER_ID = 'developer_id.dZjIxNT';

// Reads the consent groups the visitor already chose, for example "C0001,C0003".
const readStoredGroups = () => {
  const values = getCookieValues(CONSENT_COOKIE);
  if (!values || values.length === 0) {
    return null;
  }
  const pairs = values[0].split('&');
  for (let i = 0; i < pairs.length; i++) {
    const pair = pairs[i].split('=');
    if (pair[0] === 'groups' && pair.length > 1) {
      return decodeUriComponent(pair[1]).split(',');
    }
  }
  return null;
};

const toConsentState = (groups) => {
  const functional = groups.indexOf(GROUP_FUNCTIONAL) > -1 ? 'granted' : 'denied';
  const performance = groups.indexOf(GROUP_PERFORMANCE) > -1 ? 'granted' : 'denied';
  const targeting = groups.indexOf(GROUP_TARGETING) > -1 ? 'granted' : 'denied';
  return {
    ad_storage: targeting,
    ad_user_data: targeting,
    ad_personalization: targeting,
    analytics_storage: performance,
    functionality_storage: functional,
    personalization_storage: functional,
    security_storage: 'granted'
  };
};

const consentModeEnabled = data.consentModeCommands !== false;

if (consentModeEnabled) {
  gtagSet(DEVELOPER_ID, true);
  if (data.adsDataRedaction) {
    gtagSet('ads_data_redaction', true);
  }
  if (data.urlPassthrough) {
    gtagSet('url_passthrough', true);
  }
}

const ALL_REGIONS = 'ALL';

const DENY_ALL_ROW = {
  regions: ALL_REGIONS,
  adStorage: 'denied',
  analyticsStorage: 'denied',
  adUserData: 'denied',
  adPersonalization: 'denied',
  functionalityStorage: 'denied',
  personalizationStorage: 'denied'
};

const parseRegions = (value) => {
  if (!value) {
    return [];
  }
  return value.split(',')
    .map((code) => code.trim().toUpperCase())
    .filter((code) => code.length > 0 && code !== ALL_REGIONS);
};

const toDefaultState = (row) => {
  return {
    ad_storage: row.adStorage,
    ad_user_data: row.adUserData,
    ad_personalization: row.adPersonalization,
    analytics_storage: row.analyticsStorage,
    functionality_storage: row.functionalityStorage,
    personalization_storage: row.personalizationStorage,
    security_storage: 'granted',
    wait_for_update: makeInteger(data.waitForUpdate)
  };
};

if (consentModeEnabled) {
  const regionRows = data.regionDefaults && data.regionDefaults.length > 0 ? data.regionDefaults : [DENY_ALL_ROW];
  regionRows.forEach((row) => {
    const state = toDefaultState(row);
    const regions = parseRegions(row.regions);
    if (regions.length > 0) {
      state.region = regions;
    }
    setDefaultConsentState(state);
  });

  // A returning visitor already has a choice stored. Apply it before any tag runs.
  const storedGroups = readStoredGroups();
  if (storedGroups) {
    updateConsentState(toConsentState(storedGroups));
  }
}

const scriptUrl = SDK_BASE + encodeUriComponent(data.environment) + '/' + encodeUriComponent(data.projectId) + '/sdk.js?source=gtm-template' + (consentModeEnabled ? '' : '&consentMode=off');
injectScript(scriptUrl, data.gtmOnSuccess, data.gtmOnFailure, scriptUrl);


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "access_consent",
        "versionId": "1"
      },
      "param": [
        {
          "key": "consentTypes",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "ad_storage"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "ad_user_data"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "ad_personalization"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "analytics_storage"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "functionality_storage"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "personalization_storage"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "security_storage"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "wait_for_update"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "get_cookies",
        "versionId": "1"
      },
      "param": [
        {
          "key": "cookieAccess",
          "value": {
            "type": 1,
            "string": "specific"
          }
        },
        {
          "key": "cookieNames",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "onePrivacyConsent"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "write_data_layer",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keyPatterns",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "developer_id.dZjIxNT"
              },
              {
                "type": 1,
                "string": "ads_data_redaction"
              },
              {
                "type": 1,
                "string": "url_passthrough"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://api.oneprivacy.io/consent/v1/*"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios:
- name: Denies every storage type when the visitor has no stored consent
  code: |-
    mock('getCookieValues', []);

    runCode(mockData);

    assertApi('setDefaultConsentState').wasCalledWith({
      ad_storage: 'denied',
      ad_user_data: 'denied',
      ad_personalization: 'denied',
      analytics_storage: 'denied',
      functionality_storage: 'denied',
      personalization_storage: 'denied',
      security_storage: 'granted',
      wait_for_update: 500
    });
    assertApi('updateConsentState').wasNotCalled();
    assertApi('gtmOnSuccess').wasCalled();
- name: Sets one default per region row and applies the region codes
  code: |-
    mock('getCookieValues', []);
    mockData.regionDefaults = [
      {regions: 'All', adStorage: 'denied', analyticsStorage: 'denied', adUserData: 'denied', adPersonalization: 'denied', functionalityStorage: 'denied', personalizationStorage: 'denied'},
      {regions: ' us, ca ', adStorage: 'granted', analyticsStorage: 'granted', adUserData: 'granted', adPersonalization: 'granted', functionalityStorage: 'granted', personalizationStorage: 'granted'}
    ];

    runCode(mockData);

    assertApi('setDefaultConsentState').wasCalledWith({
      ad_storage: 'denied',
      ad_user_data: 'denied',
      ad_personalization: 'denied',
      analytics_storage: 'denied',
      functionality_storage: 'denied',
      personalization_storage: 'denied',
      security_storage: 'granted',
      wait_for_update: 500
    });
    assertApi('setDefaultConsentState').wasCalledWith({
      ad_storage: 'granted',
      ad_user_data: 'granted',
      ad_personalization: 'granted',
      analytics_storage: 'granted',
      functionality_storage: 'granted',
      personalization_storage: 'granted',
      security_storage: 'granted',
      wait_for_update: 500,
      region: ['US', 'CA']
    });
- name: Sends no Consent Mode command and flags the banner script when the commands checkbox is off
  code: |-
    mock('getCookieValues', ['groups=C0001,C0002,C0003,C0004&createdAt=2026-08-23T00:00:00.000Z']);
    mockData.consentModeCommands = false;

    runCode(mockData);

    assertApi('setDefaultConsentState').wasNotCalled();
    assertApi('updateConsentState').wasNotCalled();
    assertApi('gtagSet').wasNotCalled();
    assertThat(injectedUrl).isEqualTo('https://api.oneprivacy.io/consent/v1/live/p123abc/sdk.js?source=gtm-template&consentMode=off');
    assertApi('gtmOnSuccess').wasCalled();
- name: Declares the One Privacy developer id and the redaction settings
  code: |-
    mock('getCookieValues', []);

    runCode(mockData);

    assertApi('gtagSet').wasCalledWith('developer_id.dZjIxNT', true);
    assertApi('gtagSet').wasCalledWith('ads_data_redaction', true);
    assertApi('gtagSet').wasCalledWith('url_passthrough', true);
- name: Leaves the redaction settings alone when both checkboxes are off
  code: |-
    mock('getCookieValues', []);
    mockData.adsDataRedaction = false;
    mockData.urlPassthrough = false;

    runCode(mockData);

    assertApi('gtagSet').wasCalledWith('developer_id.dZjIxNT', true);
    assertApi('gtagSet').wasNotCalledWith('ads_data_redaction', true);
    assertApi('gtagSet').wasNotCalledWith('url_passthrough', true);
- name: Grants only analytics when the stored consent holds the performance group
  code: |-
    mock('getCookieValues', ['groups=C0001%2CC0003&createdAt=2026-08-23T00:00:00.000Z']);

    runCode(mockData);

    assertApi('updateConsentState').wasCalledWith({
      ad_storage: 'denied',
      ad_user_data: 'denied',
      ad_personalization: 'denied',
      analytics_storage: 'granted',
      functionality_storage: 'denied',
      personalization_storage: 'denied',
      security_storage: 'granted'
    });
- name: Grants every purpose when the stored consent holds all four groups
  code: |-
    mock('getCookieValues', ['groups=C0001,C0002,C0003,C0004&createdAt=2026-08-23T00:00:00.000Z']);

    runCode(mockData);

    assertApi('updateConsentState').wasCalledWith({
      ad_storage: 'granted',
      ad_user_data: 'granted',
      ad_personalization: 'granted',
      analytics_storage: 'granted',
      functionality_storage: 'granted',
      personalization_storage: 'granted',
      security_storage: 'granted'
    });
- name: Builds the Live banner url from the project id
  code: |-
    mock('getCookieValues', []);

    runCode(mockData);

    assertThat(injectedUrl).isEqualTo('https://api.oneprivacy.io/consent/v1/live/p123abc/sdk.js?source=gtm-template');
- name: Builds the Test banner url when the Test environment is chosen
  code: |-
    mock('getCookieValues', []);
    mockData.environment = 'test';

    runCode(mockData);

    assertThat(injectedUrl).isEqualTo('https://api.oneprivacy.io/consent/v1/test/p123abc/sdk.js?source=gtm-template');
setup: |-
  let injectedUrl;

  const mockData = {
    projectId: 'p123abc',
    environment: 'live',
    waitForUpdate: 500,
    consentModeCommands: true,
    adsDataRedaction: true,
    urlPassthrough: true
  };

  mock('injectScript', (url, onSuccess) => {
    injectedUrl = url;
    onSuccess();
  });


___NOTES___

Created on 8/23/2026


