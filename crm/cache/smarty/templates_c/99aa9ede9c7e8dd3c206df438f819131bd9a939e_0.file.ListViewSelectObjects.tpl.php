<?php
/* Smarty version 4.3.1, created on 2025-08-18 14:37:47
  from 'C:\xampp\htdocs\kovra_ultimo\crm\themes\camltasks\include\ListView\ListViewSelectObjects.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.3.1',
  'unifunc' => 'content_68a31e9bb04d49_55290665',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '99aa9ede9c7e8dd3c206df438f819131bd9a939e' => 
    array (
      0 => 'C:\\xampp\\htdocs\\kovra_ultimo\\crm\\themes\\camltasks\\include\\ListView\\ListViewSelectObjects.tpl',
      1 => 1706717332,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_68a31e9bb04d49_55290665 (Smarty_Internal_Template $_smarty_tpl) {
?><div class="selectedRecords label hidden"><?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_LISTVIEW_SELECTED_OBJECTS'];?>
</div><div class="selectedRecords value hidden"><?php echo $_smarty_tpl->tpl_vars['TOTAL_ITEMS_SELECTED']->value;?>
</div>
<input type='hidden' id='selectCountTop' name='selectCount[]' value='<?php echo $_smarty_tpl->tpl_vars['TOTAL_ITEMS_SELECTED']->value;?>
' />

<?php echo '<script'; ?>
>

    $(document).ready(function () {
        setInterval(function () {
            sListView.toggleSelected();
        }, 100);
    });

<?php echo '</script'; ?>
><?php }
}
