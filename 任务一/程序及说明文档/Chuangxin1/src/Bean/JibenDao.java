package Bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.Jibenxx;
import Model.User;
import Util.DBUtil;
import Util.UserException;

public class JibenDao {
	public void add(Jibenxx jibenxx){
		Connection connection=DBUtil.getConnection();
		String sql = "";
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		try {	
			sql = "insert into t_jibenxx (pingtaimc,pingtaibh,pizhunny,pizhunwh,jsly,pingtaijb,suozaidq,zuzhi,faren,jianshe,gongjian,yituomc,yituodm,yituofr,yituodh,yituolx,zrxingming,zrxingbie,zrchusheng,zrzhicheng,zrzhuanye,zrxueli,zrxuewei,zrdianhua,zrshouji,zremail,wangzhanmc,pingtaiwz,pingtaitx,pingtaiyb,sheng,shi,xian,zhuyaohy1,zhuyaohy11,zhuyaohy111,zhuyaoxk1,zhuyaoxk11,zhuyaoxk111,gongjiandw,type) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1,jibenxx.getPingtaimc() );
			preparedStatement.setString(2,jibenxx.getPingtaibh() );
			preparedStatement.setString(3,jibenxx.getPizhunny());
			preparedStatement.setString(4,jibenxx.getPizhunwh() );
			preparedStatement.setString(5,jibenxx.getJsly() );
			preparedStatement.setString(6, jibenxx.getPingtaijb());
			preparedStatement.setString(7,jibenxx.getSuozaidq());
			preparedStatement.setString(8, jibenxx.getZuzhi());
			preparedStatement.setString(9, jibenxx.getFaren());
			preparedStatement.setString(10, jibenxx.getJianshe());
			preparedStatement.setString(11,jibenxx.getGongjian() );
			preparedStatement.setString(12,jibenxx.getYituomc() );
			preparedStatement.setString(13,jibenxx.getYituodm() );
			preparedStatement.setString(14,jibenxx.getYituofr() );
			preparedStatement.setString(15, jibenxx.getYituodh());
			preparedStatement.setString(16, jibenxx.getYituolx());  
			preparedStatement.setString(17, jibenxx.getZrxingming());
			preparedStatement.setString(18, jibenxx.getZrxingbie());
			preparedStatement.setString(19, jibenxx.getZrchusheng());
			preparedStatement.setString(20, jibenxx.getZrzhicheng());
			preparedStatement.setString(21, jibenxx.getZrzhuanye());
			preparedStatement.setString(22, jibenxx.getZrxueli());
			preparedStatement.setString(23, jibenxx.getZrxuewei());
			preparedStatement.setString(24, jibenxx.getZrdianhua());
			preparedStatement.setString(25, jibenxx.getZrshouji());
			preparedStatement.setString(26, jibenxx.getZremail());
			preparedStatement.setString(27, jibenxx.getWangzhanmc());
			preparedStatement.setString(28, jibenxx.getPingtaiwz());
			preparedStatement.setString(29, jibenxx.getPingtaitx());
			preparedStatement.setString(30, jibenxx.getPingtaiyb());
			preparedStatement.setString(31, jibenxx.getSheng());
			preparedStatement.setString(32, jibenxx.getShi());
			preparedStatement.setString(33, jibenxx.getXian());
			preparedStatement.setString(34, jibenxx.getZhuyaohy1());
			preparedStatement.setString(35, jibenxx.getZhuyaohy11());
			preparedStatement.setString(36, jibenxx.getZhuyaohy111());
			preparedStatement.setString(37, jibenxx.getZhuyaoxk1());
			preparedStatement.setString(38, jibenxx.getZhuyaoxk11());
			preparedStatement.setString(39, jibenxx.getZhuyaohy111());
			preparedStatement.setString(40, jibenxx.getGongjiandw());
			preparedStatement.setInt(41,jibenxx.getType());
			preparedStatement.executeUpdate();	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		
	}
	
	public void updata(Jibenxx jibenxx){
		Connection connection=DBUtil.getConnection();
		String sql = "";
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		try {	
			sql = "update t_jibenxx set pingtaimc = ? , pingtaibh = ? , pizhunny = ? , pizhunwh = ? , jsly = ? , pingtaijb = ? , suozaidq = ? , zuzhi = ? , faren = ? , jianshe = ? , gongjian = ? , yituomc = ? , yituodm = ? , yituofr = ? , yituodh = ? , yituolx = ? , zrxingming = ? , zrxingbie = ? , zrchusheng = ? , zrzhicheng = ? , zrzhuanye = ? , zrxueli = ? , zrxuewei = ? , zrdianhua = ? , zrshouji = ? , zremail = ? , wangzhanmc = ? , pingtaiwz = ? , pingtaitx = ? , pingtaiyb = ? , sheng = ? , shi = ? , xian = ? , zhuyaohy1 = ? , zhuyaohy11 = ? , zhuyaohy111 = ? , zhuyaoxk1 = ? , zhuyaoxk11 = ? , zhuyaoxk111 = ? , gongjiandw = ? , type = ? where id = ?";
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1,jibenxx.getPingtaimc() );
			preparedStatement.setString(2,jibenxx.getPingtaibh() );
			preparedStatement.setString(3,jibenxx.getPizhunny());
			preparedStatement.setString(4,jibenxx.getPizhunwh() );
			preparedStatement.setString(5,jibenxx.getJsly() );
			preparedStatement.setString(6, jibenxx.getPingtaijb());
			preparedStatement.setString(7,jibenxx.getSuozaidq());
			preparedStatement.setString(8, jibenxx.getZuzhi());
			preparedStatement.setString(9, jibenxx.getFaren());
			preparedStatement.setString(10, jibenxx.getJianshe());
			preparedStatement.setString(11,jibenxx.getGongjian() );
			preparedStatement.setString(12,jibenxx.getYituomc() );
			preparedStatement.setString(13,jibenxx.getYituodm() );
			preparedStatement.setString(14,jibenxx.getYituofr() );
			preparedStatement.setString(15, jibenxx.getYituodh());
			preparedStatement.setString(16, jibenxx.getYituolx());  
			preparedStatement.setString(17, jibenxx.getZrxingming());
			preparedStatement.setString(18, jibenxx.getZrxingbie());
			preparedStatement.setString(19, jibenxx.getZrchusheng());
			preparedStatement.setString(20, jibenxx.getZrzhicheng());
			preparedStatement.setString(21, jibenxx.getZrzhuanye());
			preparedStatement.setString(22, jibenxx.getZrxueli());
			preparedStatement.setString(23, jibenxx.getZrxuewei());
			preparedStatement.setString(24, jibenxx.getZrdianhua());
			preparedStatement.setString(25, jibenxx.getZrshouji());
			preparedStatement.setString(26, jibenxx.getZremail());
			preparedStatement.setString(27, jibenxx.getWangzhanmc());
			preparedStatement.setString(28, jibenxx.getPingtaiwz());
			preparedStatement.setString(29, jibenxx.getPingtaitx());
			preparedStatement.setString(30, jibenxx.getPingtaiyb());
			preparedStatement.setString(31, jibenxx.getSheng());
			preparedStatement.setString(32, jibenxx.getShi());
			preparedStatement.setString(33, jibenxx.getXian());
			preparedStatement.setString(34, jibenxx.getZhuyaohy1());
			preparedStatement.setString(35, jibenxx.getZhuyaohy11());
			preparedStatement.setString(36, jibenxx.getZhuyaohy111());
			preparedStatement.setString(37, jibenxx.getZhuyaoxk1());
			preparedStatement.setString(38, jibenxx.getZhuyaoxk11());
			preparedStatement.setString(39, jibenxx.getZhuyaohy111());
			preparedStatement.setString(40, jibenxx.getGongjiandw());
			preparedStatement.setInt(41, jibenxx.getId());
			preparedStatement.setInt(42, jibenxx.getType());
			preparedStatement.executeUpdate();	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		
	}
	public int suma (){
		Connection connection=DBUtil.getConnection();
		String sql = "select count(*) from t_jibenxx group by id";
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		int s=0;
		try {
			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				s+=1;
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return s;
	}
	
	public Jibenxx load (int id){
		Connection connection=DBUtil.getConnection();
		String sql = "select isnull(pingtaimc,'') pingtaimc , isnull(pingtaibh,'') pingtaibh , isnull(pizhunny,'') pizhunny , isnull(pizhunwh,'') pizhunwh , isnull(jsly,'') jsly , isnull(pingtaijb,'') pingtaijb , isnull(suozaidq,'') suozaidq , isnull(zuzhi,'')zuzhi , isnull(faren,'')faren , isnull(jianshe,'')jianshe,isnull(gongjian,'')gongjian , isnull(yituomc,'')yituomc , isnull(yituodm,'')yituodm,isnull(yituofr,'')yituofr,isnull(yituodh,'')yituodh,isnull(yituolx,'') yituolx, isnull(zrxingming,'') zrxingming, isnull(zrxingbie,'')zrxingbie , isnull(zrchusheng,'') zrchusheng, isnull(zrzhicheng,'')zrzhicheng, isnull(zrzhuanye,'') zrzhuanye, isnull(zrxueli,'') zrxueli, isnull(zrxuewei,'') zrxuewei, isnull(zrdianhua,'') zrdianhua, isnull(zrshouji,'')zrshouji , isnull(zremail,'') zremail , isnull(wangzhanmc,'') wangzhanmc , isnull(pingtaiwz,'') pingtaiwz, isnull(pingtaitx,'') pingtaitx, isnull(pingtaiyb,'') pingtaiyb, isnull(sheng,'') sheng, isnull(shi,'') shi, isnull(xian,'') xian, isnull(zhuyaohy1,'') zhuyaohy1 , isnull(zhuyaohy11,'') zhuyaohy11 , isnull(zhuyaohy111,'') zhuyaohy111 , isnull(zhuyaoxk1,'') zhuyaoxk1 , isnull(zhuyaoxk11,'') zhuyaoxk11 , isnull(zhuyaoxk111,'') zhuyaoxk111 , isnull(gongjiandw,'') gongjiandw, isnull(type,'') type from t_jibenxx where id = ? ";
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		Jibenxx jibenxx=new Jibenxx();
		int s=0;
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, id);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				jibenxx.setId(id);
				jibenxx.setPingtaimc(resultSet.getString("pingtaimc"));
				jibenxx.setPingtaibh(resultSet.getString("pingtaibh"));
				jibenxx.setPizhunwh(resultSet.getString("pizhunwh"));
				jibenxx.setPizhunny(resultSet.getString("pizhunny"));
				jibenxx.setJsly(resultSet.getString("jsly"));
				jibenxx.setPingtaijb(resultSet.getString("pingtaijb"));
				jibenxx.setSuozaidq(resultSet.getString("suozaidq"));
				jibenxx.setZuzhi(resultSet.getString("zuzhi"));
				jibenxx.setFaren(resultSet.getString("faren"));
				jibenxx.setJianshe(resultSet.getString("jianshe"));
				jibenxx.setGongjian(resultSet.getString("gongjian"));
				jibenxx.setYituomc(resultSet.getString("yituomc"));
				jibenxx.setYituodm(resultSet.getString("yituodm"));
				//,zrxingming,zrxingbie,zrchusheng,zrzhicheng,zrzhuanye,
				jibenxx.setYituofr(resultSet.getString("yituofr"));
				jibenxx.setYituodh(resultSet.getString("yituodh"));
				jibenxx.setYituolx(resultSet.getString("yituolx"));
				jibenxx.setZrxingming(resultSet.getString("zrxingming"));
				jibenxx.setZrxingbie(resultSet.getString("zrxingbie"));
				jibenxx.setZrchusheng(resultSet.getString("zrchusheng"));
				jibenxx.setZrzhicheng(resultSet.getString("zrzhicheng"));
				jibenxx.setZrzhuanye(resultSet.getString("zrzhuanye"));
				//zrxueli,zrxuewei,zrdianhua,zrshouji,zremail,wangzhanmc,pingtaiwz,pingtaitx,pingtaiyb
				jibenxx.setZrxueli(resultSet.getString("zrxueli"));
				jibenxx.setZrxuewei(resultSet.getString("zrxuewei"));
				jibenxx.setZrdianhua(resultSet.getString("zrdianhua"));
				jibenxx.setZrshouji(resultSet.getString("zrshouji"));
				jibenxx.setZremail(resultSet.getString("zremail"));
				jibenxx.setWangzhanmc(resultSet.getString("wangzhanmc"));
				jibenxx.setPingtaiwz(resultSet.getString("pingtaiwz"));
				jibenxx.setPingtaitx(resultSet.getString("pingtaitx"));
				jibenxx.setPingtaiyb(resultSet.getString("pingtaiyb"));
				jibenxx.setSheng(resultSet.getString("sheng"));
				jibenxx.setShi(resultSet.getString("shi"));
				jibenxx.setXian(resultSet.getString("xian"));
				jibenxx.setZhuyaohy1(resultSet.getString("zhuyaohy1"));
				jibenxx.setZhuyaohy11(resultSet.getString("zhuyaohy11"));
				jibenxx.setZhuyaohy111(resultSet.getString("zhuyaohy111"));
				jibenxx.setZhuyaoxk1(resultSet.getString("zhuyaoxk1"));
				jibenxx.setZhuyaoxk11(resultSet.getString("zhuyaoxk11"));
				jibenxx.setZhuyaoxk111(resultSet.getString("zhuyaoxk111"));
				jibenxx.setGongjiandw(resultSet.getString("gongjiandw"));
				jibenxx.setType(resultSet.getInt("type"));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return jibenxx;
	}
	public List<Jibenxx> loadall(){
		Connection connection = DBUtil.getConnection();

		String sql = "select * from t_jibenxx ";

		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;

		List<Jibenxx> jibenxxs = new ArrayList<Jibenxx>();
		Jibenxx jibenxx = null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				jibenxx = new Jibenxx();
				jibenxx.setId(resultSet.getInt("id"));
				jibenxx.setPingtaimc(resultSet.getString("pingtaimc"));
				jibenxx.setPingtaibh(resultSet.getString("pingtaibh"));
				jibenxx.setPizhunwh(resultSet.getString("pizhunwh"));
				jibenxx.setPizhunny(resultSet.getString("pizhunny"));
				jibenxx.setJsly(resultSet.getString("jsly"));
				jibenxx.setPingtaijb(resultSet.getString("pingtaijb"));
				jibenxx.setSuozaidq(resultSet.getString("suozaidq"));
				jibenxx.setZuzhi(resultSet.getString("zuzhi"));
				jibenxx.setFaren(resultSet.getString("faren"));
				jibenxx.setJianshe(resultSet.getString("jianshe"));
				jibenxx.setGongjian(resultSet.getString("gongjian"));
				jibenxx.setYituomc(resultSet.getString("yituomc"));
				jibenxx.setYituodm(resultSet.getString("yituodm"));
				//,zrxingming,zrxingbie,zrchusheng,zrzhicheng,zrzhuanye,
				jibenxx.setYituofr(resultSet.getString("yituofr"));
				jibenxx.setYituodh(resultSet.getString("yituodh"));
				jibenxx.setYituolx(resultSet.getString("yituolx"));
				jibenxx.setZrxingming(resultSet.getString("zrxingming"));
				jibenxx.setZrxingbie(resultSet.getString("zrxingbie"));
				jibenxx.setZrchusheng(resultSet.getString("zrchusheng"));
				jibenxx.setZrzhicheng(resultSet.getString("zrzhicheng"));
				jibenxx.setZrzhuanye(resultSet.getString("zrzhuanye"));
				//zrxueli,zrxuewei,zrdianhua,zrshouji,zremail,wangzhanmc,pingtaiwz,pingtaitx,pingtaiyb
				jibenxx.setZrxueli(resultSet.getString("zrxueli"));
				jibenxx.setZrxuewei(resultSet.getString("zrxuewei"));
				jibenxx.setZrdianhua(resultSet.getString("zrdianhua"));
				jibenxx.setZrshouji(resultSet.getString("zrshouji"));
				jibenxx.setZremail(resultSet.getString("zremail"));
				jibenxx.setWangzhanmc(resultSet.getString("wangzhanmc"));
				jibenxx.setPingtaiwz(resultSet.getString("pingtaiwz"));
				jibenxx.setPingtaitx(resultSet.getString("pingtaitx"));
				jibenxx.setPingtaiyb(resultSet.getString("pingtaiyb"));
				jibenxx.setSheng(resultSet.getString("sheng"));
				jibenxx.setShi(resultSet.getString("shi"));
				jibenxx.setXian(resultSet.getString("xian"));
				jibenxx.setZhuyaohy1(resultSet.getString("zhuyaohy1"));
				jibenxx.setZhuyaohy11(resultSet.getString("zhuyaohy11"));
				jibenxx.setZhuyaohy111(resultSet.getString("zhuyaohy111"));
				jibenxx.setZhuyaoxk1(resultSet.getString("zhuyaoxk1"));
				jibenxx.setZhuyaoxk11(resultSet.getString("zhuyaoxk11"));
				jibenxx.setZhuyaoxk111(resultSet.getString("zhuyaoxk111"));
				jibenxx.setGongjiandw(resultSet.getString("gongjiandw"));
				jibenxx.setType(resultSet.getInt("type"));
				jibenxxs.add(jibenxx);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return  jibenxxs;
	}
	
	
	
	public List<Jibenxx> loadfl(String chaxunlb,String neirong){
		Connection connection = DBUtil.getConnection();

		String sql = "select * from t_jibenxx where "+chaxunlb+" = '"+neirong+" '";

		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;

		List<Jibenxx> jibenxxs = new ArrayList<Jibenxx>();
		Jibenxx jibenxx = null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				jibenxx = new Jibenxx();
				jibenxx.setId(resultSet.getInt("id"));
				jibenxx.setPingtaimc(resultSet.getString("pingtaimc"));
				jibenxx.setPingtaibh(resultSet.getString("pingtaibh"));
				jibenxx.setPizhunwh(resultSet.getString("pizhunwh"));
				jibenxx.setPizhunny(resultSet.getString("pizhunny"));
				jibenxx.setJsly(resultSet.getString("jsly"));
				jibenxx.setPingtaijb(resultSet.getString("pingtaijb"));
				jibenxx.setSuozaidq(resultSet.getString("suozaidq"));
				jibenxx.setZuzhi(resultSet.getString("zuzhi"));
				jibenxx.setFaren(resultSet.getString("faren"));
				jibenxx.setJianshe(resultSet.getString("jianshe"));
				jibenxx.setGongjian(resultSet.getString("gongjian"));
				jibenxx.setYituomc(resultSet.getString("yituomc"));
				jibenxx.setYituodm(resultSet.getString("yituodm"));
				//,zrxingming,zrxingbie,zrchusheng,zrzhicheng,zrzhuanye,
				jibenxx.setYituofr(resultSet.getString("yituofr"));
				jibenxx.setYituodh(resultSet.getString("yituodh"));
				jibenxx.setYituolx(resultSet.getString("yituolx"));
				jibenxx.setZrxingming(resultSet.getString("zrxingming"));
				jibenxx.setZrxingbie(resultSet.getString("zrxingbie"));
				jibenxx.setZrchusheng(resultSet.getString("zrchusheng"));
				jibenxx.setZrzhicheng(resultSet.getString("zrzhicheng"));
				jibenxx.setZrzhuanye(resultSet.getString("zrzhuanye"));
				//zrxueli,zrxuewei,zrdianhua,zrshouji,zremail,wangzhanmc,pingtaiwz,pingtaitx,pingtaiyb
				jibenxx.setZrxueli(resultSet.getString("zrxueli"));
				jibenxx.setZrxuewei(resultSet.getString("zrxuewei"));
				jibenxx.setZrdianhua(resultSet.getString("zrdianhua"));
				jibenxx.setZrshouji(resultSet.getString("zrshouji"));
				jibenxx.setZremail(resultSet.getString("zremail"));
				jibenxx.setWangzhanmc(resultSet.getString("wangzhanmc"));
				jibenxx.setPingtaiwz(resultSet.getString("pingtaiwz"));
				jibenxx.setPingtaitx(resultSet.getString("pingtaitx"));
				jibenxx.setPingtaiyb(resultSet.getString("pingtaiyb"));
				jibenxx.setSheng(resultSet.getString("sheng"));
				jibenxx.setShi(resultSet.getString("shi"));
				jibenxx.setXian(resultSet.getString("xian"));
				jibenxx.setZhuyaohy1(resultSet.getString("zhuyaohy1"));
				jibenxx.setZhuyaohy11(resultSet.getString("zhuyaohy11"));
				jibenxx.setZhuyaohy111(resultSet.getString("zhuyaohy111"));
				jibenxx.setZhuyaoxk1(resultSet.getString("zhuyaoxk1"));
				jibenxx.setZhuyaoxk11(resultSet.getString("zhuyaoxk11"));
				jibenxx.setZhuyaoxk111(resultSet.getString("zhuyaoxk111"));
				jibenxx.setGongjiandw(resultSet.getString("gongjiandw"));
				jibenxx.setType(resultSet.getInt("type"));
				jibenxxs.add(jibenxx);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return  jibenxxs;
	}
	
	
	public List<Jibenxx> loadfduo(String[] name,String[] neirong){
		Connection connection = DBUtil.getConnection();
		String sql="select * from t_jibenxx ";
		for(int i=0;i<9;i++){
			
			if(neirong[i]!=null&&!"".equals(neirong[i].trim())){
				if(i==0){
					sql=sql+"where ";
				}
				if(i!=0){
					sql=sql+" and ";
				}
				sql=sql+name[i]+" like '%"+neirong[i]+"%'";
			}
			
		}


		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;

		List<Jibenxx> jibenxxs = new ArrayList<Jibenxx>();
		Jibenxx jibenxx = null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				jibenxx = new Jibenxx();
				jibenxx.setId(resultSet.getInt("id"));
				jibenxx.setPingtaimc(resultSet.getString("pingtaimc"));
				jibenxx.setPingtaibh(resultSet.getString("pingtaibh"));
				jibenxx.setPizhunwh(resultSet.getString("pizhunwh"));
				jibenxx.setPizhunny(resultSet.getString("pizhunny"));
				jibenxx.setJsly(resultSet.getString("jsly"));
				jibenxx.setPingtaijb(resultSet.getString("pingtaijb"));
				jibenxx.setSuozaidq(resultSet.getString("suozaidq"));
				jibenxx.setZuzhi(resultSet.getString("zuzhi"));
				jibenxx.setFaren(resultSet.getString("faren"));
				jibenxx.setJianshe(resultSet.getString("jianshe"));
				jibenxx.setGongjian(resultSet.getString("gongjian"));
				jibenxx.setYituomc(resultSet.getString("yituomc"));
				jibenxx.setYituodm(resultSet.getString("yituodm"));
				//,zrxingming,zrxingbie,zrchusheng,zrzhicheng,zrzhuanye,
				jibenxx.setYituofr(resultSet.getString("yituofr"));
				jibenxx.setYituodh(resultSet.getString("yituodh"));
				jibenxx.setYituolx(resultSet.getString("yituolx"));
				jibenxx.setZrxingming(resultSet.getString("zrxingming"));
				jibenxx.setZrxingbie(resultSet.getString("zrxingbie"));
				jibenxx.setZrchusheng(resultSet.getString("zrchusheng"));
				jibenxx.setZrzhicheng(resultSet.getString("zrzhicheng"));
				jibenxx.setZrzhuanye(resultSet.getString("zrzhuanye"));
				//zrxueli,zrxuewei,zrdianhua,zrshouji,zremail,wangzhanmc,pingtaiwz,pingtaitx,pingtaiyb
				jibenxx.setZrxueli(resultSet.getString("zrxueli"));
				jibenxx.setZrxuewei(resultSet.getString("zrxuewei"));
				jibenxx.setZrdianhua(resultSet.getString("zrdianhua"));
				jibenxx.setZrshouji(resultSet.getString("zrshouji"));
				jibenxx.setZremail(resultSet.getString("zremail"));
				jibenxx.setWangzhanmc(resultSet.getString("wangzhanmc"));
				jibenxx.setPingtaiwz(resultSet.getString("pingtaiwz"));
				jibenxx.setPingtaitx(resultSet.getString("pingtaitx"));
				jibenxx.setPingtaiyb(resultSet.getString("pingtaiyb"));
				jibenxx.setSheng(resultSet.getString("sheng"));
				jibenxx.setShi(resultSet.getString("shi"));
				jibenxx.setXian(resultSet.getString("xian"));
				jibenxx.setZhuyaohy1(resultSet.getString("zhuyaohy1"));
				jibenxx.setZhuyaohy11(resultSet.getString("zhuyaohy11"));
				jibenxx.setZhuyaohy111(resultSet.getString("zhuyaohy111"));
				jibenxx.setZhuyaoxk1(resultSet.getString("zhuyaoxk1"));
				jibenxx.setZhuyaoxk11(resultSet.getString("zhuyaoxk11"));
				jibenxx.setZhuyaoxk111(resultSet.getString("zhuyaoxk111"));
				jibenxx.setGongjiandw(resultSet.getString("gongjiandw"));
				jibenxx.setType(resultSet.getInt("type"));
				jibenxxs.add(jibenxx);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return  jibenxxs;
	}
	
	
	
	public List<Jibenxx> loadzonghe(String[] sqls){
		Connection connection = DBUtil.getConnection();
		String sql="";
		for(int i=0;i<sqls.length;i++){
			sql+=sqls[i];	
		}
		//System.out.println(sql);
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		int i=1;
		List<Jibenxx> jibenxxs = new ArrayList<Jibenxx>();
		Jibenxx jibenxx = null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			try{
			resultSet = preparedStatement.executeQuery();
			}catch (Exception e) {
				// TODO: handle exception
				throw new UserException("cuowu ") ;
			}
			while(resultSet.next()) {
				jibenxx = new Jibenxx();
				jibenxx.setId(resultSet.getInt("id"));
				jibenxx.setPingtaimc(resultSet.getString("pingtaimc"));
				jibenxx.setPingtaibh(resultSet.getString("pingtaibh"));
				jibenxx.setPizhunwh(resultSet.getString("pizhunwh"));
				jibenxx.setPizhunny(resultSet.getString("pizhunny"));
				jibenxx.setJsly(resultSet.getString("jsly"));
				jibenxx.setPingtaijb(resultSet.getString("pingtaijb"));
				jibenxx.setSuozaidq(resultSet.getString("suozaidq"));
				jibenxx.setZuzhi(resultSet.getString("zuzhi"));
				jibenxx.setFaren(resultSet.getString("faren"));
				jibenxx.setJianshe(resultSet.getString("jianshe"));
				jibenxx.setGongjian(resultSet.getString("gongjian"));
				jibenxx.setYituomc(resultSet.getString("yituomc"));
				jibenxx.setYituodm(resultSet.getString("yituodm"));
				//,zrxingming,zrxingbie,zrchusheng,zrzhicheng,zrzhuanye,
				jibenxx.setYituofr(resultSet.getString("yituofr"));
				jibenxx.setYituodh(resultSet.getString("yituodh"));
				jibenxx.setYituolx(resultSet.getString("yituolx"));
				jibenxx.setZrxingming(resultSet.getString("zrxingming"));
				jibenxx.setZrxingbie(resultSet.getString("zrxingbie"));
				jibenxx.setZrchusheng(resultSet.getString("zrchusheng"));
				jibenxx.setZrzhicheng(resultSet.getString("zrzhicheng"));
				jibenxx.setZrzhuanye(resultSet.getString("zrzhuanye"));
				//zrxueli,zrxuewei,zrdianhua,zrshouji,zremail,wangzhanmc,pingtaiwz,pingtaitx,pingtaiyb
				jibenxx.setZrxueli(resultSet.getString("zrxueli"));
				jibenxx.setZrxuewei(resultSet.getString("zrxuewei"));
				jibenxx.setZrdianhua(resultSet.getString("zrdianhua"));
				jibenxx.setZrshouji(resultSet.getString("zrshouji"));
				jibenxx.setZremail(resultSet.getString("zremail"));
				jibenxx.setWangzhanmc(resultSet.getString("wangzhanmc"));
				jibenxx.setPingtaiwz(resultSet.getString("pingtaiwz"));
				jibenxx.setPingtaitx(resultSet.getString("pingtaitx"));
				jibenxx.setPingtaiyb(resultSet.getString("pingtaiyb"));
				jibenxx.setSheng(resultSet.getString("sheng"));
				jibenxx.setShi(resultSet.getString("shi"));
				jibenxx.setXian(resultSet.getString("xian"));
				jibenxx.setZhuyaohy1(resultSet.getString("zhuyaohy1"));
				jibenxx.setZhuyaohy11(resultSet.getString("zhuyaohy11"));
				jibenxx.setZhuyaohy111(resultSet.getString("zhuyaohy111"));
				jibenxx.setZhuyaoxk1(resultSet.getString("zhuyaoxk1"));
				jibenxx.setZhuyaoxk11(resultSet.getString("zhuyaoxk11"));
				jibenxx.setZhuyaoxk111(resultSet.getString("zhuyaoxk111"));
				jibenxx.setGongjiandw(resultSet.getString("gongjiandw"));
				jibenxx.setType(resultSet.getInt("type"));
				jibenxxs.add(jibenxx);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return  jibenxxs;
	}
	
	
	
	
	public int sumcity (String city){
		Connection connection=DBUtil.getConnection();
		String sql = "select shi from t_jibenxx where shi = '"+ city+"'";
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		int s=0;
		try {
			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				s+=1;
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return s;
	}


}
