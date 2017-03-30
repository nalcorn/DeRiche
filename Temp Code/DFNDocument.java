package tests;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.PrintStream;
import java.util.ArrayList;

public class DFNDocument {

    public static final int BODY_CHECK = 1;
    public static final int SEIZURE_ACTIVITY_CHECKLIST = 2;
    public static final int SINGLE_ABSENCE = 3;
    public static final int WEIGHTBP_CHART = 4;
    public static final int COMMUNITY_CONNECTION_ACTIVITY_SHEET = 5;
    public static final int BLANK_MONTHLY_DATA_TRACKING_LOG = 6;
    public static final int INTERNAL_INCIDENT_FORM = 7;
    public static final int REPOSITIONING_FORM = 8;
    
    private File file;
    
    private ArrayList<String> values;
    private ArrayList<String> tags;
    
	public DFNDocument() {
		
        values = new ArrayList<String>();
        tags = new ArrayList<String>();
        
	}
    
	public DFNDocument(String s) {
		
        values = new ArrayList<String>();
        tags = new ArrayList<String>();
        
        createFrom(s);
        
	}
	
	public DFNDocument(String s, int type) {
		
        values = new ArrayList<String>();
        tags = new ArrayList<String>();
        
        createNew(s, type);
	}
	
	public void setFileName(String s) {
		file = new File(s);
	}
	
    public File getFile() {
    	
    	if (file != null) {
            return file;
    	} else {
    		return null;
    	}
    }
    
    public String[] getValues() {
        
        if (values.size() > 0) {
            return null;
        }
        
        String[] array = new String[values.size()];
        
        for (int i = 0; i < values.size(); i++) {
            array[i] = values.get(i);
        }
        
        return array;
    }
    
    public String[] getTags() {
        
        if (tags.size() > 0) {
            return null;
        }
        
        String[] array = new String[tags.size()];
        
        for (int i = 0; i < tags.size(); i++) {
            array[i] = tags.get(i);
        }
        
        return array;
    }
    
    public void setParameter(String tag, String parameter) {
        for (int i = 0; i < values.size(); i++) {
            if (tag.toUpperCase().equals(tags.get(i))) {
                values.set(i, parameter);
            }
        }
    }
    
    public String getParameter(String tag) {
        for (int i = 0; i < tags.size(); i++) {
            if (tag.toUpperCase().equals(tags.get(i))) {
                return values.get(i);
            }
        }
        
        return null;
    }
    
    public boolean createNew(String s, int type) {
    	
    	String[] dataTags = null;
    	
		file = new File(s);
    	
    	if (type == BODY_CHECK) {
    		dataTags = new String[] {"CANVASURI", "SIGURI", "FIRSTNAME", "LASTNAME", "WHAT", "WHERE", "WHEN", "WHY", "FIRSTAID", "RECOMMEND"};
    	}

		values.clear();
		tags.clear();
		
		for (int i = 0; i < dataTags.length; i++) {
    		values.add("");
    		tags.add(dataTags[i]);
		}
    	
    	return false;
    }
    
    public boolean createFrom(String s) {
        
        FileReader reader = null;
        BufferedReader buffReader = null;
        
        try {
        	
        	file = new File(s);
            
            reader = new FileReader(new File(s));
            buffReader = new BufferedReader(reader);
            
            String line;
            
            while ((line = buffReader.readLine()) != null) {
                
                int delim = line.indexOf(";");
                
                values.add(line.substring(delim + 1, line.length()));
                tags.add(line.substring(0, delim));
                
            }
        }
        
        catch (Exception ex) {
            ex.printStackTrace();
            
            file = null;
            
            values = null;
            tags = null;
            
            return false;
        }
        
        finally {
            
            try {
                reader.close();
                buffReader.close();
            }
            
            catch (Exception ex) {
                ex.printStackTrace();
            }
        }
        
        return true;
    }
    
    public boolean write() {
        
        FileOutputStream dout = null;
        PrintStream pout = null;
        
        try {
            dout = new FileOutputStream(file);
            pout = new PrintStream(dout);
            
            for (int i = 0; i < values.size(); i++) {
                pout.println(tags.get(i) + ";" + values.get(i));
            }
        }
        
        catch (Exception ex) {
            ex.printStackTrace();
            
            return false;
        }
        
        finally {
            
            try {
            	dout.close();
            	pout.close();
            }
            
            catch (Exception ex) {
                ex.printStackTrace();
            }
        }
        
        return true;
    }
    
    @Override
    public String toString() {
    	
    	String s = "File Name: " + file.getName() + "\n";
    	
    	for (int i = 0; i < tags.size(); i++) {
    		s += "Row #" + (i + 1) + ": Tag = " + tags.get(i) + "  Value = " + values.get(i) + "\n";
    	}
    	
    	return s;
    }

    @Override
    public void finalize() {
        file.delete();

        super.finalize();
    }
}
