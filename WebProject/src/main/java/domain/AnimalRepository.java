package domain;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import type.GenderType;

public class AnimalRepository {
	private List<Animal> animalList = new ArrayList<>();
	private static AnimalRepository instance = new AnimalRepository();
	
	public AnimalRepository() {
		// TODO Auto-generated constructor stub
		Animal testAnimal1 = generateTestAnimal("QX12ONZPUM", "까미", 1, "여아", "개", "푸들", "요미독영등포점",
				"testLocation", "testEnv", "건강", "testDiseaseText", "testEtc", "ggami.png");
		Animal testAnimal2 = generateTestAnimal("AU971BZP9A", "고등어", 1, "여아", "고양이", "코리안숏헤어", "서초동물사랑센터",
				"testLocation", "testEnv", "건강", "testDiseaseText", "testEtc", "godeung.jpg");
		Animal testAnimal3 = generateTestAnimal("BU96Z916NM", "나비", 4, "남아", "고양이", "아메리칸숏헤어","팅커벨입양센터",
				"testLocation", "testEnv", "건강", "testDiseaseText", "testEtc", "nabi.jpg");
		Animal testAnimal4 = generateTestAnimal("AMOPW719Z", "솜이", 6, "남아", "개", "믹스","안다동물보호소",
				"testLocation", "testEnv", "건강", "testDiseaseText", "testEtc", "some.jpg");

		addAnimal(testAnimal1);
		addAnimal(testAnimal2);
		addAnimal(testAnimal3);
		addAnimal(testAnimal4);
	}
	
	private Animal generateTestAnimal(String id, String name, int age, String gender , String type, String bread, String shelter,
			String location, String env, String condition, String disease, String etc, String fileName) {
		Animal animal = new Animal();
		animal.setRandomRegisterCode(id);
		animal.setName(name);
		animal.setType(type);
		animal.setBreed(bread);
		animal.setAge(age);
		animal.setGender(gender);
		animal.setShelterLocation(shelter);
		animal.setDetectLocation(location);
		animal.setEnvironment(env);
		animal.setCondition(condition);
		animal.setDisease(disease);
		animal.setEtc(etc);
		animal.setFileName(fileName);
		
		return animal;
	}
	

	public static AnimalRepository getInstance() {
		// TODO Auto-generated method stub
		return instance;
	}

	public List<Animal> getAnimalList() {
		return animalList;
	}

	public void addAnimal(Animal animal) {
		getAnimalList().add(animal);
	}
	
	public Animal findById(String id) {
		for (Animal animal : animalList) {
			if (animal.getRegisterCode().equals(id)) {
				return animal;
			}
		}
		return null;
	}

	public String generateRandomCode() {
		int leftLimit = 48; // numeral '0'
		int rightLimit = 122; // letter 'z'
		int targetStringLength = 10;
		Random random = new Random();
		return random.ints(leftLimit, rightLimit + 1).filter(i -> (i <= 57 || i >= 65) && (i <= 90 || i >= 97))
				.limit(targetStringLength)
				.collect(StringBuilder::new, StringBuilder::appendCodePoint, StringBuilder::append).toString();
	}
}
