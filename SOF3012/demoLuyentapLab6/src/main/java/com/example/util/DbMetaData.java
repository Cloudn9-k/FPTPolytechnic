package com.example.util;

public class DbMetaData {
    /// Phần có thể sửa
    // =======>
    private static final String USERNAME = "sa";
    private static final String PASSWORD = "Password.1";
    private static final String SERVER = "localhost"; // hoặc địa chỉ IP của SQL Server nếu không phải localhost
    private static final String PORT = "1433";
    private static final String DATABASE_NAME = "lab6_sof3012";
    // Trường hợp báo lỗi SSL thì để là true
    private static final boolean USING_SSL = true;
    // <=========
    /// Hết phần có thể sửa


    /// Không sửa những phần dưới này
    private static String CONNECT_STRING;
    static {
        StringBuilder connectStringBuilder = new StringBuilder();
        connectStringBuilder.append("jdbc:sqlserver://")
                .append(SERVER).append(":").append(PORT).append(";")
                .append("databaseName=").append(DATABASE_NAME).append(";")
                .append("user=").append(USERNAME).append(";")
                .append("password=").append(PASSWORD).append(";")
        ;
        if (USING_SSL) {
            connectStringBuilder.append("encrypt=true;trustServerCertificate=true;");
        }
        CONNECT_STRING = connectStringBuilder.toString();
    }


    public static String getConnectString() {
        return CONNECT_STRING;
    }
}
