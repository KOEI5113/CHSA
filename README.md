# CHSA
CH Speilized Arsenal, 根據台灣 Arma 3 黑熊中隊的腳本並修改為使用 Ace Arsenal 並會根據玩家專精名稱設定專精能力。

## 如何引用到任務中

1. 將本專案資料夾下載下來並解壓縮出 CHSA 資料夾，並放入任務資料夾中。
2. 在任務資料夾中的 `description.ext` 追加以下程式碼（若原本並無此檔案則自行手動新增相同檔名檔案）

```c
#include "CHSA\dialog.hpp"

// 若原本已經有 CfgFunctions，則不需要重複新增一個 cfgFunctions, 只需要確保 CHSA\CfgFunctions.hpp 有被引用即可
class CfgFunctions
{
    #include "CHSA\CfgFunctions.hpp"
};

// 若原本已經有 RscTitles，則不需要重複新增一個 RscTitles, 只需要確保 CHSA\CHSA_warning.hpp 有被引用即可
class RscTitles
{
    #include "CHSA\CHSA_warning.hpp"
};
```

3. 在任務中放置任何一個物件，並在初始化指令欄中貼上以下腳本

```sqf
null = [this] execVM "CHSA\config.sqf";
```

> 如果你有多份陣營裝備想要設定，可以利用第二個參數來指定陣營名稱，例如：  
>
> ```sqf
> null = [this, "BLU_F"] execVM "CHSA\config.sqf";
> ```
>
> 這樣就會設定 BLU_F 陣營的裝備清單。

4. 回到 CHSA 資料夾底下找到 `config.sqf` 並調整成你要的裝備清單。


## 常見 Q&A
### 我該如何設定自訂義我想要的裝備？

所有裝備都定義在 `equipments` 內的檔案，這邊的結構大體如下：

- `common.sqf`：用來存放那些跨陣營都會用到的東西，例如醫療物資、一般道具等
- `{陣營名稱}.sqf`：用來存放該陣營的裝備清單，以及該陣營有哪些植物可以選擇，你可以為陣營任意命名，但必須與設定軍火庫時指令的第二個參數對得上。  

    > ```sqf
    > null = [this, "{陣營名稱}"] execVM "CHSA\config.sqf";
    > ```

所以詳細流程如下：

Step 1. 複製 BLU_F.sqf 並重新命名為你想要的陣營名稱

Step 2. 參考 BLU_F.sqf 的格式，將你想要的裝備加入到該檔案中，這些最終會在 `config.sqf` 中被引用來為不同職務設定裝備。

Step 3. 若你有對該陣營有可選職務的設定需求，可以在同一支檔案中調整設定來決定開放那些職務。


### 我修改了 config.sqf，現在我變更職業不會獲得該職業的專精能力了
> （醫護兵無法下個人急救包、工兵無法透過工具包進行維修或透過拆彈工具進行拆彈等，都算此問題）

專精能力賦予的程式碼在 `CHSA/functions/fn_onApply.sqf` 這段：
```sqf
	// // 追加程式碼開始 -------------------------------------------
	// 取得玩家當前職務名稱
	_specNames = _obj getVariable ["CHSA_specNames", []];
	_specName = (_specNames select _specIndex);

	// 設定玩家的專精 - 如果玩家的選擇的職務名稱滿足特定條件，就設定該專精
	player setUnitTrait ["Medic", (["醫護兵"] find _specName >= 0)];
	player setUnitTrait ["Engineer", (["工程兵", "火砲操作人員", "直升機組員", "機組員", "飛行員"] find _specName >= 0)];
	player setUnitTrait ["ExplosiveSpecialist", (["工程兵"] find _specName >= 0)];
	player setUnitTrait ["UavHacker", (["前線火炮觀察員"] find _specName >= 0)];
	// // 追加程式碼結束 -------------------------------------------
```

**如果你修改了 `config.sqf` 中的 `_specNames`，會造成程式碼可能無法跟新的 `_specNames` 互相呼應。**

所以如果你修改了 `config.sqf`，可能會需要跟著修改 `CHSA/functions/fn_onApply.sqf` 來確保程式碼正常。

