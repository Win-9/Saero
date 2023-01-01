package type;

public enum GenderType {
	MALE("남"),
	FEMAIL("여");
	
	private final String gender;
	
	private GenderType(String gender) {
		// TODO Auto-generated constructor stub
		this.gender = gender;
	}

	public String getGender() {
		return gender;
	}
	
}
