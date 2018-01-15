---
title: JSON array Vitals NEWS
keywords: MDT
summary: "JSON for Vitals module"
sidebar: angular_sidebar
permalink: angular-vitals-JSON.html
folder: angular/plugin-tiles
filename: angular-vitals-JSON.md
---
The example JSON object used to dummy the data within Vitals module
```
vitals = [  
        {  
          sourceId: '1',  
          seriesNumber: 1,  
          source: 'Marand',
          author: 'ripple_osi',
          dateCreate: Date.parse(new Date()),
          vitalsSigns: {
            respirationRate: {
              value: 25,
              status: 'warning'
            },
            oxygenSaturation: {
              value: 97,
              status: 'danger'
            },
            oxygenSupplemental: {
              value: 'N'
            },
            systolicBP: {
              value: 90,
              status: 'danger'
            }, 
            distolicBP: {
              value: 60,
              status: 'danger'
            },
            heartRate: {
              value: 45,
              status: 'success'
            },
            temperature: {
              value: 35.4,
              status: 'success'
            },
            levelOfConsciousness: {
              value: 'A'
            },
            newsScore: {
              value: 3,
              status: 'danger'
            }
          }
        }, {
          sourceId: '2',
          seriesNumber: 2,
          source: 'EtherCIS',
          author: 'ripple_osi',
          dateCreate: Date.parse(new Date(date.setDate(date.getDate()-1))),
          vitalsSigns: {
            respirationRate: {
              value: 29,
              status: 'warning'
            },
            oxygenSaturation: {
              value: 115,
              status: 'success'
            },
            oxygenSupplemental: {
              value: 'N'
            },
            systolicBP: {
              value: 60,
              status: 'warning'
            }, 
            distolicBP: {
              value: 78,
              status: 'warning'
            },
            heartRate: {
              value: 99,
              status: 'danger'
            },
            temperature: {
              value: 36.6,
              status: 'success'
            },
            levelOfConsciousness: {
              value: 'B'
            },
            newsScore: {
              value: 3
            }
          }
        }, {
          sourceId: '3',
          seriesNumber: 3,
          source: 'Marand',
          author: 'ripple_osi',
          dateCreate: Date.parse(new Date(date.setDate(date.getDate()-4))),
          vitalsSigns: {
            respirationRate: {
              value: 35,
              status: 'danger'
            },
            oxygenSaturation: {
              value: 69,
              status: 'warning'
            },
            oxygenSupplemental: {
              value: 'N'
            },
            systolicBP: {
              value: 92,
              status: 'warning'
            }, 
            distolicBP: {
              value: 69,
              status: 'warning'
            },
            heartRate: {
              value: 74,
              status: 'danger'
            },
            temperature: {
              value: 39.9,
              status: 'success'
            },
            levelOfConsciousness: {
              value: 'C'
            },
            newsScore: {
              value: 2,
              status: 'warning'
            }
          }
        }, {
          sourceId: '4',
          seriesNumber: 4,
          source: 'EtherCIS',
          author: 'ripple_osi',
          dateCreate: Date.parse(new Date(date.setDate(date.getDate()-5))),
          vitalsSigns: {
            respirationRate: {
              value: 25,
              status: 'success'
            },
            oxygenSaturation: {
              value: 97,
              status: 'success'
            },
            oxygenSupplemental: {
              value: 'N'
            },
            systolicBP: {
              value: 93,
              status: 'success'
            }, 
            distolicBP: {
              value: 63,
              status: 'success'
            },
            heartRate: {
              value: 45,
              status: 'success'
            },
            temperature: {
              value: 40.0,
              status: 'success'
            },
            levelOfConsciousness: {
              value: 'D'
            },
            newsScore: {
              value: 1,
              status: 'success'
            }
          }
        },
      ];
```
