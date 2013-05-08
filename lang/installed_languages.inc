<?php

/* How to make new entries here for non-packaged languages:

-- 'code' should match the name of the directory for the language under \lang
.-- 'name' is the name that will be displayed in the language selection list (in Users and Display Setup)
-- 'rtl' only needs to be set for right-to-left languages like Arabic and Hebrew
-- 'encoding' used in translation file
-- 'version' always set to '' for manually installed languages.
-- 'path' installation path related to FA root (e.g. 'lang/en_US').
*/


$installed_languages = array (
  0 => 
  array (
    'code' => 'C',
    'name' => 'English',
    'encoding' => 'iso-8859-1',
  ),
  1 => 
  array (
    'name' => 'Arabic',
    'package' => 'ar_EG',
    'code' => 'ar_EG',
    'encoding' => 'utf-8',
    'version' => '2.3.12-1',
    'path' => 'lang/ar_EG',
    'rtl' => true,
  ),
  2 => 
  array (
    'name' => 'German',
    'package' => 'de_DE',
    'code' => 'de_DE',
    'encoding' => 'iso-8859-1',
    'version' => '2.3.0-2',
    'path' => 'lang/de_DE',
  ),
  3 => 
  array (
    'name' => 'Greek',
    'package' => 'el_GR',
    'code' => 'el_GR',
    'encoding' => 'UTF-8',
    'version' => '2.3.4-1',
    'path' => 'lang/el_GR',
  ),
  4 => 
  array (
    'name' => 'Australian English',
    'package' => 'en_AU',
    'code' => 'en_AU',
    'encoding' => 'iso-8859-1',
    'version' => '2.3.2-1',
    'path' => 'lang/en_AU',
  ),
  5 => 
  array (
    'name' => 'English (NZ)',
    'package' => 'en_NZ',
    'code' => 'en_NZ',
    'encoding' => 'iso-8859-1',
    'version' => '2.3.2-2',
    'path' => 'lang/en_NZ',
  ),
  6 => 
  array (
    'name' => 'English (US)',
    'package' => 'en_US',
    'code' => 'en_US',
    'encoding' => 'iso-8859-1',
    'version' => '2.3.12-1',
    'path' => 'lang/en_US',
  ),
  7 => 
  array (
    'name' => 'Indonesian',
    'package' => 'id_ID',
    'code' => 'id_ID',
    'encoding' => 'utf-8',
    'version' => '2.3.0-3',
    'path' => 'lang/id_ID',
  ),
  8 => 
  array (
    'name' => 'Italian',
    'package' => 'it_IT',
    'code' => 'it_IT',
    'encoding' => 'iso-8859-1',
    'version' => '2.3.0-1',
    'path' => 'lang/it_IT',
  ),
  9 => 
  array (
    'name' => 'Dutch',
    'package' => 'nl_NL',
    'code' => 'nl_NL',
    'encoding' => 'iso-8859-1',
    'version' => '2.3.11-1',
    'path' => 'lang/nl_NL',
  ),
  10 => 
  array (
    'name' => 'Portuguese',
    'package' => 'pt_PT',
    'code' => 'pt_PT',
    'encoding' => 'iso-8859-1',
    'version' => '2.3.0-2',
    'path' => 'lang/pt_PT',
  ),
  11 => 
  array (
    'name' => 'Russian',
    'package' => 'ru_RU',
    'code' => 'ru_RU',
    'encoding' => 'iso-8859-5',
    'version' => '2.3.0-2',
    'path' => 'lang/ru_RU',
  ),
  12 => 
  array (
    'name' => 'Chinese (Simplified)',
    'package' => 'zh_CN',
    'code' => 'zh_CN',
    'encoding' => 'utf-8',
    'version' => '2.3.0-4',
    'path' => 'lang/zh_CN',
  ),
  13 => 
  array (
    'name' => 'Chinese (Traditional)',
    'package' => 'zh_TW',
    'code' => 'zh_TW',
    'encoding' => 'utf-8',
    'version' => '2.3.0-2',
    'path' => 'lang/zh_TW',
  ),
);

$dflt_lang = 'id_ID';
?>
