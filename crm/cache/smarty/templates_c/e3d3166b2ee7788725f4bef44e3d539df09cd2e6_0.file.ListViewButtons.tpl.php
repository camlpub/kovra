<?php
/* Smarty version 4.3.1, created on 2025-08-18 14:37:51
  from 'C:\xampp\htdocs\kovra_ultimo\crm\include\ListView\ListViewButtons.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.3.1',
  'unifunc' => 'content_68a31e9f700347_83252953',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'e3d3166b2ee7788725f4bef44e3d539df09cd2e6' => 
    array (
      0 => 'C:\\xampp\\htdocs\\kovra_ultimo\\crm\\include\\ListView\\ListViewButtons.tpl',
      1 => 1706717332,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_68a31e9f700347_83252953 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'C:\\xampp\\htdocs\\kovra_ultimo\\crm\\include\\Smarty\\plugins\\function.counter.php','function'=>'smarty_function_counter',),));
if ((isset($_smarty_tpl->tpl_vars['form']->value['buttons']))) {?>
<ul class="list-view-action-buttons">

    <?php echo smarty_function_counter(array('assign'=>"num_action_buttons",'start'=>0,'print'=>false),$_smarty_tpl);?>

    <?php if (count($_smarty_tpl->tpl_vars['form']->value['buttons']) > $_smarty_tpl->tpl_vars['num_action_buttons']->value) {?>
        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['form']->value['buttons'], 'button', false, 'val');
$_smarty_tpl->tpl_vars['button']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['val']->value => $_smarty_tpl->tpl_vars['button']->value) {
$_smarty_tpl->tpl_vars['button']->do_else = false;
?>
        <?php if (is_array($_smarty_tpl->tpl_vars['button']->value) && $_smarty_tpl->tpl_vars['button']->value['customCode']) {?><li><?php $_template = new Smarty_Internal_Template('eval:'.$_smarty_tpl->tpl_vars['button']->value['customCode'], $_smarty_tpl->smarty, $_smarty_tpl);echo $_template->fetch(); ?> </li><?php }?>
        <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
    <?php }?>
</ul>
<?php }
}
}
