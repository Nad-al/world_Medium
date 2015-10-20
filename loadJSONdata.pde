
void loadJson ()
{
  ProgramData = new JSONArray();
  for (int i = 0; i < filePath.length; i++) 
  {
    //
    JSONArray ja = loadJSONArray (filePath [i]);
    ProgramData.append (ja);
  }

}

void prepareData ()
{
  tags = new String [0];

  for (int i = 0; i < ProgramData.size (); i++)
  {
    JSONArray a = ProgramData.getJSONArray(i);
    
    for (int j = 0; j < a.size (); j++)
    {
      JSONObject p = a.getJSONObject(j); 

      String tagList = p.getString ("tags");

      tags = (String [] ) append (tags, tagList);
     
    }
  }
}