--テーブル
CREATE TABLE  "T_INITIAL_KD" 
   (	"T_INITIAL_ID" NUMBER, 
	"T_INITIAL_VALUE" VARCHAR2(255), 
	"T_CONTENTS" VARCHAR2(255), 
	 CONSTRAINT "T_INITIAL_KD_PK" PRIMARY KEY ("T_INITIAL_ID")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "T_INITIAL_KD_BACKUP" 
   (	"T_INITIAL_ID" NUMBER, 
	"T_INITIAL_VALUE" VARCHAR2(255), 
	"T_CONTENTS" VARCHAR2(255), 
	 CONSTRAINT "T_INITIAL_KD_BACKUP_PK" PRIMARY KEY ("T_INITIAL_ID")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "T_IN_OUT_KD" 
   (	"ID" NUMBER, 
	"T_TIME" TIMESTAMP (6) WITH TIME ZONE, 
	"T_FIELD1" VARCHAR2(255), 
	"T_FIELD2" VARCHAR2(255), 
	"T_FIELD3" VARCHAR2(255), 
	"T_FIELD4" VARCHAR2(255), 
	"T_FIELD5" VARCHAR2(255), 
	"T_FIELD6" VARCHAR2(255), 
	"T_PIC" VARCHAR2(255), 
	"T_PIC_NAME" VARCHAR2(255), 
	"T_LOCATION_ID" VARCHAR2(255), 
	"T_LOCATION_NAME" VARCHAR2(255), 
	"T_DATE_RETURN" TIMESTAMP (6) WITH TIME ZONE, 
	"T_MODE" NUMBER, 
	 CONSTRAINT "T_IN_OUT_KD_PK" PRIMARY KEY ("ID")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "T_IN_OUT_KD_BACKUP" 
   (	"ID" NUMBER, 
	"T_TIME" TIMESTAMP (6) WITH TIME ZONE, 
	"T_FIELD1" VARCHAR2(255), 
	"T_FIELD2" VARCHAR2(255), 
	"T_FIELD3" VARCHAR2(255), 
	"T_FIELD4" VARCHAR2(255), 
	"T_FIELD5" VARCHAR2(255), 
	"T_FIELD6" VARCHAR2(255), 
	"T_PIC" VARCHAR2(255), 
	"T_PIC_NAME" VARCHAR2(255), 
	"T_LOCATION_ID" VARCHAR2(255), 
	"T_LOCATION_NAME" VARCHAR2(255), 
	"T_DATE_RETURN" TIMESTAMP (6) WITH TIME ZONE, 
	"T_MODE" NUMBER, 
	 CONSTRAINT "T_IN_OUT_KD_BACKUP_PK" PRIMARY KEY ("ID")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "T_LOCATION_MASTER_KD" 
   (	"T_LOCATION_ID" VARCHAR2(30), 
	"T_LOCATION_NAME" VARCHAR2(30), 
	 CONSTRAINT "T_LOCATION_MASTER_KD_PK" PRIMARY KEY ("T_LOCATION_ID")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "T_LOCATION_MASTER_KD_BACKUP" 
   (	"T_LOCATION_ID" VARCHAR2(30), 
	"T_LOCATION_NAME" VARCHAR2(30), 
	 CONSTRAINT "T_LOCATION_MASTER_KD_BACKUP_PK" PRIMARY KEY ("T_LOCATION_ID")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "T_NOT_ENTRY_KD" 
   (	"ID" NUMBER, 
	"T_FIELD1" VARCHAR2(255), 
	"T_PIC" VARCHAR2(255), 
	"T_TIME" TIMESTAMP (6) WITH TIME ZONE, 
	"T_LOCATION_ID" VARCHAR2(255), 
	"T_DATE_RETURN" TIMESTAMP (6) WITH TIME ZONE, 
	"T_MODE" VARCHAR2(255), 
	 CONSTRAINT "T_NOT_ENTRY_KD_PK" PRIMARY KEY ("ID") DISABLE
   )
/
CREATE TABLE  "T_PIC_MASTER_KD" 
   (	"T_PIC" VARCHAR2(255) NOT NULL ENABLE, 
	"T_PIC_NAME" VARCHAR2(255) NOT NULL ENABLE, 
	"T_PASSWORD" VARCHAR2(255), 
	 CONSTRAINT "T_PIC_MASTER_KD_PK" PRIMARY KEY ("T_PIC")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "T_PIC_MASTER_KD_BACKUP" 
   (	"T_PIC" VARCHAR2(255) NOT NULL ENABLE, 
	"T_PIC_NAME" VARCHAR2(255) NOT NULL ENABLE, 
	"T_PASSWORD" VARCHAR2(255), 
	 CONSTRAINT "T_PIC_MASTER_KD_BACKUP_PK" PRIMARY KEY ("T_PIC")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "T_PRODUCTS_KD" 
   (	"T_FIELD1" VARCHAR2(255), 
	"T_FIELD2" VARCHAR2(255), 
	"T_FIELD3" VARCHAR2(255), 
	"T_FIELD4" VARCHAR2(255), 
	"T_FIELD5" VARCHAR2(25), 
	"T_FIELD6" VARCHAR2(255), 
	"T_PIC" VARCHAR2(255), 
	"T_PIC_NAME" VARCHAR2(255), 
	"T_LOCATION_ID" VARCHAR2(255), 
	"T_LOCATION_NAME" VARCHAR2(255), 
	"T_DATE_LEND" TIMESTAMP (6) WITH TIME ZONE, 
	"T_DATE_RETURN" TIMESTAMP (6) WITH TIME ZONE, 
	"T_LEND_FLG" NUMBER DEFAULT 0, 
	"T_INVENTORY_FLG" NUMBER DEFAULT 0, 
	"T_LEND_COUNT" NUMBER DEFAULT 0, 
	"T_PICTURE" BLOB, 
	"T_MIME_TYPE" VARCHAR2(255), 
	"T_FILE_NAME" VARCHAR2(255), 
	"T_LAST_UPDATED" TIMESTAMP (6) WITH TIME ZONE, 
	 CONSTRAINT "T_PRODUCTS_KD_PK" PRIMARY KEY ("T_FIELD1")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "T_PRODUCTS_KD_BACKUP" 
   (	"T_FIELD1" VARCHAR2(255), 
	"T_FIELD2" VARCHAR2(255), 
	"T_FIELD3" VARCHAR2(255), 
	"T_FIELD4" VARCHAR2(255), 
	"T_FIELD5" VARCHAR2(25), 
	"T_FIELD6" VARCHAR2(255), 
	"T_PIC" VARCHAR2(255), 
	"T_PIC_NAME" VARCHAR2(255), 
	"T_LOCATION_ID" VARCHAR2(255), 
	"T_LOCATION_NAME" VARCHAR2(255), 
	"T_DATE_LEND" TIMESTAMP (6) WITH TIME ZONE, 
	"T_DATE_RETURN" TIMESTAMP (6) WITH TIME ZONE, 
	"T_LEND_FLG" NUMBER DEFAULT 0, 
	"T_INVENTORY_FLG" NUMBER DEFAULT 0, 
	"T_LEND_COUNT" NUMBER DEFAULT 0, 
	"T_PICTURE" BLOB, 
	"T_MIME_TYPE" VARCHAR2(255), 
	"T_FILE_NAME" VARCHAR2(255), 
	"T_LAST_UPDATED" TIMESTAMP (6) WITH TIME ZONE, 
	 CONSTRAINT "T_PRODUCTS_KD_BACKUP_PK" PRIMARY KEY ("T_FIELD1")
  USING INDEX  ENABLE
   )
/
--順序
 CREATE SEQUENCE   "T_IN_OUT_KD_BACKUP_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 601 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL
/
 CREATE SEQUENCE   "T_IN_OUT_KD_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 681 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL
/
 CREATE SEQUENCE   "T_NOT_ENTRY_KD_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 23841 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL
/

--パッケージ--------------------------------------
--ヘッダー----------
create or replace PACKAGE  "PKG_KD_APP" as

    --ログイン認証
    function FUNCTION_CUSTOM_AUTH (
    p_username in varchar2,
    p_password in varchar2 )
    return boolean;

    --貸出・返却
    procedure fnc_ImportInOut(
        intMode          IN NUMBER,
        strPic           IN VARCHAR2,
        strSerialNo      IN VARCHAR2,
        dtDateReturn     IN TIMESTAMP WITH TIME ZONE DEFAULT NULL,
        strLocationId    IN VARCHAR2 DEFAULT NULL
    );

    --棚卸
    procedure fnc_UpdateInventoryFlg(
        strSerialNo      IN VARCHAR2
    );

    --未登録リスト削除
    procedure fnc_DeleteNotEntryList; 

    --棚卸開始ボタン
    procedure fnc_StartInventory;

    --棚卸終了ボタン
    procedure fnc_StopInventory;
    
    --棚卸の開始/終了を確認
    function fnc_IsInventoryOpen return boolean;

end PKG_KD_APP;
/
--本体----------
create or replace PACKAGE BODY  "PKG_KD_APP" is

    --ログイン認証
	function FUNCTION_CUSTOM_AUTH (
	    p_username in varchar2,
	    p_password in varchar2 )
	    return boolean

	as

	    l_user    T_PIC_MASTER_KD.T_PIC%type := upper(p_username);
	    l_secret  T_PIC_MASTER_KD.T_PASSWORD%type;
	    l_cred    T_PIC_MASTER_KD.T_PASSWORD%type;

	begin
	    select
	    	T_PIC, 
	    	T_PASSWORD 
	    into
	    	l_user,
	    	l_secret
	    from
	    	T_PIC_MASTER_KD
	    where
	    	upper(T_PIC) = p_username;

	    l_cred := utl_raw.cast_to_raw(p_password);

	    if l_secret = l_cred then 
	      return true;
	    end if;

	    return false;

	exception

	    when NO_DATA_FOUND then
	      return false;

	end FUNCTION_CUSTOM_AUTH;


    --貸出・返却
    procedure fnc_ImportInOut(
        intMode          NUMBER,
        strPic           VARCHAR2,
        strSerialNo      VARCHAR2,
        dtDateReturn     TIMESTAMP WITH TIME ZONE DEFAULT NULL,
        strLocationId    VARCHAR2 DEFAULT NULL
    )
    as

        --変数宣言
        strPicName         T_PIC_MASTER_KD.T_PIC_NAME%TYPE;
        strLocationName    T_LOCATION_MASTER_KD.T_LOCATION_NAME%TYPE;

    BEGIN
        
        --↓ 担当者名を取得しておく --------------------------------------------------------------------
        BEGIN

            SELECT
                T_PIC_NAME
                INTO strPicName
            FROM
                T_PIC_MASTER_KD
            WHERE
                T_PIC = strPic
                OR upper(T_PIC) = strPic;
    
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                strPicName := '';
        END;
        --↑ 担当者名を取得しておく --------------------------------------------------------------------


        --↓ 棚名を取得しておく --------------------------------------------------------------------
        BEGIN

            SELECT
                T_LOCATION_NAME
                INTO strLocationName
            FROM
                T_LOCATION_MASTER_KD
            WHERE
                T_LOCATION_ID = strLocationId;

        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                strLocationName := '';
        END;
        --↑ 棚名を取得しておく --------------------------------------------------------------------


        --貸出
        IF intMode = 1 then
        
            --更新
            UPDATE
                T_PRODUCTS_KD
            SET
                T_LEND_FLG = 1,
                T_PIC = strPic,
                T_PIC_NAME = strPicName,
                T_LOCATION_ID = strLocationId,
                T_LOCATION_NAME = strLocationName,
                T_DATE_LEND = systimestamp at time zone 'Asia/Tokyo',
                T_DATE_RETURN = dtDateReturn,
                T_LEND_COUNT = T_LEND_COUNT + 1
            WHERE
                T_FIELD1 = strSerialNo;

        --返却
        ELSIF intMode = 2 then
        
            --更新
            UPDATE
                T_PRODUCTS_KD
            SET
                T_LEND_FLG = 0,
                T_PIC = null,
                T_PIC_NAME = null,
                T_LOCATION_ID = null,
                T_LOCATION_NAME = null,
                T_DATE_LEND = null,
                T_DATE_RETURN = null
            WHERE
                T_FIELD1 = strSerialNo;

        END IF;
        
        --履歴レコード追加
        INSERT INTO
            T_IN_OUT_KD
            (
                T_TIME,
                T_PIC,
                T_PIC_NAME,
                T_LOCATION_ID,
                T_LOCATION_NAME,
                T_FIELD1,
                T_FIELD2,
                T_FIELD3,
                T_FIELD4,
                T_FIELD5,
                T_FIELD6,
                T_MODE,
                T_DATE_RETURN
            )
            SELECT
                    systimestamp at time zone 'Asia/Tokyo',
                    strPic,
                    strPicName,
                    strLocationId,
                    strLocationName,
                    strSerialNo,
                    T_FIELD2,
                    T_FIELD3,
                    T_FIELD4,
                    T_FIELD5,
                    T_FIELD6,
                    intMode,
                    T_DATE_RETURN
            FROM
                T_PRODUCTS_KD
            WHERE
                T_FIELD1 = strSerialNo
                and rownum = 1;

    end fnc_ImportInOut;
 
    --未登録リスト削除
    procedure fnc_DeleteNotEntryList 
    is  
    BEGIN 
 
        --未登録リスト削除
        DELETE
        FROM
            T_NOT_ENTRY_KD;
 
    end fnc_DeleteNotEntryList; 

    --棚卸
    procedure fnc_UpdateInventoryFlg(
        strSerialNo      VARCHAR2
    )
    is 
    BEGIN
        
        --棚卸フラグ更新
        UPDATE
            T_PRODUCTS_KD
        SET
            T_INVENTORY_FLG = 1
        WHERE
            T_FIELD1 = strSerialNo;
        
    end fnc_UpdateInventoryFlg;
    
    
    --棚卸開始ボタン
    procedure fnc_StartInventory
    is 
    BEGIN

        --前回実績数クリア
        UPDATE
            T_PRODUCTS_KD
        SET
            T_INVENTORY_FLG = 0;
        
        --棚卸開始フラグ更新
        UPDATE
            T_INITIAL_KD
        SET
            T_INITIAL_VALUE = 1
        WHERE
            T_INITIAL_ID = 26;

    end fnc_StartInventory;

    --棚卸終了ボタン
    procedure fnc_StopInventory
    is 
    BEGIN
        
        --棚卸開始フラグ更新
        UPDATE
            T_INITIAL_KD
        SET
            T_INITIAL_VALUE = 0
        WHERE
            T_INITIAL_ID = 26;
        
    end fnc_StopInventory;

    
    --棚卸ステータスの確認
    function fnc_IsInventoryOpen return boolean
    is
      l_inv_status t_initial_kd.t_initial_value%type;
    begin
      select t_initial_value into l_inv_status
      from t_initial_kd where t_initial_id = 26;
      if l_inv_status = 1 then
        return true;
      end if;
      return false;
    exception
      when no_data_found then
        return false;
    end fnc_IsInventoryOpen;

end PKG_KD_APP;
/
--ヘッダー----------
create or replace PACKAGE  "PKG_KD_DELETE_OLD_DATA" IS 
 
    --過去データ削除 
    procedure fnc_DeleteOldData; 
 
    --過去データ削除JOB作成 
    procedure fnc_JobCreate; 
 
    --過去データ削除JOB削除 
    procedure fnc_JobDelete; 
     
    --過去データ削除JOB有効化 
    procedure fnc_JobEnabled; 
 
    --過去データ削除JOB無効化 
    procedure fnc_JobDisabled; 
 
END PKG_KD_DELETE_OLD_DATA; 
 
--登録済みのJOB一覧は下記のSQLで取得する 
--SELECT * FROM USER_SCHEDULER_JOBS;
/
--本体----------
create or replace PACKAGE BODY  "PKG_KD_DELETE_OLD_DATA" IS 
 
    --過去データ削除 
    procedure fnc_DeleteOldData IS 
    BEGIN 
     
        --T_IN_OUT_KD削除 
        DELETE 
        FROM 
            T_IN_OUT_KD 
        WHERE 
            TO_DATE(SYSDATE, 'yyyy/mm/dd hh24:mi:ss') > TO_DATE(ADD_MONTHS(T_TIME, 12), 'yyyy/mm/dd hh24:mi:ss');  
 
        COMMIT; 
 
    END fnc_DeleteOldData; 
 
 
    --過去データ削除JOB作成 
    procedure fnc_JobCreate IS 
    BEGIN 
        DBMS_SCHEDULER.CREATE_JOB( 
            job_name => 'JOB_KD_DELETE_OLD_DATA',  
            job_type => 'STORED_PROCEDURE',  
            job_action => 'PKG_DELETE_OLD_DATA.fnc_DeleteOldData',  
            start_date => TO_TIMESTAMP_TZ(CONCAT(TO_CHAR(CURRENT_DATE, 'yyyy/MM/dd'), ' 00:00:00 +09:00'),'yyyy/mm/dd hh24:mi:ss TZH:TZM'),
            repeat_interval => 'FREQ=DAILY;',  
            auto_drop => FALSE, enabled => TRUE); 
    END fnc_JobCreate; 
   
 
    --過去データ削除JOB削除 
    procedure fnc_JobDelete IS 
    BEGIN 
        DBMS_SCHEDULER.DROP_JOB('JOB_KD_DELETE_OLD_DATA'); 
    END fnc_JobDelete; 
 
 
    --過去データ削除JOB有効化 
    procedure fnc_JobEnabled IS 
    BEGIN 
        DBMS_SCHEDULER.ENABLE('JOB_KD_DELETE_OLD_DATA'); 
    END fnc_JobEnabled; 
 
 
    --過去データ削除JOB無効化 
    procedure fnc_JobDisabled IS 
    BEGIN 
        DBMS_SCHEDULER.DISABLE('JOB_KD_DELETE_OLD_DATA'); 
    END fnc_JobDisabled; 
 
END PKG_KD_DELETE_OLD_DATA;
/
--ヘッダー----------
create or replace PACKAGE  "PKG_KD_DRS" as 

    --確定 
    procedure fnc_DCMPCMP 
    ( 
        strMode          IN NUMBER, 
        strPic           IN VARCHAR2, 
        strLocationId    IN VARCHAR2 DEFAULT NULL,
        dtDateReturn     IN TIMESTAMP WITH TIME ZONE DEFAULT NULL, 
        strHinban        IN VARCHAR2, 
        dtTime           IN TIMESTAMP WITH TIME ZONE DEFAULT systimestamp at time zone 'Asia/Tokyo'
    );  


    --棚卸確定 
    procedure fnc_TCMPCMP 
    ( 
        strMode          IN NUMBER, 
        strPic           IN VARCHAR2, 
        strLocationId    IN VARCHAR2 DEFAULT NULL,
        dtDateReturn     IN TIMESTAMP WITH TIME ZONE DEFAULT NULL, 
        strHinban        IN VARCHAR2, 
        dtTime           IN TIMESTAMP WITH TIME ZONE DEFAULT systimestamp at time zone 'Asia/Tokyo'
    );  


    --確定(ファイル書き込み) 
    procedure fnc_FCMPCMP 
    ( 
        ja               IN JSON_ARRAY_T 
    ); 
 
end;
/
--本体----------
create or replace PACKAGE BODY  "PKG_KD_DRS" IS 

    --確定 
    procedure fnc_DCMPCMP 
    ( 
        strMode          NUMBER, 
        strPic           VARCHAR2, 
        strLocationId    VARCHAR2,
        dtDateReturn     TIMESTAMP WITH TIME ZONE, 
        strHinban        VARCHAR2, 
        dtTime           TIMESTAMP WITH TIME ZONE
    ) 
    AS 
        --変数宣言 
        blnFound NUMBER DEFAULT 1;
        strPicName    T_PIC_MASTER_KD.T_PIC_NAME%TYPE; 
        strField2     T_PRODUCTS_KD.T_FIELD2%TYPE; 
        strLocationName    T_LOCATION_MASTER_KD.T_LOCATION_NAME%TYPE; 

    BEGIN 
 
        --debug
        --DELETE FROM T_DEBUG;

         --debug
        --INSERT INTO T_DEBUG (T_MESSAGE) VALUES('fnc_DCMPCMP');
        --commit;

        --↓ 担当者名を取得しておく -------------------------------------------------------------------- 
        BEGIN 

            SELECT 
                T_PIC_NAME 
                INTO strPicName 
            FROM 
                T_PIC_MASTER_KD 
            WHERE 
                T_PIC = strPic 
                OR upper(T_PIC) = strPic; 
                --手動入力からの入力を想定して、大文字でも検索しておく 

        EXCEPTION 
            WHEN NO_DATA_FOUND THEN 
                strPicName := ''; 
        END; 
        --↑ 担当者名を取得しておく -------------------------------------------------------------------- 


        --↓ 棚名を取得しておく -------------------------------------------------------------------- 
        BEGIN 

            SELECT 
                T_LOCATION_NAME 
                INTO strLocationName 
            FROM 
                T_LOCATION_MASTER_KD 
            WHERE 
                T_LOCATION_ID = strLocationId; 

        EXCEPTION 
            WHEN NO_DATA_FOUND THEN 
                strLocationName := ''; 
        END; 
        --↑ 棚名を取得しておく -------------------------------------------------------------------- 


        --↓ 品名を取得しておく -------------------------------------------------------------------- 
        BEGIN 

            SELECT 
                T_FIELD2
                INTO
                strField2
            FROM 
                T_PRODUCTS_KD
            WHERE 
                T_FIELD1 = strHinban 
                and rownum = 1; 

        EXCEPTION 
            WHEN NO_DATA_FOUND THEN 
                blnFound := 0;    --該当なし

                --未登録リスト追加 
                INSERT INTO 
                    T_NOT_ENTRY_KD
                    ( 
                        T_TIME,
                        T_MODE,
                        T_PIC,
                        T_LOCATION_ID, 
                        T_DATE_RETURN,
                        T_FIELD1 
                    ) 
                    VALUES
                    (
                        dtTime, 
                        strMode,
                        strPic, 
                        strLocationId, 
                        dtDateReturn, 
                        strHinban
                    );

                --処理を抜ける
                return;
        END; 
        --↑ 品名を取得しておく -------------------------------------------------------------------- 


        --貸出 
        IF strMode = 1 then 
         
            --更新 
            UPDATE 
                T_PRODUCTS_KD 
            SET 
                T_LEND_FLG = 1, 
                T_PIC = strPic, 
                T_PIC_NAME = strPicName, 
                T_LOCATION_ID = strLocationId, 
                T_LOCATION_NAME = strLocationName, 
                T_DATE_LEND = dtTime, 
                T_DATE_RETURN = dtDateReturn, 
                T_LEND_COUNT = NVL(T_LEND_COUNT,0) + 1 
            WHERE 
                T_FIELD1 = strHinban; 
 
        --返却 
        ELSIF strMode = 2 then 
         
            --更新 
            UPDATE 
                T_PRODUCTS_KD 
            SET 
                T_LEND_FLG = 0, 
                T_PIC = null, 
                T_PIC_NAME = null, 
                T_LOCATION_ID = null, 
                T_LOCATION_NAME = null, 
                T_DATE_LEND = null, 
                T_DATE_RETURN = null 
            WHERE 
                T_FIELD1 = strHinban; 
 
        END IF;

        --履歴レコード追加 
        INSERT INTO 
            T_IN_OUT_KD 
            ( 
                T_TIME, 
                T_PIC, 
                T_PIC_NAME, 
                T_LOCATION_ID, 
                T_LOCATION_NAME, 
                T_FIELD1, 
                T_FIELD2, 
                T_FIELD3, 
                T_FIELD4, 
                T_FIELD5, 
                T_FIELD6, 
                T_MODE, 
                T_DATE_RETURN 
            ) 
            SELECT 
                    dtTime, 
                    strPic, 
                    strPicName, 
                    strLocationId, 
                    strLocationName, 
                    strHinban, 
                    T_FIELD2, 
                    T_FIELD3, 
                    T_FIELD4, 
                    T_FIELD5, 
                    T_FIELD6, 
                    strMode, 
                    T_DATE_RETURN 
            FROM 
                T_PRODUCTS_KD 
            WHERE 
                T_FIELD1 = strHinban 
                and rownum = 1; 

    END fnc_DCMPCMP;  
        
        
    --棚卸確定 
    procedure fnc_TCMPCMP 
    ( 
        strMode          NUMBER, 
        strPic           VARCHAR2, 
        strLocationId    VARCHAR2,
        dtDateReturn     TIMESTAMP WITH TIME ZONE, 
        strHinban        VARCHAR2, 
        dtTime           TIMESTAMP WITH TIME ZONE
    ) 
    AS 
        --変数宣言 
        blnFound NUMBER DEFAULT 1;
        strPicName    T_PIC_MASTER_KD.T_PIC_NAME%TYPE; 
        strField2     T_PRODUCTS_KD.T_FIELD2%TYPE; 

    BEGIN 

        --debug
        --DELETE FROM T_DEBUG;

         --debug
        --INSERT INTO T_DEBUG (T_MESSAGE) VALUES('fnc_TCMPCMP');
        --commit;

        --↓ 担当者名を取得しておく -------------------------------------------------------------------- 
        BEGIN 

            SELECT 
                T_PIC_NAME 
                INTO strPicName 
            FROM 
                T_PIC_MASTER_KD 
            WHERE 
                T_PIC = strPic 
                OR upper(T_PIC) = strPic; 
                --手動入力からの入力を想定して、大文字でも検索しておく 

        EXCEPTION 
            WHEN NO_DATA_FOUND THEN 
                strPicName := ''; 
        END; 
        --↑ 担当者名を取得しておく -------------------------------------------------------------------- 


        --↓ 品名を取得しておく -------------------------------------------------------------------- 
        BEGIN 

            SELECT 
                T_FIELD2
                INTO
                strField2
            FROM 
                T_PRODUCTS_KD
            WHERE 
                T_FIELD1 = strHinban 
                and rownum = 1; 

        EXCEPTION 
            WHEN NO_DATA_FOUND THEN 
                blnFound := 0;    --該当なし

                --未登録リスト追加 
                INSERT INTO 
                    T_NOT_ENTRY_KD
                    ( 
                        T_TIME,
                        T_MODE,
                        T_PIC,
                        T_LOCATION_ID, 
                        T_DATE_RETURN,
                        T_FIELD1 
                    ) 
                    VALUES
                    (
                        dtTime, 
                        strMode,
                        strPic, 
                        strLocationId, 
                        dtDateReturn, 
                        strHinban
                    );

                --処理を抜ける
                return;
        END; 
        --↑ 品名を取得しておく -------------------------------------------------------------------- 


        --↓ 棚卸フラグを更新する -------------------------------------------------------------------- 
        BEGIN 

            --棚卸フラグ更新 
            UPDATE 
                T_PRODUCTS_KD 
            SET 
                T_INVENTORY_FLG = 1 
            WHERE 
                T_FIELD1 = strHinban; 

        END; 
        --↑棚卸フラグを更新する -------------------------------------------------------------------- 

    END fnc_TCMPCMP;  
         
 
    --確定(ファイル書き込み) 
    procedure fnc_FCMPCMP 
    ( 
        ja          JSON_ARRAY_T 
    ) 
    AS 
        --変数宣言 
        je JSON_ELEMENT_T; 
        jo JSON_OBJECT_T; 
 
        strRecord VARCHAR2(4000); 
        strTime VARCHAR2(50); 
        strBTID VARCHAR2(10); 
        strMode VARCHAR2(10); 
        strPic VARCHAR2(255); 
        strLocationId VARCHAR2(255); 
        strDateReturn VARCHAR2(255); 
        strField1 VARCHAR2(4000); 
        dtDateReturn TIMESTAMP WITH TIME ZONE;
 
    BEGIN 
        --debug
        --DELETE FROM T_DEBUG;
        --commit;

        --配列分の処理をする 
        for i in 0..ja.get_size - 1 
        loop 
 
            --JSONの配列から１行ずつ取り出す 
            je := ja.get(i); 
            if (je.is_object) then 
 
                --JSONオブジェクトに変換 
                jo := treat(je as json_object_t); 
 
                --オブジェクトを取得 
                strRecord := jo.get('record').to_string; 
                strRecord := REPLACE(strRecord, '"', '');    --先頭と末尾のダブルクォーテーション対策 
                strTime := strtoken(strRecord, ',', 1); 
                strBTID := strtoken(strRecord, ',', 2); 
                strMode := strtoken(strRecord, ',', 3); 
                strPic := strtoken(strRecord, ',', 4); 
                strLocationId := strtoken(strRecord, ',', 5); 
                strDateReturn := strtoken(strRecord, ',', 6); 
                strField1 := strtoken(strRecord, ',', 7); 

                --返却日のフォーマット補正
                IF strDateReturn is not null THEN
                    dtDateReturn := TO_TIMESTAMP_TZ(CONCAT(strDateReturn, ' 00:00:00 +09:00'),'yyyy/mm/dd hh24:mi:ss TZH:TZM');
                ELSE
                    dtDateReturn := null;
                END IF;

                --書き込み
                IF strMode != '3' THEN
                    --貸出/返却
                    PKG_KD_DRS.fnc_DCMPCMP(TO_NUMBER(strMode), strPic, strLocationId, dtDateReturn, strField1, TO_TIMESTAMP_TZ(CONCAT(strTime, ' +09:00'), 'YYYY-MM-DD HH24:MI:SS TZH:TZM')); 
                ELSE
                    --棚卸
                    PKG_KD_DRS.fnc_TCMPCMP(TO_NUMBER(strMode), strPic, strLocationId, dtDateReturn, strField1, TO_TIMESTAMP_TZ(CONCAT(strTime, ' +09:00'), 'YYYY-MM-DD HH24:MI:SS TZH:TZM')); 
                END IF;

            end if; 
 
        end loop; 

    END fnc_FCMPCMP;  
 
END PKG_KD_DRS;
/
--ヘッダー----------
create or replace PACKAGE  "PKG_KD_RESET_DEMO_DATA" IS 
 
    --デモデータリセット
    procedure fnc_ResetDemoData; 
 
    --デモデータリセットJOB作成 
    procedure fnc_JobCreate; 
 
    --デモデータリセットJOB削除 
    procedure fnc_JobDelete; 
     
    --デモデータリセットJOB有効化 
    procedure fnc_JobEnabled; 
 
    --デモデータリセットJOB無効化 
    procedure fnc_JobDisabled; 
 
END PKG_KD_RESET_DEMO_DATA;
 
--登録済みのJOB一覧は下記のSQLで取得する 
--SELECT * FROM USER_SCHEDULER_JOBS;
/
--本体----------
create or replace PACKAGE BODY  "PKG_KD_RESET_DEMO_DATA" IS 
 
    --デモデータリセット 
    procedure fnc_ResetDemoData
    IS
   
        --変数宣言 
        RECORDCOUNT   NUMBER; 
        dtLatestDate   T_IN_OUT_KD.T_TIME%TYPE; 
        DateCount   NUMBER; 
    
    BEGIN
    
        --debug
        DELETE FROM T_DEBUG;

        --T_***_BACKUPテーブルよりデータを戻す
        DELETE from T_INITIAL_KD;
        INSERT INTO T_INITIAL_KD SELECT * FROM T_INITIAL_KD_BACKUP;

        DELETE from T_IN_OUT_KD;
        INSERT INTO T_IN_OUT_KD SELECT * FROM T_IN_OUT_KD_BACKUP;

        DELETE from T_LOCATION_MASTER_KD;
        INSERT INTO T_LOCATION_MASTER_KD SELECT * FROM T_LOCATION_MASTER_KD_BACKUP;

        DELETE from T_PIC_MASTER_KD;
        INSERT INTO T_PIC_MASTER_KD SELECT * FROM T_PIC_MASTER_KD_BACKUP;

        DELETE from T_PRODUCTS_KD;
        INSERT INTO T_PRODUCTS_KD SELECT * FROM T_PRODUCTS_KD_BACKUP;
     
        DELETE from T_NOT_ENTRY_KD;

        --↓ T_IN_OUT_KDの日付を新しくする -------------------------------------------------------------------- 

        -- T_IN_OUT_KDのレコードがあるかどうか
        BEGIN
            select
                COUNT(*) 
                INTO RECORDCOUNT
            FROM
                T_IN_OUT_KD;
        END;
        
        --もしデータがなければ抜ける
        IF RECORDCOUNT = 0 then
            return;
        END IF;
        
        --debug
        --INSERT INTO T_DEBUG (T_MESSAGE) VALUES(TO_CHAR(RECORDCOUNT));

        --最も新しい日付を取得
        BEGIN
            SELECT
                MAX(T_TIME)
                INTO dtLatestDate
            FROM
                T_IN_OUT_KD;
        END;
        --debug
        --INSERT INTO T_DEBUG (T_MESSAGE) VALUES(TO_CHAR(dtLatestDate));

        --本日との差分を取得
        BEGIN
            SELECT
                SYSDATE - CAST(dtLatestDate AS DATE)
                INTO DateCount
            FROM
                DUAL;
        END;
        DateCount := TRUNC(DateCount);
        --debug
        --INSERT INTO T_DEBUG (T_MESSAGE) VALUES(TO_CHAR(DateCount));
        
        --日付を更新
        UPDATE
            T_IN_OUT_KD
        SET
            T_TIME = FROM_TZ (cast(T_TIME + DateCount as timestamp), 'ASIA/TOKYO');
        
        --最も新しい日付を取得
        BEGIN
            SELECT
                MAX(T_TIME)
                INTO dtLatestDate
            FROM
                T_IN_OUT_KD;
        END;
        --debug
        --INSERT INTO T_DEBUG (T_MESSAGE) VALUES(TO_CHAR(dtLatestDate));

        --↑ T_IN_OUT_KDの日付を新しくする -------------------------------------------------------------------- 

    END fnc_ResetDemoData; 
 
 
    --デモデータリセットJOB作成 
    procedure fnc_JobCreate IS 
    BEGIN 
        DBMS_SCHEDULER.CREATE_JOB( 
        job_name => 'JOB_KD_RESET_DEMO_DATA',  
        job_type => 'STORED_PROCEDURE',  
        job_action => 'PKG_RESET_DEMO_DATA.fnc_ResetDemoData',  
        start_date => TO_TIMESTAMP_TZ(CONCAT(TO_CHAR(CURRENT_DATE, 'yyyy/MM/dd'), ' 00:00:00 +09:00'),'yyyy/mm/dd hh24:mi:ss TZH:TZM'),
        repeat_interval => 'FREQ=DAILY;BYHOUR=0;',  
        auto_drop => FALSE, enabled => TRUE); 
    END fnc_JobCreate; 
   
 
    --デモデータリセットJOB削除 
    procedure fnc_JobDelete IS 
    BEGIN 
        DBMS_SCHEDULER.DROP_JOB('JOB_KD_RESET_DEMO_DATA'); 
    END fnc_JobDelete; 
 
 
    --デモデータリセットJOB有効化 
    procedure fnc_JobEnabled IS 
    BEGIN 
        DBMS_SCHEDULER.ENABLE('JOB_KD_RESET_DEMO_DATA'); 
    END fnc_JobEnabled; 
 
 
    --デモデータリセットJOB無効化 
    procedure fnc_JobDisabled IS 
    BEGIN 
        DBMS_SCHEDULER.DISABLE('JOB_KD_RESET_DEMO_DATA'); 
    END fnc_JobDisabled; 
 
END PKG_KD_RESET_DEMO_DATA; 
/
--トリガー
CREATE OR REPLACE EDITIONABLE TRIGGER  "bi_T_IN_OUT_KD" 
  before insert on "T_IN_OUT_KD"                
  for each row   
begin    
  if :new."ID" is null then  
    select "T_IN_OUT_KD_SEQ".nextval into :new."ID" from sys.dual;  
  end if;  
end;  
  
 

/
ALTER TRIGGER  "bi_T_IN_OUT_KD" ENABLE
/
CREATE OR REPLACE EDITIONABLE TRIGGER  "bi_T_IN_OUT_KD_BACKUP" 
  before insert on "T_IN_OUT_KD_BACKUP"                
  for each row   
begin    
  if :new."ID" is null then  
    select "T_IN_OUT_KD_BACKUP_SEQ".nextval into :new."ID" from sys.dual;  
  end if;  
end; 
 

/
ALTER TRIGGER  "bi_T_IN_OUT_KD_BACKUP" ENABLE
/

CREATE OR REPLACE EDITIONABLE TRIGGER  "bi_T_NOT_ENTRY_KD" 
  before insert on "T_NOT_ENTRY_KD"                
  for each row   
begin    
  if :new."ID" is null then  
    select "T_NOT_ENTRY_KD_SEQ".nextval into :new."ID" from sys.dual;  
  end if;  
end; 
/
ALTER TRIGGER  "bi_T_NOT_ENTRY_KD" ENABLE
/
--担当者マスタに初期データを挿入T_PIC：admin T_PIC_NAME:admin T_PASSWORD:39393939(16進＆小文字[9999])
INSERT INTO T_PIC_MASTER_KD ( T_PIC,T_PIC_NAME,T_PASSWORD) VALUES ('admin','admin','39393939');
INSERT INTO T_PIC_MASTER_KD_BACKUP ( T_PIC,T_PIC_NAME,T_PASSWORD) VALUES ('admin','admin','39393939');
--環境設定テーブルに棚卸開始フラグの値を追加
INSERT INTO T_INITIAL_KD ( T_INITIAL_ID,T_INITIAL_VALUE,T_CONTENTS) VALUES ('26','0','棚卸開始フラグ');
INSERT INTO T_INITIAL_KD_BACKUP ( T_INITIAL_ID,T_INITIAL_VALUE,T_CONTENTS) VALUES ('26','0','棚卸開始フラグ');

--過去データ削除JOBの作成＆有効化を実行
begin
 PKG_KD_DELETE_OLD_DATA.fnc_JobCreate;
 PKG_KD_DELETE_OLD_DATA.fnc_JobEnabled;
end;
/