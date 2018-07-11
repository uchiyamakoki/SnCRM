package com.sn.test;

import java.util.List;

import com.sn.dao.SjzdflDAO;
import com.sn.po.Sjzdfl;

public class Test {
	public static void main(String[] args) {
		SjzdflDAO sdao=new SjzdflDAO();
		List<Sjzdfl> all=sdao.findAll();
		//for(Sjzdfl sjzdfl:all){
			//System.out.println(sjzdfl.getSjzdflId());
			//System.out.println(sjzdfl.getSjzdflmc());
		//}
		Sjzdfl sjzdfl=sdao.findById(1);
		System.out.println(sjzdfl.getSjzdflId());
		System.out.println(sjzdfl.getSjzdflmc());
		
	}
}
