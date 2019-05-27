package Bean;

import java.util.List;

import Model.Jibenxx;
import Model.User;

public class test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		User user=new User();
//		user.setUsername("1");
//		user.setPassword("1");
//		user.setPingtaimc("1");
//		user.setPingtaibh("1");
//		user.setJsly("1");
//		UserDao userDao=new UserDao();
//		//userDao.add(user);
//		System.out.println(userDao.login("王翌淞"));
//		JibenDao jibenDao=new JibenDao();
//		int t=jibenDao.suma();
//		List<Jibenxx> jibenxxs=jibenDao.loadall();
//		for(Jibenxx jibenxx : jibenxxs){
//			if(jibenxx.getType()==0)
//				continue;
//		String chaxunlb="123";
//		String neirong="456";
//		String sql = "select * from t_jibenxx where "+chaxunlb+" = "+neirong;
//			System.out.println(sql);
//		}
	JibenDao jibenDao=new JibenDao();
	jibenDao.sumcity("石家庄市");
		

	}

}
