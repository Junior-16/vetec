package br.edu.ifc.concordia.inf.permision;

public enum UserRoles {
	ADMIN(1),
	NORMAL(2);
	private int accessLevel;
	
	private UserRoles(int accessLevel){
		this.accessLevel = accessLevel;
	}
	
	public int getAccessLevel(){
		return this.accessLevel;
	}
}
