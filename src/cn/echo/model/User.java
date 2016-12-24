package cn.echo.model;

public class User {
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
