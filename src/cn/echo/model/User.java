package cn.echo.model;

import java.io.Serializable;


/**
 * @author echo
 *序列化接口实现之后才可以往硬盘存放对象
 *如果想把对象传输到网络另一方 类也要实现序列化接口
 *
 *硬盘读取和写入的对象的序列号一致
 *网络发送方和接收方对象序列号也要一致
 *
 */
public class User implements Serializable{

	/**
	 * 序列号----唯一标识当前类版本
	 */
	private static final long serialVersionUID = 8889725850981203817L;
	private String name1;
	private String sex;
	public Info info;
	//	public User(String name,String sex){
	//		this.name = name;
	//		this.sex = sex;
	//	}

	public String getName() {
		return name1;
	}
	public String getName1() {
		return name1;
	}
	public void setName1(String name1) {
		this.name1 = name1;
	}
	public Info getInfo() {
		return info;
	}
	public void setInfo(Info info) {
		this.info = info;
	}
	public void setName(String name) {
		this.name1 = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getAge(){
		return "15";
	}


}
