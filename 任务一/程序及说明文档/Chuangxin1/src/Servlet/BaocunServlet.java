package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.JibenDao;
import Model.Jibenxx;

/**
 * Servlet implementation class BaocunServlet
 */
@WebServlet("/BaocunServlet")
public class BaocunServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BaocunServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		String pingtaimc=request.getParameter("pingtaimc");	//ƽ̨����
		String pingtaibh=request.getParameter("pingtaibh");	//ƽ̨���
		String pizhunny=request.getParameter("pizhunny");;		//��׼����
		String pizhunwh=request.getParameter("pizhunwh");;		//��׼�ĺ�
		String jsly=request.getParameter("jsly");;			//��������
		//String pingtaijb=request.getParameter("pingtaijb");;	//ƽ̨����
		
		String[] pingtaijb1=request.getParameterValues("pingtaijb");	//ƽ̨����
		String pingtaijb="";
		for (int i=0;i<pingtaijb1.length;i++)
		{
			pingtaijb+=pingtaijb1[i];
		}
		String suozaidq=request.getParameter("suozaidq");;  	//ʡ����
		String zuzhi=request.getParameter("zuzhi");;
		String zuzhi2=request.getParameter("zuzhi2");;
		if(zuzhi==null){
			zuzhi=zuzhi2;
		}
		//��֯
		String faren=request.getParameter("zuzhi1");		//��������
		String jianshe=request.getParameter("jianshe");		//
		String gongjian=request.getParameter("gongjian");;		//���򼽹���
		String yituomc=request.getParameter("yituomc");;		//���е�λ����
		String yituodm=request.getParameter("yituodm");;		//���е�λ��֯��������
		String yituofr=request.getParameter("yituofr");;		//���е�λ���˴�������	
		String yituodh=request.getParameter("yituodh");;		//�칫�绰
		String yituolx=request.getParameter("yituolx");;		//���е�λ����
		String zrxingming=request.getParameter("zrxingming");
		String zrxingbie=request.getParameter("zrxingbie");;
		String zrchusheng=request.getParameter("zrchusheng");;
		String zrzhicheng=request.getParameter("zrzhicheng");;
		String zrzhuanye=request.getParameter("zrzhuanye");;
		String zrxueli=request.getParameter("zrxueli");;
		String zrxuewei=request.getParameter("zrxuewei");;
		String zrdianhua=request.getParameter("zrdianhua");;
		String zrshouji=request.getParameter("zrshouji");;
		String zremail=request.getParameter("zremail");;
		String wangzhanmc=request.getParameter("wangzhanmc");;
		String pingtaiwz=request.getParameter("pingtaiwz");;
		String pingtaitx=request.getParameter("pingtaitx");;
		String pingtaiyb=request.getParameter("pingtaiyb");;
		String sheng=request.getParameter("cmbProvince");
		String shi=request.getParameter("cmbCity");
		String xian=request.getParameter("cmbArea");
		String zhuyaohy1=request.getParameter("fuwuhangye1");
		String zhuyaohy11=request.getParameter("fuwuhangye11");
		String zhuyaohy111=request.getParameter("fuwuhangye111");
		String zhuyaoxk1=request.getParameter("suoshuxk1");
		String zhuyaoxk11=request.getParameter("suoshuxk");
		String zhuyaoxk111=request.getParameter("suoshuxk");
		String gongjiandw=request.getParameter("gongjiandw");
		suozaidq=sheng+shi+xian;
		Jibenxx jibenxx=new Jibenxx();
		jibenxx.setPingtaimc(pingtaimc);
		jibenxx.setPingtaibh(pingtaibh);
		jibenxx.setPizhunwh(pizhunwh);
		jibenxx.setPizhunny(pizhunny);
		jibenxx.setJsly(jsly);
		jibenxx.setPingtaijb(pingtaijb);
		jibenxx.setSuozaidq(suozaidq);
		jibenxx.setZuzhi(zuzhi);
		jibenxx.setFaren(faren);
		jibenxx.setJianshe(jianshe);
		jibenxx.setGongjian(gongjian);
		jibenxx.setYituomc(yituomc);
		jibenxx.setYituodm(yituodm);
		//,zrxingming,zrxingbie,zrchusheng,zrzhicheng,zrzhuanye,
		jibenxx.setYituofr(yituofr);
		jibenxx.setYituodh(yituodh);
		jibenxx.setYituolx(yituolx);
		jibenxx.setZrxingming(zrxingming);
		jibenxx.setZrxingbie(zrxingbie);
		jibenxx.setZrchusheng(zrchusheng);
		jibenxx.setZrzhicheng(zrzhicheng);
		jibenxx.setZrzhuanye(zrzhuanye);
		//zrxueli,zrxuewei,zrdianhua,zrshouji,zremail,wangzhanmc,pingtaiwz,pingtaitx,pingtaiyb
		jibenxx.setZrxueli(zrxueli);
		jibenxx.setZrxuewei(zrxuewei);
		jibenxx.setZrdianhua(zrdianhua);
		jibenxx.setZrshouji(zrshouji);
		jibenxx.setZremail(zremail);
		jibenxx.setWangzhanmc(wangzhanmc);
		jibenxx.setPingtaiwz(pingtaiwz);
		jibenxx.setPingtaitx(pingtaitx);
		jibenxx.setPingtaiyb(pingtaiyb);
		jibenxx.setSheng(sheng);
		jibenxx.setShi(shi);
		jibenxx.setXian(xian);
		jibenxx.setZhuyaohy1(zhuyaohy1);
		jibenxx.setZhuyaohy11(zhuyaohy11);
		jibenxx.setZhuyaohy111(zhuyaohy111);
		jibenxx.setZhuyaoxk1(zhuyaoxk1);
		jibenxx.setZhuyaoxk11(zhuyaoxk11);
		jibenxx.setZhuyaoxk111(zhuyaoxk111);
		jibenxx.setGongjiandw(gongjiandw);
		String  caozuo=request.getParameter("caozuo");
		int type=6;
		if(caozuo.equals("��ʱ����")){
			type=0;
		}
		else {
			type=1;
		}
		jibenxx.setType(type);
		JibenDao jibenDao=new JibenDao();
		jibenDao.updata(jibenxx);
		response.sendRedirect("ayangshi/index.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
