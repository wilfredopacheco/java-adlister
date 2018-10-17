public class DaoFactory {
    private static Ads adsDao;
    // Here we create a new list for adsDao if it is null

    public static Ads getAdsDao() {
        if (adsDao == null) {
            adsDao = new MySQLAdsDao();
        }
        return adsDao;
    }

}
