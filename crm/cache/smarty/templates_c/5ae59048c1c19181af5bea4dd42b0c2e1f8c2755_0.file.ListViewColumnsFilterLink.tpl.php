<?php
/* Smarty version 4.3.1, created on 2025-08-18 14:37:51
  from 'C:\xampp\htdocs\kovra_ultimo\crm\include\ListView\ListViewColumnsFilterLink.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.3.1',
  'unifunc' => 'content_68a31e9fcb9297_62158916',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '5ae59048c1c19181af5bea4dd42b0c2e1f8c2755' => 
    array (
      0 => 'C:\\xampp\\htdocs\\kovra_ultimo\\crm\\include\\ListView\\ListViewColumnsFilterLink.tpl',
      1 => 1706717332,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_68a31e9fcb9297_62158916 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'C:\\xampp\\htdocs\\kovra_ultimo\\crm\\include\\Smarty\\plugins\\function.sugar_translate.php','function'=>'smarty_function_sugar_translate',),));
?>
<ul class="clickMenu selectmenu SugarActionMenu columnsFilterLink listViewLinkButton listViewLinkButton_<?php echo $_smarty_tpl->tpl_vars['action_menu_location']->value;?>
" onclick="columnsFilter.onOpen();">
    <li class="sugar_action_button">
        <a href="#" class="glyphicon glyphicon-th-list" data-toggle="modal" data-target=".modal-columns-filter" title='<?php echo smarty_function_sugar_translate(array('label'=>"LBL_COLUMN_CHOOSER"),$_smarty_tpl);?>
'></a>
    </li>
</ul>
<?php }
}
