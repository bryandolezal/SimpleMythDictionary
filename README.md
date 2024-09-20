# SimpleMythDictionary

# WORK IN PROGRESS

Simple dictionary for Age of Mythology Retold

Reminder that either the XS code needs to be run, or the trigger file be imported before using any of the functions below. You will get an error if the code for the dictionary isn't ran first.

# Allows you to store various datatypes in a simple dictionary

```
smdAddBool("startWithWalls", false);
smdSetBool("startWithWalls", true);
trChatSend(1, "startWithWalls: " + smdGetBool("startWithWalls"));

smdAddInt("startingResources", 100);
smdSetInt("startingResources", 1000);
trChatSend(1, "startingResources: " + smdGetInt("startingResources"));

smdAddFloat("gamePopulation", 50.0);
smdSetFloat("gamePopulation", 100.0);
trChatSend(1, "gamePopulation: " + smdGetFloat("gamePopulation"));

smdAddString("townCenterResCost", "100f 100g");
smdSetString("townCenterResCost", "200f 200g");
trChatSend(1, "townCenterResCost: " + smdGetString("townCenterResCost"));

smdAddVector("startingPosition", vector(1.0, 2.0, 3.0));
smdSetVector("startingPosition", vector(4.0, 5.0, 6.0));
trChatSend(1, "startingPosition: " + smdGetVector("startingPosition"));

smdAddCameraInfo("cameraInfo", "vector(1.0, 2.0, 3.0), vector(4.0, 5.0, 6.0), vector(7.0, 8.0, 9.0), vector(10.0, 11.0, 12.0)");
smdSetCameraInfo("cameraInfo", "vector(13.0, 14.0, 15.0), vector(16.0, 17.0, 18.0), vector(19.0, 20.0, 21.0), vector(22.0, 23.0, 24.0)");
trChatSend(1, "cameraInfo: " + smdGetCameraInfo("cameraInfo"));

int[] unitArray = new int(0, 0);
unitArray.add(1);
unitArray.add(2);
smdAddUnitArray("unitsToDelete", unitArray);
unitArray.add(3);
smdSetUnitArray("unitsToDelete", unitArray);

// Can't parse int[] into a string, using size() as an example
int[] pulledUnitArray = smdGetUnitArray("unitsToDelete");
trChatSend(1, "unitArray: " + pulledUnitArray.size());
```
