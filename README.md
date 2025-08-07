# 個人作品集網站（ASP.NET Core MVC）

此專案為研究所申請作品集，採用 **ASP.NET Core MVC + SQL Server** 開發，展示了：
- 完整 MVC 架構（自傳、作品集、聯絡表單）
- SQL Server 資料庫串接與實際應用
- 個人技術能力與專業背景

本專案可於 **教授的本機環境直接執行**，完整呈現網站功能。

---

## ✅ 環境需求

- **Visual Studio 2022**（需安裝「ASP.NET 與 Web 開發」工作負載）
- **.NET 6** 或以上版本
- **SQL Server Express 或 Developer 版**
- **SQL Server Management Studio (SSMS)**（用於還原資料庫或執行 SQL 腳本）

---

## ✅ 資料庫初始化方式

在 `Database` 資料夾中，已提供兩種資料庫初始化方式，請擇一使用：

### 方式一（推薦）：執行 SQL 腳本
1. 打開 **SSMS**。
2. 新增查詢視窗並執行以下腳本：
    ```sql
    :r .\Database\init.sql
    ```
    ✔ 此腳本會自動建立 `ForProject` 資料庫，並匯入測試資料（含 MarryWanna 專案）。

### 方式二：直接還原資料庫（快速）
1. 打開 **SSMS** → 右鍵「資料庫」→「還原資料庫」。
2. 選擇「來源裝置」並載入 `Database/ForProject.bak`。
3. 還原完成後即可直接使用。

---

## ✅ 修改連線字串

打開 `ProjectMVC/appsettings.json`，確認以下連線字串：
```json
"ConnectionStrings": {
  "DbConnectonString": "Server=.\\PROJECTSQL;Database=ForProject;Trusted_Connection=True;MultipleActiveResultSets=true"
}
