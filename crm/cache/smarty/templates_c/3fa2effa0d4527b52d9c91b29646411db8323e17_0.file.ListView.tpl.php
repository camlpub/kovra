<?php
/* Smarty version 4.3.1, created on 2025-08-18 14:37:51
  from 'C:\xampp\htdocs\kovra_ultimo\crm\include\SugarFields\Fields\Currency\ListView.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.3.1',
  'unifunc' => 'content_68a31e9feba391_00877435',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '3fa2effa0d4527b52d9c91b29646411db8323e17' => 
    array (
      0 => 'C:\\xampp\\htdocs\\kovra_ultimo\\crm\\include\\SugarFields\\Fields\\Currency\\ListView.tpl',
      1 => 1706717332,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_68a31e9feba391_00877435 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'C:\\xampp\\htdocs\\kovra_ultimo\\crm\\include\\Smarty\\plugins\\function.sugar_currency_format.php','function'=>'smarty_function_sugar_currency_format',),));
?>

<?php echo smarty_function_sugar_currency_format(array('var'=>$_smarty_tpl->tpl_vars['amount']->value,'currency_id'=>$_smarty_tpl->tpl_vars['currency_id']->value,'currency_symbol'=>$_smarty_tpl->tpl_vars['currency_symbol']->value),$_smarty_tpl);
}
}
