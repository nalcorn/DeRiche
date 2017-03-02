package DAO;

import java.sql.PreparedStatement;

/**
 * The {@link DAO.Accessible} interface allows objects to use methods from the {@link DAO.DBConnection} class.<br><br>
 * 
 * Date: 3/01/2017
 *
 * @author Cameron Randolph
 *
 * @version 1.2
 */
public interface Accessible {

	/**
	 * Sets all designated parameters for a {@link java.sql.PreparedStatement}.
	 * 
	 * @author Cameron Randolph
	 * 
	 * @param statement the {@link java.sql.PreparedStatement} which will have its designated parameters set
	 * @param values the values with which to set the designated parameters of the {@link java.sql.PreparedStatement}
	 * 
	 * @return a {@link java.sql.PreparedStatement} with all of its designated parameters set
	 */
    public abstract PreparedStatement setStatementValues(PreparedStatement statement, Object[] values);
    
    /**
     * Retrieves the primary key for the class implementing the Accessible interface.
     * 
     * @author Cameron Randolph
     * 
     * @return an Object representing the primary key of a table in a database
     */
    public abstract Object getPrimaryKey();
    
    /**
     * Retrieves the primary key index for the class implementing the Accessible interface.
     * 
     * @author Cameron Randolph
     * 
     * @return an int representing the index of the primary key of a table in a database
     */
    public abstract int getPrimaryKeyIndex();
    
}
