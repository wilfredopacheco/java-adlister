import com.mysql.cj.jdbc.Driver;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {

    private Connection connect;
    Config config = new Config();

    public MySQLAdsDao(){
        try {
            DriverManager.registerDriver(new Driver());
            connect = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUsername(),
                    config.getPassword());
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Ad> all(){
        String query = "SELECT * FROM adlister_db";
        List<Ad> allAds = new ArrayList<>();
         try {
             Statement stmt = connect.createStatement();
             ResultSet rs = stmt.executeQuery((query));
             while (rs.next()){
                 allAds.add(createAdObj(rs));
             }
         } catch (SQLException e) {
             e.printStackTrace();
         }
                return null;
    }

    public Ad createAdObj(ResultSet rs){
        try {
            return new Ad(rs.getLong("id"),
                    rs.getString("title"),
                    rs.getString("description"));

        } catch (SQLException e){
            e.printStackTrace();
            return null;
        }
    }


    @Override
    public Long insert(Ad ad){

        return null;
    }
}
