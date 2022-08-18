package common;

public class Constants {
//	public static String DB_DRIVER = "oracle.jdbc.driver.OracleDriver";
//	public static String DB_URL = "jdbc:oracle:thin:@211.81.171.226:1521:orcl";
	public static String DB_DRIVER = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
	public static String DB_URL = "jdbc:sqlserver://localhost:1433;DatabaseName=library";
	public static String DB_USER = "hr2";
	public static String DB_PWD = "oracle";
	public static String PAGE_ERROR_MESSAGE_KEY ="msg";
	public static String USER_SEESION_KEY ="user";
	public static final String VALIDATE_CODE_KEY = "validateCodeKey";
	public static String OPERATION_SUCCESS="操作成功！";
	public static String OPERATION_FAILED="操作失败！";
	public static String FlAG="flag";
	public static String REQUEST_URI="uri";
    public static String ENABLE_DELETE="msg1";//无法删除，提示信息
	public static final int PAGE_NUMBER=2;//每个页面显示数据条数
	public static String WARN="msg2";//警告提示信息
}
