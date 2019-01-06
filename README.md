# 排球盃線上報名系統

## 介紹

排球比賽的線上報名系統，讓主辦方能夠更有效率地蒐集使用者的資訊做確認，也讓報名者能夠有更順暢的報名體驗。

## Usage

1. 安裝相依套件

    ```=node
    npm install
    ```

2. 啟動server

    ```=node
    npm start
    ```

3. 瀏覽 localhost:3000

## 系統需求

**隊伍(team):**

- t_id(流水號)

- name(隊名)

- number(人數)

- state(報名狀況)

- school(學校)

- major(系所)

- pay(繳費狀況)

**會員(member):**

- m_id(外來鍵)

- name(名字)

- gender(性別)

- id(身分證字號)

- birth(生日)

- school_id(學校編號,FK)

- major_id(系所編號,FK)

- student_id(學號)

- tel(連絡電話)

- email(信箱)

- team_id(所屬隊伍)

**學校(school,本次比賽有開放參與的學校):**

- s_id(編號,PK)

- name(校名)

**系所(major,本次比賽有開放參與的系所):**

- m_id(系所編號,PK)

- name(系名)

**隊伍成員(team_member,隊伍成員對應):**

- t_id(隊伍編號)

- m_id(隊員編號)

## 頁面設計

**navbar**
左端:

- 填寫個人資料

- 報名現況

- 關於我們

右端:
login按鈕,如果成功登入後會顯示會員姓名(未來再做)
登入成功後可以看到下拉選單箭頭(profile,setting)


報名現況:
1.除了form外再上方增加dropdown讓使用者選擇比賽
2.新增查詢框方便直接搜尋隊伍名稱or學校名稱。
