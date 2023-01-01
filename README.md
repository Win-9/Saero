# 새로



**새로는 유기동물을 사용자들에게 매칭 시켜주는 서비스로서 유기동물의 인식을 변화하고 그 수를 줄이는데 의의가 있다.**

**개인적 또는 기관에서 보호하고 있는 동물을 등록하거나 길거리에서 떠돌고 있는 동물을 등록할 수 있다.**

**동물의 정보를 보다 상세히 등록이 가능하며 사용자로 하여금 여러 정보를 제공해줄 수 있다.**

**사용자는 이렇게 등록된 정보를 열람하고 다양한 유기 동물을 보면서 유기 동물의 입양을 결정 할 수 있다.**  

---

### 환경 설정

* Tomcat 9.0.68
* MySQL 8.0.30
* JDK 17.0.5


#### Tomcat

* Tomcat은 HTTP 연결 Port로 8080, Shutdown Port로 8005번을 이용합니다.

* 역할과 사용자 구성
> Tomcat 서버에 역할과 사용자를 구성하려면 Servers의  tomcat-users.xml을 수정해야 합니다.

---

## View

### 로그인

![image](https://user-images.githubusercontent.com/80390524/210159962-814e040d-6ca8-4f1a-a37d-744c22765dcd.png)

- **JSP 시큐리티 처리로 존재하는 모든 파일에 URL-PATTERN에 대하여 시큐리티 처리를 했기 때문에 로그인을 하지 않으면 모든 페이지에 접근이 불가능하다.**
- **등록한 아이디를 통하여 로그인이 가능하다.**
- **현재 등록되어있는 아이디: guest1, 비밀번호: guest123 이다.**

---

### 메인 페이지

![image](https://user-images.githubusercontent.com/80390524/210159966-ef74e10c-921f-43a5-9d7d-881e78afbf33.png)

![image](https://user-images.githubusercontent.com/80390524/210159967-6a9fa5a6-a6a1-4451-ac6c-209797187788.png)

- **로그인 후에 모든 페이지에 대하여 접근을 할 수 있음.**
- **네비게이션 바를 이용하여 다양한 메뉴에 접근 가능함.**
- **하단의 copyRight정보를 확인할 수 있다.**
- **쿠키로 이루어진 열람 목록은 후에 동물들을 열람 하면 쿠키에 정보가 저장되면서 열람한 동물 목록을 확인할 수 있다.**

---

### 서비스 페이지

![image](https://user-images.githubusercontent.com/80390524/210159968-a16f97b3-4ae3-44e9-8b36-509b98268f7e.png)

![image](https://user-images.githubusercontent.com/80390524/210159969-bf890f1c-f4f2-4d09-8674-c39013500834.png)

- **네비게이션 바의 서비스를 누르면 서비스 페이지로 이동 가능**
- **사이트 개설의 의의와 목적을 열람 가능함**

---

### 등록 페이지

![image](https://user-images.githubusercontent.com/80390524/210159971-67079403-6845-4ecf-81ee-6adeeb14aeeb.png)

![image](https://user-images.githubusercontent.com/80390524/210159973-0e206866-4da9-45ad-b2fb-87df297e01c7.png)

- **네비게이션 바의 등록탭을 누르면 등록 페이지로 이동 가능**
- **등록하려는 동물의 정보를 기입하여 등록할 수 있다.**

![image](https://user-images.githubusercontent.com/80390524/210159975-cd2c42ec-8a33-4bca-9e9d-5c062846da0f.png)

![image](https://user-images.githubusercontent.com/80390524/210159978-e312013d-7fa5-469c-9192-5fd7cd458c7f.png)

![image](https://user-images.githubusercontent.com/80390524/210159980-3a56873c-5947-4616-b95a-851f5dd02bde.png)

- **유효성 검사를 적용하여 필수로 입력 해야 하는 정보들이 존재**
- **이름의 입력은 필수적이며 나이는 숫자만 입력이 가능하다.**
- **사진의 업로드는 필수적이며 모든 조건을 만족하지 못하면 등록할 수 없다.**

![image](https://user-images.githubusercontent.com/80390524/210159981-badff152-2fa7-4846-9a02-488eba156e5c.png)

- **모든 정보를 올바르게 입력하면 등록이 가능하다.**
- **이후 입양 페이지로 redirect된다.**

---

### 입양 페이지

![image](https://user-images.githubusercontent.com/80390524/210159982-e729c036-e8e4-436a-b740-5208710d1036.png)

![image](https://user-images.githubusercontent.com/80390524/210159984-defe668f-911c-4e89-a09a-1f45b0e6e18f.png)

- **네비게이션바의 입양을 누르면 입양 페이지로 이동**
- **DB에 등록된 정보를 기반으로 해당 페이지를 동적으로 생성**
- **등록된 동물의 사진과 약식의 정보를 볼 수 있음**
- **동물의 사진을 누르면 해당 동물의 상세한 정보를 볼 수 있음**

![image](https://user-images.githubusercontent.com/80390524/210159986-493044e3-1dfb-411c-b40e-f6530c7ac6e2.png)

![image](https://user-images.githubusercontent.com/80390524/210159988-5b722006-538b-40f8-9e16-86f1d29f6026.png)

![image](https://user-images.githubusercontent.com/80390524/210159990-ce675a9e-8ffe-42ae-8633-fc11af12b7ce.png)

- **동물 사진을 클릭하면 동물의 자세한 정보를 열람 가능**
- **이는 쿠키로 저장되어 후에 열람 목록을 확인 가능**
- **보호 장소를 누르게 되면 구글 맵과 연동 되어서 보호 장소의 위치를 확인 가능**

![image](https://user-images.githubusercontent.com/80390524/210159991-366adb9d-7b9d-422c-aca1-c68acad7db78.png)

- **보호 장소를 더 자세히 입력할 수록 정확한 위치가 표시된다.**

- **입양하기 버튼을 누르면 이는 세션에 추가 되어서 후에 입양 목록을 확인 가능**
- **입양 페이지로 redirect된다.**

![image](https://user-images.githubusercontent.com/80390524/210159993-5bc68577-9ab6-4c31-a006-bf9d1d93224f.png)

- **이후 열람한 정보를 하단의 열람 목록으로 확인이 가능**
- **이는 가로의 무한 스크롤로 이루어져 있음**

---

### 내 정보 페이지

![image](https://user-images.githubusercontent.com/80390524/210159995-596c61ef-acea-4cb6-b997-6fd42a44386d.png)

![image](https://user-images.githubusercontent.com/80390524/210159996-1b2b2c12-bf6d-45f5-ab51-fed5e9e4a687.png)

![image](https://user-images.githubusercontent.com/80390524/210159998-c264b497-2f6b-4f71-a463-8c3fadb48af4.png)

- **네비게이션의 내정보를 누르면 내정보 페이지로 이동**
- **언어 설정과, 입양한 리스트 확인 가능**

![image](https://user-images.githubusercontent.com/80390524/210160000-23d9a8d4-0a46-4e7f-9b7d-e3b8f68f263e.png)

![image](https://user-images.githubusercontent.com/80390524/210160005-b9682850-a3be-419f-b210-de465d6dc291.png)

- **언어를 선택하면 다국어 처리 기능으로 영어로 번역이 가능**
- **다른 페이지들도 동시에 영어로 번역이 됨**

![image](https://user-images.githubusercontent.com/80390524/210160007-8e2200bc-bbbb-4b71-81d0-5a27afc309c4.png)

- **하단에서는 입양 페이지에서 입양 버튼을 눌러서 입양을 했던 동물의 리스트를 확인 가능**
- **마우스를 올리면 해당 동물의 정보를 확인할 수 있는 연결 아이콘과 입양을 취소할 수 있는 휴지통 아이콘이 존재**
- **연결 아이콘은 동물 목록에서 보았던 세부 사항 정보로 다시 연결**

![image](https://user-images.githubusercontent.com/80390524/210160010-21c3aa99-5b52-4109-80b7-9355d815bc1b.png)

- **휴지통 버튼을 눌러 입양을 했던 동물들을 취소 가능**

---

### 에러 페이지

![image](https://user-images.githubusercontent.com/80390524/210160012-f0c2de34-416c-4456-9c6c-ebe035037b7d.png)

- **잘못된 URL의 정보를 입력하면 해당 오류 페이지를 보임**
- **400, 404, 500에 대한 오류에 해당 오류 페이지를 보여줌**

---

### 로그아웃

![image](https://user-images.githubusercontent.com/80390524/210160015-a0b07d74-b28b-4649-85df-c62b0081fc4d.png)

- **네비게이션 바의 로그아웃 버튼을 누르면 로그인 했던 세션 정보가 사라지면서 다시 로그인 창으로 넘어가게 된다.**

---

#### Using
* JAVA
* JSP
* JS
* MySQL


#### reference

- glitorbox.js
- otope-layout
- swiper.js
- Animate.css
- box-icons
- BootStrap
