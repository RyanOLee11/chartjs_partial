prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.0-17'
,p_default_workspace_id=>53329992623084339046
,p_default_application_id=>262759
,p_default_id_offset=>0
,p_default_owner=>'WKSP_RYANOLEE11'
);
end;
/
 
prompt APPLICATION 262759 - Ryan Component Templates
--
-- Application Export:
--   Application:     262759
--   Name:            Ryan Component Templates
--   Date and Time:   16:54 Friday October 20, 2023
--   Exported By:     RLEE009@PLATTSBURGH.EDU
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     TEMPLATE_COMPONENT: 66818312788940976465
--   Manifest End
--   Version:         23.2.0-17
--   Instance ID:     63113759365424
--

begin
  -- replace components
  wwv_flow_imp.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/plugins/template_component/theme_42_chartjs
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(66818312788940976465)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '42')
,p_name=>'THEME_42$CHARTJS'
,p_display_name=>'CHARTJS'
,p_supported_component_types=>'PARTIAL:REPORT'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_FILES#js/chart#MIN#.js',
'#APP_FILES#js/chartInit#MIN#.js'))
,p_css_file_urls=>'#APP_FILES#css/chartJsStyle#MIN#.css'
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div>',
'    <canvas class="chart-partial" ',
'        data-chart-type="#CHART_TYPE#"',
'        data-dataset-label="#DATASET_LABEL#" ',
'        data-chart-labels="#CHART_LABELS#" ',
'        data-chart-values="#CHART_VAL#"',
'        data-chart-background-colors="#BACKGROUND_COLORS#"',
'    >',
'</div>'))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>1
,p_report_body_template=>'<ul>#APEX$ROWS#</ul>'
,p_report_row_template=>'<li #APEX$ROW_IDENTIFICATION#>#APEX$PARTIAL#</li>'
,p_report_placeholder_count=>3
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
,p_about_url=>'https://github.com/RyanOLee11/chartjs_partial.git'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(67251841286041262139)
,p_plugin_id=>wwv_flow_imp.id(66818312788940976465)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'CHART_VAL'
,p_prompt=>'Chart Val'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(67309453475705611476)
,p_plugin_id=>wwv_flow_imp.id(66818312788940976465)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'CHART_LABELS'
,p_prompt=>'Chart Labels'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(67316211237264964843)
,p_plugin_id=>wwv_flow_imp.id(66818312788940976465)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'DATASET_LABEL'
,p_prompt=>'Dataset Label'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(67324504848040072111)
,p_plugin_id=>wwv_flow_imp.id(66818312788940976465)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'CHART_TYPE'
,p_prompt=>'Chart Type'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(67336737984824060345)
,p_plugin_id=>wwv_flow_imp.id(66818312788940976465)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'BACKGROUND_COLORS'
,p_prompt=>'Background Colors'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
--commit;
end;
/
set verify on feedback on define on
prompt  ...done
