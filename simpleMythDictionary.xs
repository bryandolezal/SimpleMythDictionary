//================================================================================================== CAMERA INFO

class CameraInfo
{
    float[] floatValues = default;
};

CameraInfo stringToCameraInfo(string _cameraInfo = "default")
{
    float[] camFloats = new float(12, 0);
    string camCut = _cameraInfo;
    int arrayOffset = 0;

    string vectorString = "";
    int commaLoc = 0;

    for(int i = 0; i < 4; i++)
    {
        int vector_start = xsStringFindFirst(camCut, "(", 0, false);
        int vector_end = xsStringFindFirst(camCut, ")", 0, false);

        vectorString = xsStringSubstring(camCut, vector_start + 1, vector_end - 1);
        camCut = xsStringSubstring(camCut, vector_end + 3, xsStringLength(camCut));

        commaLoc = xsStringFindFirst(vectorString, ",", 0, false);
        camFloats[arrayOffset] = xsStringToFloat(xsStringSubstring(vectorString, 0, commaLoc - 1));
        arrayOffset++;

        vectorString = xsStringSubstring(vectorString, commaLoc + 1, xsStringLength(vectorString));
        commaLoc = xsStringFindFirst(vectorString, ",", 0, false);
        camFloats[arrayOffset] = xsStringToFloat(xsStringSubstring(vectorString, 0, commaLoc - 1));
        arrayOffset++;

        vectorString = xsStringSubstring(vectorString, commaLoc + 1, xsStringLength(vectorString));
        camFloats[arrayOffset] = xsStringToFloat(vectorString);
        arrayOffset++;
    }

    CameraInfo ci;
    ci.floatValues = camFloats;

    return ci;
}

string cameraInfoToString(CameraInfo _cameraInfo)
{
    string cameraInfoString = "";

    cameraInfoString += "vector(" + _cameraInfo.floatValues[0] + "," + _cameraInfo.floatValues[1] + "," + _cameraInfo.floatValues[2] + "), ";
    cameraInfoString += "vector(" + _cameraInfo.floatValues[3] + "," + _cameraInfo.floatValues[4] + "," + _cameraInfo.floatValues[5] + "), ";
    cameraInfoString += "vector(" + _cameraInfo.floatValues[6] + "," + _cameraInfo.floatValues[7] + "," + _cameraInfo.floatValues[8] + "), ";
    cameraInfoString += "vector(" + _cameraInfo.floatValues[9] + "," + _cameraInfo.floatValues[10] + "," + _cameraInfo.floatValues[11] + ")";

    return cameraInfoString;
}

//================================================================================================== Unit Array

class UnitArray
{
    int[] unitIDs = default;
};

UnitArray intArrayToUnitArray(int[] _unitArray = default)
{
    UnitArray ua;
    ua.unitIDs = _unitArray;

    return ua;
}

int[] unitArrayToIntArray(UnitArray _unitArray)
{
    return _unitArray.unitIDs;
}

//================================================================================================== SIMPLE MYTH DICTIONARY

class SimpleMythDictionary
{
    int MAX_ENTRIES = 100;
    bool initalized = false;
    int[] keys = default;
    int[] keyValueIndices = default;
    int entryCount = 0;

    bool[] boolValues = default;
    int[] intValues = default;
    float[] floatValues = default;
    string[] stringValues = default;
    vector[] vectorValues = default;
    CameraInfo[] cameraInfoValues = default;
    UnitArray[] unitArrayValues = default;

    void Initalize()
    {
        if (initalized == false)
        {
            keys = new int(MAX_ENTRIES, 0);
            keyValueIndices = new int(MAX_ENTRIES, 0);

            initalized = true;
        }
    }

    int GetHash(string key = "default")
    {
        return kbGetAnimationID(key);
    }

    int FindKeyFromHash(int hash = 0)
    {
        for (int i = 0; i < entryCount; i++)
        {
            if (keys[i] == hash)
            {
                return i;
            }
        }
        return -1;
    }

    int FindKey(string key = "default")
    {
        int hash = GetHash(key);
        return FindKeyFromHash(hash);
    }

    int AddKey(string key = "default")
    {
        int hash = GetHash(key);

        // Check if key already exists
        if(FindKeyFromHash(hash) != -1)
        {
            return -1;
        }

        // Check if we have room for more entries
        if(entryCount >= MAX_ENTRIES)
        {
            return -1;
        }

        int index = entryCount;
        keys[index] = hash;
        entryCount++;
        return index;
    }
};

SimpleMythDictionary smd;

//================================================================================================== BOOL

bool smdAddBool(string key = "default", bool value = false)
{
    int keyIndex = smd.AddKey(key);

    if(keyIndex != -1)
    {
        smd.boolValues.add(value);
        smd.keyValueIndices[keyIndex] = smd.boolValues.size() - 1;
        return true;
    }

    return false;
}

bool smdSetBool(string key = "default", bool value = false)
{
    int keyIndex = smd.FindKey(key);

    if(keyIndex != -1)
    {
        int valueIndex = smd.keyValueIndices[keyIndex];
        smd.boolValues[valueIndex] = value;
        return true;
    }

    return false;
}

bool smdGetBool(string key = "default")
{
    int keyIndex = smd.FindKey(key);

    if (keyIndex != -1)
    {
        int valueIndex = smd.keyValueIndices[keyIndex];
        return smd.boolValues[valueIndex];
    }

    return false;
}

//================================================================================================== INT

bool smdAddInt(string key = "default", int value = 0)
{
    int keyIndex = smd.AddKey(key);

    if(keyIndex != -1)
    {
        smd.intValues.add(value);
        smd.keyValueIndices[keyIndex] = smd.intValues.size() - 1;
        return true;
    }

    return false;
}

bool smdSetInt(string key = "default", int value = 0)
{
    int keyIndex = smd.FindKey(key);

    if(keyIndex != -1)
    {
        int valueIndex = smd.keyValueIndices[keyIndex];
        smd.intValues[valueIndex] = value;
        return true;
    }

    return false;
}

int smdGetInt(string key = "default")
{
    int keyIndex = smd.FindKey(key);

    if (keyIndex != -1)
    {
        int valueIndex = smd.keyValueIndices[keyIndex];
        return smd.intValues[valueIndex];
    }

    return 0;
}

//================================================================================================== FLOAT

bool smdAddFloat(string key = "default", float value = 0.0)
{
    int keyIndex = smd.AddKey(key);

    if(keyIndex != -1)
    {
        smd.floatValues.add(value);
        smd.keyValueIndices[keyIndex] = smd.floatValues.size() - 1;
        return true;
    }

    return false;
}

bool smdSetFloat(string key = "default", float value = 0.0)
{
    int keyIndex = smd.FindKey(key);

    if(keyIndex != -1)
    {
        int valueIndex = smd.keyValueIndices[keyIndex];
        smd.floatValues[valueIndex] = value;
        return true;
    }

    return false;
}

float smdGetFloat(string key = "default")
{
    int keyIndex = smd.FindKey(key);

    if (keyIndex != -1)
    {
        int valueIndex = smd.keyValueIndices[keyIndex];
        return smd.floatValues[valueIndex];
    }

    return 0.0;
}

//================================================================================================== STRING

bool smdAddString(string key = "default", string value = "default")
{
    int keyIndex = smd.AddKey(key);

    if(keyIndex != -1)
    {
        smd.stringValues.add(value);
        smd.keyValueIndices[keyIndex] = smd.stringValues.size() - 1;
        return true;
    }

    return false;
}

bool smdSetString(string key = "default", string value = "default")
{
    int keyIndex = smd.FindKey(key);

    if(keyIndex != -1)
    {
        int valueIndex = smd.keyValueIndices[keyIndex];
        smd.stringValues[valueIndex] = value;
        return true;
    }

    return false;
}

string smdGetString(string key = "default")
{
    int keyIndex = smd.FindKey(key);

    if (keyIndex != -1)
    {
        int valueIndex = smd.keyValueIndices[keyIndex];
        return smd.stringValues[valueIndex];
    }

    return "default";
}

//================================================================================================== VECTOR

bool smdAddVector(string key = "default", vector value = cOriginVector)
{
    int keyIndex = smd.AddKey(key);

    if(keyIndex != -1)
    {
        smd.vectorValues.add(value);
        smd.keyValueIndices[keyIndex] = smd.vectorValues.size() - 1;
        return true;
    }

    return false;
}

bool smdSetVector(string key = "default", vector value = cOriginVector)
{
    int keyIndex = smd.FindKey(key);

    if(keyIndex != -1)
    {
        int valueIndex = smd.keyValueIndices[keyIndex];
        smd.vectorValues[valueIndex] = value;
        return true;
    }

    return false;
}

vector smdGetVector(string key = "default")
{
    int keyIndex = smd.FindKey(key);

    if (keyIndex != -1)
    {
        int valueIndex = smd.keyValueIndices[keyIndex];
        return smd.vectorValues[valueIndex];
    }

    return cOriginVector;
}

//================================================================================================== CAMERA INFO

bool smdAddCameraInfo(string key = "default", string value = "default")
{
    int keyIndex = smd.AddKey(key);

    if(keyIndex != -1)
    {
        CameraInfo ci = stringToCameraInfo(value);
        smd.cameraInfoValues.add(ci);
        smd.keyValueIndices[keyIndex] = smd.cameraInfoValues.size() - 1;
        return true;
    }

    return false;
}

bool smdSetCameraInfo(string key = "default", string value = "default")
{
    int keyIndex = smd.FindKey(key);

    if(keyIndex != -1)
    {
        CameraInfo ci = stringToCameraInfo(value);
        int valueIndex = smd.keyValueIndices[keyIndex];
        smd.cameraInfoValues[valueIndex] = ci;
        return true;
    }

    return false;
}

string smdGetCameraInfo(string key = "default")
{
    int keyIndex = smd.FindKey(key);

    if (keyIndex != -1)
    {
        int valueIndex = smd.keyValueIndices[keyIndex];

        string cameraInfoString = cameraInfoToString(smd.cameraInfoValues[valueIndex]);
        return cameraInfoString;
    }

    return "default";
}

//================================================================================================== UNIT ARRAY

bool smdAddUnitArray(string key = "default", int[] value = default)
{
    int keyIndex = smd.AddKey(key);

    if(keyIndex != -1)
    {
        UnitArray ua = intArrayToUnitArray(value);
        smd.unitArrayValues.add(ua);
        smd.keyValueIndices[keyIndex] = smd.unitArrayValues.size() - 1;
        return true;
    }

    return false;
}

bool smdSetUnitArray(string key = "default", int[] value = default)
{
    int keyIndex = smd.FindKey(key);



    if(keyIndex != -1)
    {
        UnitArray ua = intArrayToUnitArray(value);
        int valueIndex = smd.keyValueIndices[keyIndex];
        smd.unitArrayValues[valueIndex] = ua;
        return true;
    }

    return false;
}

int[] smdGetUnitArray(string key = "default")
{
    int keyIndex = smd.FindKey(key);

    if (keyIndex != -1)
    {
        int valueIndex = smd.keyValueIndices[keyIndex];
        int[] unitArray = unitArrayToIntArray(smd.unitArrayValues[valueIndex]);
        return unitArray;
    }

    return new int(0, 0);
}

//==================================================================================================

rule _Initalize_Simple_Myth_Dictionary
highFrequency
runImmediately
active
{
    smd.Initalize();

    xsDisableRule("_Initalize_Simple_Myth_Dictionary");
    trDisableRule("Initalize_Simple_Myth_Dictionary");
}

rule _Test_Simple_Myth_Dictionary
highFrequency
inactive
{
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

    smdAddVector("startingVillagers", vector(1.0, 2.0, 3.0));
    smdSetVector("startingVillagers", vector(4.0, 5.0, 6.0));
    trChatSend(1, "startingVillagers: " + smdGetVector("startingVillagers"));

    smdAddCameraInfo("cameraInfo", "vector(1.0, 2.0, 3.0), vector(4.0, 5.0, 6.0), vector(7.0, 8.0, 9.0), vector(10.0, 11.0, 12.0)");
    smdSetCameraInfo("cameraInfo", "vector(13.0, 14.0, 15.0), vector(16.0, 17.0, 18.0), vector(19.0, 20.0, 21.0), vector(22.0, 23.0, 24.0)");
    trChatSend(1, "cameraInfo: " + smdGetCameraInfo("cameraInfo"));

    xsDisableRule("_Test_Simple_Myth_Dictionary");
    trDisableRule("Test_Simple_Myth_Dictionary");
}