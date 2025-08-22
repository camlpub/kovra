<?php
/* Smarty version 4.3.1, created on 2025-08-18 14:37:51
  from 'C:\xampp\htdocs\kovra_ultimo\crm\include\SugarFields\Fields\Base\ListView.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.3.1',
  'unifunc' => 'content_68a31e9fdcc576_21376098',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'fc2b823d88a1860167236dbb8bf06e83d4afbddd' => 
    array (
      0 => 'C:\\xampp\\htdocs\\kovra_ultimo\\crm\\include\\SugarFields\\Fields\\Base\\ListView.tpl',
      1 => 1706717332,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_68a31e9fdcc576_21376098 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'C:\\xampp\\htdocs\\kovra_ultimo\\crm\\include\\Smarty\\plugins\\function.sugar_fetch.php','function'=>'smarty_function_sugar_fetch',),));
?>

<?php echo smarty_function_sugar_fetch(array('object'=>$_smarty_tpl->tpl_vars['parentFieldArray']->value,'key'=>$_smarty_tpl->tpl_vars['col']->value),$_smarty_tpl);?>

<?php }
}
