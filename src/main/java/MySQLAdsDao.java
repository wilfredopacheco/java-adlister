import com.mysql.cj.jdbc.Driver;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {
    // This creates an instance of a global variable is our only connection to the database.
    private Connection connect;
    // This calls and creates an instance of a global variable for the database login.
    Config config = new Config();
    public MySQLAdsDao(){
        try {
            // The driver manager is our plug to pass information to the database.
            DriverManager.registerDriver(new Driver());
            // Here the connection is defined with the properties stored in config class.
            connect = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUsername(),
                    config.getPassword());
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    // Here we have a method that is required by the implementation defined in the Ads interface.
    @Override
    public List<Ad> all(){
        // Query string statement that requests all the ads from the database.
        String query = "SELECT * FROM ads";
        // This list is made to have a place to store the data once it is call upon.
        List<Ad> allAds = new ArrayList<>();
         try {
             // Here we call the connection to create a statement that prints strings to call query on mysql
             Statement stmt = connect.createStatement();
             // Here the ResultSet is the return values requested from the query statement
             ResultSet rs = stmt.executeQuery((query));
             // The .next() is required regardless of the number of objects receiving
             while (rs.next()){
                 allAds.add(createAdObj(rs));
             }
         } catch (SQLException e) {
             // The catch is needed to use the calls in the try
             e.printStackTrace();
         }
                return allAds; // Returning the list once completed
    }

    public Ad createAdObj(ResultSet rs){
        // This is a constructor we call on from different methods to create a ad object
        // and keeps us from copying this code through out the class.
        try {
            return new Ad(rs.getLong("user_id"),
                    rs.getString("title"),
                    rs.getString("description"));

        } catch (SQLException e){
            e.printStackTrace();
            return null;
        }
    }
    @Override
    public Long insert(Ad ad){
        String query = String.format("insert into ads(user_id, title, description) values(%d,'%s', '%s')",ad.getUserId(), ad.getTitle(), ad.getDescription());
        try {
            Statement stmt = connect.createStatement();
            stmt.executeUpdate(query, Statement.RETURN_GENERATED_KEYS);
            ResultSet rs = stmt.getGeneratedKeys();
            while (rs.next()) {
                System.out.println("Inserted a new record! New id: " + rs.getLong(1));
                return rs.getLong(1);
            }
        } catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }
}
