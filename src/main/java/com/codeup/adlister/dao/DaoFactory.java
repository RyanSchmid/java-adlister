package com.codeup.adlister.dao;
//import com.codeup.adlister.dao.Config;

public class DaoFactory {
    private static Config config = new Config();

    private static Ads adsDao;
    private static Users usersDao;
//    private static Users usersDao;

    public static Ads getAdsDao() {
        if (adsDao == null) {
            adsDao = new MySQLAdsDao(config);
        }
        return adsDao;
    }

    public static Users getUsersDao() {
        if (usersDao == null) {
            usersDao = new MySQLUsersDao(config);
        }
        return usersDao;
    }
}
