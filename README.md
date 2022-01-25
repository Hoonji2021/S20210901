# 침, 그리고 찌르다(Spring Boot 프로젝트)

<img src="https://user-images.githubusercontent.com/91710897/150909409-91b54e95-7bad-4435-b72d-3af53b10dff9.png" width="500">

### [<데모사이트 이동>](http://3.130.250.18:8181/S20210901/main/)

> **사이트** : 한의원 홈페이지 (중앙정보인재개발원 교육과정 최종 프로젝트)

> **개발모델** : Spring Boot Framework (maven)

> **개발기간** : 2021. 11.19 ~ 2021.12.23 (4주)

> **개발인원** : 5명

> **사용기술** : 
 - 프론트엔드 : html, css, javascript, jquery,
 - 백엔드 : java, Spring, oracle sql, ajax,lombok 등

>	**개발환경** : 
 <img src="https://user-images.githubusercontent.com/91710897/150810033-958ca2ee-877d-4059-a9c6-7e1f4b5c64b0.PNG" width="600">
 
# 기획의도
‘침, 그리고 찌르다’는 한의원 사이트입니다. 
팀원 중에 한의원을 개원한 지인이 있었고, 사이트를 만들어야 한다는 이야기를 듣게 됐습니다. 
실제 클라이언트의 요청에 따라 사이트를 개발하는 것이 경험을 할 기회라 생각하여 프로젝트로 진행하게 되었습니다. 사이트가 실제 상용화 단계까지는 미치지는 못했지만 비공개게시판, 관리자페이지,  직원근태 관리 등 실제 필요로 하는 기능들을 최대한으로 구현하기 위해 많은 노력을 기울였습니다. 
 
>	**대상고객** : 진료를 희망하는 모든 고객 및 한의원 직원

>	**서비스목표** : 
-	진료예약 및 진료 상담
-	치료후기
-	자가진단 서비스
-	회원관리 및 직원관리 서비스
-	병원소개 및 소식 전달

# 담당역할
1. **회원가입 및 로그인**  

    - 로그인 UI 구현
    - Session 기반 로그인 구현
    - 보안을 위한 Interceptor 구현
    - 중복검사(Ajax)
   
2. **1대1게시판 CRUD&paging**
 
|||
|:-:|:-:|
|<img src="https://user-images.githubusercontent.com/91710897/150915284-b9220690-7ec8-452c-a307-8e1543fbaeeb.png" width="250">|<img src="https://user-images.githubusercontent.com/91710897/150915284-b9220690-7ec8-452c-a307-8e1543fbaeeb.png" width="250">|


    - 게시판 CRUD UI 구현 
    - 비밀번호 유효성검사 기능 (JS)
    - 관리자 답변여부 기능(답변대기/답변완료) 
    
3. **치료후기 게시판 CRUD&paging**
    - 게시판 CRUD UI 구현 
    - 별점 기능
    - 별점별 조회기능(검색)
    
4. **자가진단 페이지** 
    - 자가진단 UI 구현
    - 점수 계산 및 결과 출력 
    
5. **오시는길 페이지**
    - kakao 지도 api 연동

# 노력한 것들
1. 회원 등급에 따른 기능 구분
    - 비공개 개시판 비밀번호 유효성 검사 기능 추가
    - Interceptor 이용하여 회원,비회원 & 회원,직원간 
2. Git&Github 프로젝트 협업
    - Git 주도적 공부
    - 작업 시작 시 pull, 마치기 전 commit 생활화
    - git을 통한 프로젝트 협업 프로세스에 대한 이해
3. 코드 리팩토링
    - 각 기능간에 주석 적극 이용
    - 반복함수 제거 및 코드 간결화
    - 자가진단 3가지 페이지를 하나의 Model로 통합
    











