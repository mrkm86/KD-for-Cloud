prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_180100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2018.04.04'
,p_default_workspace_id=>17695072528678297
);
end;
/
begin
wwv_flow_api.remove_restful_service(
 p_id=>wwv_flow_api.id(30777081933037725939)
,p_name=>'kasidasi'
);
 
end;
/
prompt --application/restful_services/kasidasi
begin
wwv_flow_api.create_restful_module(
 p_id=>wwv_flow_api.id(30777081933037725939)
,p_name=>'kasidasi'
,p_uri_prefix=>'kasidasi/api/'
,p_parsing_schema=>'HSCDEVELOP'
,p_items_per_page=>1000
,p_status=>'PUBLISHED'
,p_row_version_number=>7
);
wwv_flow_api.create_restful_template(
 p_id=>wwv_flow_api.id(109421470995180339)
,p_module_id=>wwv_flow_api.id(30777081933037725939)
,p_uri_template=>'fcmp-cmp'
,p_priority=>0
,p_etag_type=>'HASH'
);
wwv_flow_api.create_restful_handler(
 p_id=>wwv_flow_api.id(109421630207182699)
,p_template_id=>wwv_flow_api.id(109421470995180339)
,p_source_type=>'PLSQL'
,p_format=>'DEFAULT'
,p_method=>'POST'
,p_mimes_allowed=>'application/json'
,p_require_https=>'YES'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  jo JSON_OBJECT_T;',
'  ja json_array_t;',
'begin',
'  owa_util.mime_header(''application/json'');',
'',
unistr('  --Body\3092\53D6\5F97\3057\3066JSON\30AA\30D6\30B8\30A7\30AF\30C8\306B\683C\7D0D'),
'  jo := JSON_OBJECT_T.parse(:body);',
'',
unistr('  --JSON\30AA\30D6\30B8\30A7\30AF\30C8\304B\3089JSON\914D\5217\306B\683C\7D0D'),
'  ja := jo.get_array(''records'');',
'  --htp.prn(jo.get(''records'').to_string);',
'',
unistr('  --\78BA\5B9A(\30D5\30A1\30A4\30EB\66F8\304D\8FBC\307F)'),
'  PKG_KD_DRS.fnc_FCMPCMP(ja);',
'',
'end;',
''))
);
end;
/
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
