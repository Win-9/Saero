# 새로

---

**새로는 유기동물을 사용자들에게 매칭 시켜주는 서비스로서 유기동물의 인식을 변화하고 그 수를 줄이는데 의의가 있다.**

**개인적 또는 기관에서 보호하고 있는 동물을 등록하거나 길거리에서 떠돌고 있는 동물을 등록할 수 있다.**

**동물의 정보를 보다 상세히 등록이 가능하며 사용자로 하여금 여러 정보를 제공해줄 수 있다.**

**사용자는 이렇게 등록된 정보를 열람하고 다양한 유기 동물을 보면서 유기 동물의 입양을 결정 할 수 있다.**  

---

### 로그인

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/e5fbb5a4-a78b-4126-924a-f20bf83341b3/Untitled.png)

- **JSP 시큐리티 처리로 존재하는 모든 파일에 URL-PATTERN에 대하여 시큐리티 처리를 했기 때문에 로그인을 하지 않으면 모든 페이지에 접근이 불가능하다.**
- **등록한 아이디를 통하여 로그인이 가능하다.**
- **현재 등록되어있는 아이디: guest1, 비밀번호: guest123 이다.**

---

### 메인 페이지

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/ceea20ad-1702-4dbf-96cf-0a2f90c177cc/Untitled.png)

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/1abbf8be-f820-497d-a972-47ec958c997a/Untitled.png)

- **로그인 후에 모든 페이지에 대하여 접근을 할 수 있음.**
- **네비게이션 바를 이용하여 다양한 메뉴에 접근 가능함.**
- **하단의 copyRight정보를 확인할 수 있다.**
- **쿠키로 이루어진 열람 목록은 후에 동물들을 열람 하면 쿠키에 정보가 저장되면서 열람한 동물 목록을 확인할 수 있다.**

---

### 서비스 페이지

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/9b7e226b-40ad-49c4-94d3-96c84f602877/Untitled.png)

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/2c208ee7-f4de-4275-97de-28c096904afd/Untitled.png)

- **네비게이션 바의 서비스를 누르면 서비스 페이지로 이동 가능**
- **사이트 개설의 의의와 목적을 열람 가능함**

---

### 등록 페이지

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/56d5ccf7-ea38-4d98-b920-7548e884a21d/Untitled.png)

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/5eee3f53-14a3-438d-ab42-bec15b25ce2e/Untitled.png)

- **네비게이션 바의 등록탭을 누르면 등록 페이지로 이동 가능**
- **등록하려는 동물의 정보를 기입하여 등록할 수 있다.**

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/90fb177a-9566-4c32-ad9c-4860ce181e0b/Untitled.png)

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/28462577-e330-4fea-b359-bd3a29623174/Untitled.png)

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/c60e0a16-98b2-47e4-a4d1-f58b02c44c29/Untitled.png)

- **유효성 검사를 적용하여 필수로 입력 해야 하는 정보들이 존재**
- **이름의 입력은 필수적이며 나이는 숫자만 입력이 가능하다.**
- **사진의 업로드는 필수적이며 모든 조건을 만족하지 못하면 등록할 수 없다.**

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/027f17a6-22ad-421d-bb11-42894c111f1d/Untitled.png)

- **모든 정보를 올바르게 입력하면 등록이 가능하다.**
- **이후 입양 페이지로 redirect된다.**

---

### 입양 페이지

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/93e4834b-79e7-4cd2-a618-87585cf55023/Untitled.png)

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/e28ecbba-222a-4b6b-ac52-09186f0cf6fb/Untitled.png)

- **네비게이션바의 입양을 누르면 입양 페이지로 이동**
- **DB에 등록된 정보를 기반으로 해당 페이지를 동적으로 생성**
- **등록된 동물의 사진과 약식의 정보를 볼 수 있음**
- **동물의 사진을 누르면 해당 동물의 상세한 정보를 볼 수 있음**

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/a4a98aea-efdc-45f3-8128-fb3d94f575e1/Untitled.png)

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/b1531c4e-d749-43bf-81a7-218b535559e0/Untitled.png)

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/caa4e8dc-d62f-4550-bc76-8794db22d508/Untitled.png)

- **동물 사진을 클릭하면 동물의 자세한 정보를 열람 가능**
- **이는 쿠키로 저장되어 후에 열람 목록을 확인 가능**
- **보호 장소를 누르게 되면 구글 맵과 연동 되어서 보호 장소의 위치를 확인 가능**

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/7b1aaed5-3200-4a89-a793-5840019f8237/Untitled.png)

- **보호 장소를 더 자세히 입력할 수록 정확한 위치가 표시된다.**

- **입양하기 버튼을 누르면 이는 세션에 추가 되어서 후에 입양 목록을 확인 가능**
- **입양 페이지로 redirect된다.**

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/f1fdce5c-556c-4fc6-9778-e666d74d9e7b/Untitled.png)

- **이후 열람한 정보를 하단의 열람 목록으로 확인이 가능**
- **이는 가로의 무한 스크롤로 이루어져 있음**

---

### 내 정보 페이지

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/505b55d9-239c-4343-9e56-681dc9b552b3/Untitled.png)

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/3f6f0588-5d29-44ca-8c10-9763d320851e/Untitled.png)

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/0db54f2d-4199-4e91-b201-97f8eae0515c/Untitled.png)

- **네비게이션의 내정보를 누르면 내정보 페이지로 이동**
- **언어 설정과, 입양한 리스트 확인 가능**

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/27f90a28-8cf7-49c1-9193-81369bfba7c8/Untitled.png)

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/e5b56c8c-e083-4e81-a0c0-383ecac0c8b7/Untitled.png)

- **언어를 선택하면 다국어 처리 기능으로 영어로 번역이 가능**
- **다른 페이지들도 동시에 영어로 번역이 됨**

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/82f1f45f-14e7-4637-b6c6-e7aa092e1616/Untitled.png)

- **하단에서는 입양 페이지에서 입양 버튼을 눌러서 입양을 했던 동물의 리스트를 확인 가능**
- **마우스를 올리면 해당 동물의 정보를 확인할 수 있는 연결 아이콘과 입양을 취소할 수 있는 휴지통 아이콘이 존재**
- **연결 아이콘은 동물 목록에서 보았던 세부 사항 정보로 다시 연결**

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/b13e31ba-e494-40b4-a7e3-48d466987f3e/Untitled.png)

- **휴지통 버튼을 눌러 입양을 했던 동물들을 취소 가능**

---

### 에러 페이지

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/cfe5b458-a51f-4777-8c67-69246ecaef1e/Untitled.png)

- **잘못된 URL의 정보를 입력하면 해당 오류 페이지를 보임**
- **400, 404, 500에 대한 오류에 해당 오류 페이지를 보여줌**

---

### 로그아웃

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/7da18835-068e-4c21-a394-d48499e2a9d7/Untitled.png)

- **네비게이션 바의 로그아웃 버튼을 누르면 로그인 했던 세션 정보가 사라지면서 다시 로그인 창으로 넘어가게 된다.**

---

### reference

- glitorbox.js
- otope-layout
- swiper.js
- Animate.css
- box-icons
- BootStrap
