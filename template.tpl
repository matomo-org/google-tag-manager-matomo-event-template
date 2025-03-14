﻿___TERMS_OF_SERVICE___

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
  "displayName": "Matomo Event \u0026 Goal Tracking",
  "brand": {
    "id": "brand_matomo",
    "displayName": "",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAIAAAD8GO2jAAADg0lEQVRIie2WXWxURRTHz8ydO/fubru7aWlrv4QW2vIh4AohYDYqLQ8aA5EQnwySGPURNTEmPviiGH0wmuAHBPABQqTGJ2NCaaqGKrYlaa0NJTRtpbvQhPYudW139967e2fm+CJ0d90KD/C28zhn5v+b+Z85J0MQER7moA9VvQwoAx7IYCsFlMLegVj/8Gw2J7Z21OzvagtVGHejmLJyo9+ruQkwK/X1naz9qZV0SMlCE1K9f3ywu2cCAAghQqrIhtov3u16ZFUAAJQ1bX/7lkr8SagGiEApj75qdB0uCSht0Xe9k+d6JgyDmQYzuBbw6X9MJI6cGJIKAaXb+wnevk64H5gBuglUz176On3tp/sF3JhLfdk9ynWN5E36TdY3GD93YQoyc3J2DJiZ5wJhQKYuHk06C/cGIOKnp4etpK1RUhTSGT36zeiVsRinCgqDlLLFZOzH8VP3Bpz/daZ3IGbyEsmnlCylnCPdN9I0REEVqViGeXX+wkxy6P8AiaTz2ZkRggArdFjOyOhN+dX1zZwiI4oAEECTyBlkV0J6wEd/i510xOIKAITPz/4et22t3gSTgigNMTTZPb/1w/ie2WxYILUV7/ur/Rit0et0n89ccOKXb57NX7/8TH+ZnHu9fwRW+4BRYks6tqSNLAEAFOcCACCnWJg5dTyVEb5c8NauZ35uaAowQwNABNi3/oNHw9sKbrDoiY8Tca/ND5wCAazU5NNVakdICVVCHoBTkVF80q61FN342FBNLWdcu3NieSl+IivSBYDzljXupHUk/7qvAAWau6rXbKgWXmkGAQQpWlsHm9bYht+4e1FKmJWZnlroLwCMp1JFThAEm+Chlx+vq/JLVSIfnoebO/TIE7cCQR8tqBkgQKz0VAEgyFiRBgKgVNvba98+tF39B6AUBiv0jw7vfW7nS8AkFO9FgwUKAHtqVvk0TeX1payUW4LBRsaf3712f+c62/XyJdyceO3AlrXNlZHmFxvDm4TK5qkrRo2WqicLANtCoTdbWhDAkdJVKiPlar//vfY2TigAvPPKjmikyXY9NyfcrHCy4oXOtoN7NwKATs3drW+EzUZPOkLlPOUi4s7mgw2Vm+5YnXfqgWSyx7L+9ryOQMWB+vp6c7k/26744eL08NV5TaPRSMOz0RamLddQOpe4ZvXdtmdMFlxXHW0ORZbzUf4XlQFlAPwDXYWGXACj6aEAAAAASUVORK5CYII\u003d"
  },
  "description": "This tag helps you to track events and goals into your Matomo instance.\n\nNote: This tag requires \"Matomo Tracking Tag for Matomo Cloud\" tag to be setup first.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "RADIO",
    "name": "trackingType",
    "displayName": "Tracking Type",
    "radioItems": [
      {
        "value": "event",
        "displayValue": "Event"
      },
      {
        "value": "goal",
        "displayValue": "Goal"
      }
    ],
    "simpleValueType": true,
    "help": "Choose which action should be executed when this tag is fired."
  },
  {
    "type": "TEXT",
    "name": "eventCategory",
    "displayName": "Event Category",
    "simpleValueType": true,
    "enablingConditions": [
      {
        "paramName": "trackingType",
        "paramValue": "event",
        "type": "EQUALS"
      }
    ],
    "help": "The event\u0027s category, for example Videos, Music, Games…"
  },
  {
    "type": "TEXT",
    "name": "eventAction",
    "displayName": "Event Action",
    "simpleValueType": true,
    "enablingConditions": [
      {
        "paramName": "trackingType",
        "paramValue": "event",
        "type": "EQUALS"
      }
    ],
    "help": "The event\u0027s action, for example Play, Pause, Duration, Add Playlist, Downloaded, Clicked…"
  },
  {
    "type": "TEXT",
    "name": "eventName",
    "displayName": "Event Name",
    "simpleValueType": true,
    "enablingConditions": [
      {
        "paramName": "trackingType",
        "paramValue": "event",
        "type": "EQUALS"
      }
    ],
    "help": "The event\u0027s object Name, for example a particular Movie name, or Song name, or File name…"
  },
  {
    "type": "TEXT",
    "name": "eventValue",
    "displayName": "Event Value",
    "simpleValueType": true,
    "enablingConditions": [
      {
        "paramName": "trackingType",
        "paramValue": "event",
        "type": "EQUALS"
      }
    ],
    "help": "Specify a value or choose a variable.\n\nNote: The value must be numeric. Negative values are allowed but non-numeric values will automatically be replaced with 0.",
    "valueValidators": [
      {
        "type": "NUMBER"
      }
    ],
    "defaultValue": 0
  },
  {
    "type": "TEXT",
    "name": "goalID",
    "displayName": "Goal ID",
    "simpleValueType": true,
    "help": "The ID of the goal you want to track manually.",
    "enablingConditions": [
      {
        "paramName": "trackingType",
        "paramValue": "goal",
        "type": "EQUALS"
      }
    ],
    "notSetText": "Field is required"
  },
  {
    "type": "TEXT",
    "name": "goalRevenue",
    "displayName": "Goal Revenue (optional)",
    "simpleValueType": true,
    "help": "The estimated revenue value to track when the goal is triggered manually. As this value will be used in a calculation, it must either be a numeric value or it must reference a variable that contains a numeric value. If this field is empty or references a variable that doesn\u0027t contain a valid numeric value, the value will default to the revenue configured as part of the goal being triggered. A valid numeric value is something like 2430 or 2430.00 (note the absence of commas).",
    "enablingConditions": [
      {
        "paramName": "trackingType",
        "paramValue": "goal",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "PARAM_TABLE",
    "name": "customDimensions",
    "displayName": "Custom Dimension",
    "paramTableColumns": [
      {
        "param": {
          "type": "TEXT",
          "name": "index",
          "displayName": "",
          "simpleValueType": true
        },
        "isUnique": false
      },
      {
        "param": {
          "type": "TEXT",
          "name": "value",
          "displayName": "",
          "simpleValueType": true
        },
        "isUnique": false
      }
    ],
    "help": "Optionally set one or multiple custom dimensions.",
    "newRowButtonText": "Add Custom Dimension",
    "newRowTitle": "Custom Dimension"
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

// Enter your template code here.
var log = require('logToConsole');
var createQueue = require('createQueue');
var injectScript = require('injectScript');
log('data =', data);

var onSuccess = function() {
  log('Event was added successfully');
  data.gtmOnSuccess();
};

var onFailure = function() {
  log('Failed to add an Event');
  data.gtmOnFailure();
};

var _paq = createQueue('_paq');

if (data.trackingType === 'event' && data.eventCategory) {
  var dimensionsObject = getCustomDimensionObject();
  _paq(['trackEvent', data.eventCategory, data.eventAction, data.eventName, data.eventValue, dimensionsObject]);
  onSuccess();
} else if (data.trackingType === 'goal' && data.goalID) {
  var dimensionsObject = getCustomDimensionObject();
  _paq(['trackGoal', data.goalID, data.goalRevenue, dimensionsObject]);
  onSuccess();
} else {
  onFailure();
}


function getCustomDimensionObject()
{
  var dimensionsObject = {};
  if (data.customDimensions) {
    log('customDimensions =', data.customDimensions);
    for (var i=0;i<data.customDimensions.length;i++) {
      if(data.customDimensions[i].index) {
       log('customDimension' + data.customDimensions[i].index + ' = ', data.customDimensions[i]);
       dimensionsObject[data.customDimensions[i].index] = data.customDimensions[i].value; 
      }
    }
  }
  
  log('dimensionsObject =', dimensionsObject);
  
  return dimensionsObject;
}


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
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
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "_paq"
                  },
                  {
                    "type": 8,
                    "boolean": true
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
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": []
    },
    "isRequired": true
  }
]


___TESTS___

scenarios:
- name: eventTest
  code: |-
    const mockData = {
      trackingType: "event",
      eventCategory: "Test Category",
      eventAction: "Test Action",
      eventName: "Test Name",
      eventValue: 1
    };

    // Call runCode to run the template's code.
    runCode(mockData);

    // Verify that the tag finished successfully.
    assertApi('gtmOnSuccess').wasCalled();
- name: eventTestFailure
  code: |-
    const mockData = {
      trackingType: "event"
    };

    // Call runCode to run the template's code.
    runCode(mockData);

    // Verify that the tag finished successfully.
    assertApi('gtmOnFailure').wasCalled();
- name: eventTestCustomDimensions
  code: |-
    const mockData = {
      trackingType: "event",
      eventCategory: "Test Category",
      eventAction: "Test Action",
      eventName: "Test Name",
      eventValue: 1,
      customDimensions: [{index: 1, value: 'test'}, {index: 2, value: 'test2'}]
    };

    // Call runCode to run the template's code.
    runCode(mockData);

    // Verify that the tag finished successfully.
    assertApi('gtmOnSuccess').wasCalled();
- name: goalTest
  code: |-
    const mockData = {
      trackingType: "goal",
      goalID: 1
    };

    // Call runCode to run the template's code.
    runCode(mockData);

    // Verify that the tag finished successfully.
    assertApi('gtmOnSuccess').wasCalled();
- name: goalWithRevenue
  code: |-
    const mockData = {
      trackingType: "goal",
      goalID: 1,
      goalRevenue: 10
    };

    // Call runCode to run the template's code.
    runCode(mockData);

    // Verify that the tag finished successfully.
    assertApi('gtmOnSuccess').wasCalled();
- name: goalWithCustomDimensions
  code: |-
    const mockData = {
      trackingType: "goal",
      goalID: 1,
      goalRevenue: 10,
      customDimensions: [{index: 1, value: 'test'}, {index: 2, value: 'test2'}]
    };

    // Call runCode to run the template's code.
    runCode(mockData);

    // Verify that the tag finished successfully.
    assertApi('gtmOnSuccess').wasCalled();


___NOTES___

Created on 14/02/2025, 10:08:44

