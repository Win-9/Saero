package domain;

import type.GenderType;

public class Animal {
	private String registerCode;
	private String name;
	private int age;
	private String breed;
	private String type;
	private String gender;
	private String fileName;
	private String shelterLocation;
	private String detectLocation;
	private String environment;
	private String condition;
	private String disease;
	private String etc;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}
	
	

	public void setAge(Integer age) {
		if (age == null) {
			this.age = 0;
		} else {
			this.age = age;	
		}
	}

	public String getBreed() {
		return breed;
	}

	public void setBreed(String breed) {
		this.breed = breed;
	}


	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getShelterLocation() {
		return shelterLocation;
	}

	public void setShelterLocation(String shelterLocation) {
		this.shelterLocation = shelterLocation;
	}

	public String getDetectLocation() {
		return detectLocation;
	}

	public void setDetectLocation(String detectLocation) {
		this.detectLocation = detectLocation;
	}

	public String getEnvironment() {
		return environment;
	}

	public void setEnvironment(String environment) {
		this.environment = environment;
	}

	public String getCondition() {
		return condition;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}

	public String getDisease() {
		return disease;
	}

	public void setDisease(String disease) {
		this.disease = disease;
	}

	public String getEtc() {
		return etc;
	}

	public void setEtc(String etc) {
		this.etc = etc;
	}
	
	

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getRegisterCode() {
		return registerCode;
	}

	public void setRandomRegisterCode(String registerCode) {
		this.registerCode = registerCode;
	}

}
