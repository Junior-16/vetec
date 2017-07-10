package br.edu.ifc.concordia.inf.veterinaria.permision;

public enum UserRoles {
	ADMIN(2),
	NORMAL(1);
	private int accessLevel;
	
	private UserRoles(int accessLevel){
		this.accessLevel = accessLevel;
	}
	
	public int getAccessLevel(){
		return this.accessLevel;
	}
}
