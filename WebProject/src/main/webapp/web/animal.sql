CREATE TABLE IF NOT EXISTS animal(
	registerCode VARCHAR(20) NOT NULL,
	name VARCHAR(20),
	age INT(2),
	breed VARCHAR(20),
	animalType VARCHAR(20),
	gender VARCHAR(10),
	fileName VARCHAR(20),
	shelterLocation VARCHAR(40),
	detectLocation VARCHAR(40),
	environment VARCHAR(20),
	conditionInfo VARCHAR(20),
	desease VARCHAR(40),
	etc VARCHAR(40),
	PRIMARY KEY(registerCode)
)default CHARSET=utf8;

INSERT INTO animal VALUES("QX12ONZPUM", "까미", 1, "푸들", "개", "여아", "ggami.png", "요미독영등포점", "영등포역", "보호중", "건강", "없음", "항상 밝고 사람을 좋아하는 아이입니다.");
				
INSERT INTO animal VALUES("AU971BZP9A", "고등어", 1, "코리안숏헤어", "고양이", "여아", "godeung.jpg", "서초동물사랑센터", "서초구청", "보호중", "치료중", "심장사상충", "다소 얌전하고 소심한 아이입니다.");
				
INSERT INTO animal VALUES("BU96Z916NM", "나비", 4, "아메리칸숏헤어", "고양이", "남아", "nabi.jpg", "팅커벨입양센터", "곰달래로255", "보호중" , "치료중", "백내장", "활달한개냥입니다." );
				
INSERT INTO animal VALUES("AMOPW719Z", "솜이", 6, "믹스", "개", "남아", "some.jpg","안다동물보호소", "독곡동 289-6", "보호중", "건강", "없음", "학대로 안해 사람에 대한 경계가 매우 큽니다.사랑으로 보듬어주세요.");

select * from animal;

delete from animal where name = "미미";