<?php

use Twig\Environment;
use Twig\Error\LoaderError;
use Twig\Error\RuntimeError;
use Twig\Extension\SandboxExtension;
use Twig\Markup;
use Twig\Sandbox\SecurityError;
use Twig\Sandbox\SecurityNotAllowedTagError;
use Twig\Sandbox\SecurityNotAllowedFilterError;
use Twig\Sandbox\SecurityNotAllowedFunctionError;
use Twig\Source;
use Twig\Template;

/* extension/module/sendpulse.twig */
class __TwigTemplate_072c40aa8813dd20daef029092350f845d3de33e4b3989cdb64d7c6bb702f5dd extends \Twig\Template
{
    private $source;
    private $macros = [];

    public function __construct(Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->parent = false;

        $this->blocks = [
        ];
    }

    protected function doDisplay(array $context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 1
        echo ($context["header"] ?? null);
        echo ($context["column_left"] ?? null);
        echo "
<div id=\"content\">
  <div class=\"page-header\">
    <div class=\"container-fluid\">
      <div class=\"pull-right\">
        <button type=\"submit\" form=\"form-module\" data-toggle=\"tooltip\" title=\"";
        // line 6
        echo ($context["button_save"] ?? null);
        echo "\" class=\"btn btn-primary\"><i class=\"fa fa-save\"></i></button>
        <a href=\"";
        // line 7
        echo ($context["cancel"] ?? null);
        echo "\" data-toggle=\"tooltip\" title=\"";
        echo ($context["button_cancel"] ?? null);
        echo "\" class=\"btn btn-default\"><i class=\"fa fa-reply\"></i></a></div>
      <h1>";
        // line 8
        echo ($context["heading_title"] ?? null);
        echo "</h1>
      <ul class=\"breadcrumb\">
        ";
        // line 10
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["breadcrumbs"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["breadcrumb"]) {
            // line 11
            echo "        <li><a href=\"";
            echo twig_get_attribute($this->env, $this->source, $context["breadcrumb"], "href", [], "any", false, false, false, 11);
            echo "\">";
            echo twig_get_attribute($this->env, $this->source, $context["breadcrumb"], "text", [], "any", false, false, false, 11);
            echo "</a></li>
        ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['breadcrumb'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 13
        echo "      </ul>
    </div>
  </div>
  <div class=\"container-fluid\">
    ";
        // line 17
        if (($context["error_warning"] ?? null)) {
            // line 18
            echo "    <div class=\"alert alert-danger alert-dismissible\"><i class=\"fa fa-exclamation-circle\"></i> ";
            echo ($context["error_warning"] ?? null);
            echo "
      <button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button>
    </div>
    ";
        } elseif (        // line 21
($context["success"] ?? null)) {
            // line 22
            echo "    <div class=\"alert alert-success\"><i class=\"fa fa-check-circle\"></i>  ";
            echo ($context["success"] ?? null);
            echo "
      <button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button>
    </div>
    ";
        }
        // line 26
        echo "    <div class=\"panel panel-default\">
      <div class=\"panel-heading\">
        <h3 class=\"panel-title\"><i class=\"fa fa-pencil\"></i> ";
        // line 28
        echo ($context["text_edit"] ?? null);
        echo "</h3>
      </div>
      <div class=\"panel-body\">
        <form action=\"";
        // line 31
        echo ($context["action"] ?? null);
        echo "\" method=\"post\" enctype=\"multipart/form-data\" id=\"form-affiliate\" class=\"form-horizontal\">
          <div class=\"form-group\">
            <label class=\"col-sm-2 control-label\" for=\"input-sendpulse_id\">";
        // line 33
        echo ($context["entry_sendpulse_id"] ?? null);
        echo "</label>
            <div class=\"col-sm-10\">
              <input type=\"text\" name=\"module_sendpulse_id\" value=\"";
        // line 35
        echo ($context["module_sendpulse_id"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_sendpulse_id"] ?? null);
        echo "\" id=\"input-sendpulse_id\" class=\"form-control\" />
              ";
        // line 36
        if (($context["error_sendpulse_id"] ?? null)) {
            // line 37
            echo "              <div class=\"text-danger\">";
            echo ($context["error_sendpulse_id"] ?? null);
            echo "</div>
              ";
        }
        // line 39
        echo "            </div>
          </div>
          <div class=\"form-group\">
            <label class=\"col-sm-2 control-label\" for=\"input-sendpulse_secret\">";
        // line 42
        echo ($context["entry_sendpulse_secret"] ?? null);
        echo "</label>
            <div class=\"col-sm-10\">
              <input type=\"text\" name=\"module_sendpulse_secret\" value=\"";
        // line 44
        echo ($context["module_sendpulse_secret"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_sendpulse_secret"] ?? null);
        echo "\" id=\"input-sendpulse_secret\" class=\"form-control\" />
              ";
        // line 45
        if (($context["error_sendpulse_secret"] ?? null)) {
            // line 46
            echo "              <div class=\"text-danger\">";
            echo ($context["error_sendpulse_secret"] ?? null);
            echo "</div>
              ";
        }
        // line 48
        echo "            </div>
          </div>


            <div class=\"form-group\">
                <label class=\"col-sm-2 control-label\" for=\"input-select-nascimento\">Data de Nascimento</label>
                <div class=\"col-sm-10\">
                    <select name=\"module_sendpulse_nascimento\" id=\"input-select-nascimento\" class=\"form-control\">
                        <option value=\"\"></option>
                        ";
        // line 57
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["custom_fields"] ?? null));
        foreach ($context['_seq'] as $context["key"] => $context["field"]) {
            // line 58
            echo "                            <option value=\"";
            echo twig_get_attribute($this->env, $this->source, $context["field"], "custom_field_id", [], "any", false, false, false, 58);
            echo "\" ";
            if ((twig_get_attribute($this->env, $this->source, $context["field"], "custom_field_id", [], "any", false, false, false, 58) == ($context["module_sendpulse_nascimento"] ?? null))) {
                echo " selected ";
            }
            echo ">";
            echo twig_get_attribute($this->env, $this->source, $context["field"], "name", [], "any", false, false, false, 58);
            echo "</option>
                        ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['key'], $context['field'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 60
        echo "                    </select>
                </div>
            </div>

            <div class=\"form-group\">
                <label class=\"col-sm-2 control-label\" for=\"input-select-celular\">Celular</label>
                <div class=\"col-sm-10\">
                    <select name=\"module_sendpulse_celular\" id=\"input-select-celular\" class=\"form-control\">
                        <option value=\"\"></option>
                        ";
        // line 69
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["custom_fields"] ?? null));
        foreach ($context['_seq'] as $context["key"] => $context["field"]) {
            // line 70
            echo "                            <option value=\"";
            echo twig_get_attribute($this->env, $this->source, $context["field"], "custom_field_id", [], "any", false, false, false, 70);
            echo "\" ";
            if ((twig_get_attribute($this->env, $this->source, $context["field"], "custom_field_id", [], "any", false, false, false, 70) == ($context["module_sendpulse_celular"] ?? null))) {
                echo " selected ";
            }
            echo ">";
            echo twig_get_attribute($this->env, $this->source, $context["field"], "name", [], "any", false, false, false, 70);
            echo "</option>
                        ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['key'], $context['field'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 72
        echo "                    </select>
                </div>
            </div>

            <div class=\"form-group\">
                <label class=\"col-sm-2 control-label\" for=\"input-select-sexo\">Sexo</label>
                <div class=\"col-sm-10\">
                    <select name=\"module_sendpulse_sexo\" id=\"input-select-sexo\" class=\"form-control\">
                        <option value=\"\"></option>
                        ";
        // line 81
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["custom_fields"] ?? null));
        foreach ($context['_seq'] as $context["key"] => $context["field"]) {
            // line 82
            echo "                            <option value=\"";
            echo twig_get_attribute($this->env, $this->source, $context["field"], "custom_field_id", [], "any", false, false, false, 82);
            echo "\" ";
            if ((twig_get_attribute($this->env, $this->source, $context["field"], "custom_field_id", [], "any", false, false, false, 82) == ($context["module_sendpulse_sexo"] ?? null))) {
                echo " selected ";
            }
            echo ">";
            echo twig_get_attribute($this->env, $this->source, $context["field"], "name", [], "any", false, false, false, 82);
            echo "</option>
                        ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['key'], $context['field'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 84
        echo "                    </select>
                </div>
            </div>

          <div class=\"form-group\">
            <label class=\"col-sm-2 control-label\" for=\"input-status-add\">";
        // line 89
        echo ($context["entry_status_add"] ?? null);
        echo "</label>
            <div class=\"col-sm-10\">
              <select name=\"module_sendpulse_auto_add\" id=\"input-status-add\" class=\"form-control\">
                ";
        // line 92
        if (($context["module_sendpulse_auto_add"] ?? null)) {
            // line 93
            echo "                <option value=\"1\" selected=\"selected\">";
            echo ($context["text_enabled"] ?? null);
            echo "</option>
                <option value=\"0\">";
            // line 94
            echo ($context["text_disabled"] ?? null);
            echo "</option>
                ";
        } else {
            // line 96
            echo "                <option value=\"1\">";
            echo ($context["text_enabled"] ?? null);
            echo "</option>
                <option value=\"0\" selected=\"selected\">";
            // line 97
            echo ($context["text_disabled"] ?? null);
            echo "</option>
                ";
        }
        // line 99
        echo "              </select>
            </div>
          </div>
    \t\t  ";
        // line 102
        if (($context["books"] ?? null)) {
            // line 103
            echo "    \t\t  <div class=\"form-group\">
    \t\t\t<label class=\"col-sm-2 control-label\" for=\"input-books-default\">";
            // line 104
            echo ($context["entry_book_default"] ?? null);
            echo "</label>
      \t\t\t<div class=\"col-sm-10\">
      \t\t\t  <select name=\"module_sendpulse_book_default\" id=\"input-book-default\" class=\"form-control\">
      \t\t\t\t<option value=\"\">";
            // line 107
            echo ($context["text_select"] ?? null);
            echo "</option>
              ";
            // line 108
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["books"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["book"]) {
                // line 109
                echo "      \t\t\t\t<option value=\"";
                echo twig_get_attribute($this->env, $this->source, $context["book"], "id", [], "any", false, false, false, 109);
                echo "\" ";
                if ((twig_get_attribute($this->env, $this->source, $context["book"], "id", [], "any", false, false, false, 109) == ($context["module_sendpulse_book_default"] ?? null))) {
                    echo " selected ";
                }
                echo ">";
                echo twig_get_attribute($this->env, $this->source, $context["book"], "name", [], "any", false, false, false, 109);
                echo "</option>
      \t\t\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['book'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 111
            echo "      \t\t\t  </select>
      \t\t\t</div>
    \t\t  </div>
    \t\t";
        }
        // line 115
        echo "          <div class=\"form-group\">
            <label class=\"col-sm-2 control-label\" for=\"input-status\">";
        // line 116
        echo ($context["entry_status"] ?? null);
        echo "</label>
            <div class=\"col-sm-10\">
              <select name=\"module_sendpulse_status\" id=\"input-status\" class=\"form-control\">
                ";
        // line 119
        if (($context["module_sendpulse_status"] ?? null)) {
            // line 120
            echo "                <option value=\"1\" selected=\"selected\">";
            echo ($context["text_enabled"] ?? null);
            echo "</option>
                <option value=\"0\">";
            // line 121
            echo ($context["text_disabled"] ?? null);
            echo "</option>
                ";
        } else {
            // line 123
            echo "                <option value=\"1\">";
            echo ($context["text_enabled"] ?? null);
            echo "</option>
                <option value=\"0\" selected=\"selected\">";
            // line 124
            echo ($context["text_disabled"] ?? null);
            echo "</option>
                ";
        }
        // line 126
        echo "              </select>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
  ";
        // line 133
        if (($context["books"] ?? null)) {
            // line 134
            echo "  <div class = \"container-fluid\">
    <div class = \"pull-right\">
       <button class = \"btn btn-primary\"  type=\"button\" id=\"button_export\">";
            // line 136
            echo ($context["button_export"] ?? null);
            echo "</button>
    </div>
  </div>
  <div class=\"container-fluid\" id='container-fluid-export'>
    <div class = \"panel panel-default\">
      <div class = \"panel-heading\">
        <h3 class = \"panel-title\">";
            // line 142
            echo ($context["entry_export"] ?? null);
            echo "</h3>
      </div>
      <div class = \"panel-body\">
          <div class=\"form-group\">
          <label class=\"col-sm-2 control-label\" for=\"input-books\">";
            // line 146
            echo ($context["entry_book"] ?? null);
            echo "</label>
          <div class=\"col-sm-10\">
            <select name=\"book\" id=\"input-book\" class=\"form-control\">
              <option value=\"\">";
            // line 149
            echo ($context["text_select"] ?? null);
            echo "</option>
              ";
            // line 150
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["books"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["book"]) {
                // line 151
                echo "              <option value=\"";
                echo twig_get_attribute($this->env, $this->source, $context["book"], "id", [], "any", false, false, false, 151);
                echo "\">";
                echo twig_get_attribute($this->env, $this->source, $context["book"], "name", [], "any", false, false, false, 151);
                echo "</option>
              ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['book'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 153
            echo "            </select>
          </div>
          </div>
      </div>
    </div>
  </div>
  ";
        }
        // line 160
        echo "  <script type=\"text/javascript\"><!--
  var change_key = false;
  \$(document).delegate('#button_export', 'click', function() {
  \t\$('.alert').remove();
  \tif(change_key) \$('#container-fluid-export').prepend('<div class=\"alert alert-danger\"><i class=\"fa fa-exclamation-circle\"></i> ";
        // line 164
        echo ($context["error_change"] ?? null);
        echo " <button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button></div>');
  \telse {
  \t\tvar id_book = \$('select[name^=\\'book\\']').val();
  \t\tif(id_book != ''){
  \t\t\t\$.ajax({
  \t\t\t\turl: 'index.php?route=extension/module/sendpulse/export&user_token=";
        // line 169
        echo ($context["user_token"] ?? null);
        echo "',
  \t\t\t\ttype: 'post',
  \t\t\t\tdata: 'book=' + id_book,
  \t\t\t\tdataType: 'json',
  \t\t\t\tbeforeSend: function() {
  \t\t\t\t\t\$('#button_export').button('loading');
  \t\t\t\t},
  \t\t\t\tcomplete: function() {
  \t\t\t\t\t\$('#button_export').button('reset');
  \t\t\t\t},
  \t\t\t\tsuccess: function(json) {

  \t\t\t\t\tif (json['error']) {
  \t\t\t\t\t\t\$('#container-fluid-export').prepend('<div class=\"alert alert-danger\"><i class=\"fa fa-exclamation-circle\"></i> ' + json['error'] + ' <button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button></div>');
  \t\t\t\t\t}

  \t\t\t\t\tif (json['success']) {
  \t\t\t\t\t\t\$('#container-fluid-export').prepend('<div class=\"alert alert-success\"><i class=\"fa fa-check-circle\"></i> ' + json['success'] + ' <button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button></div>');
  \t\t\t\t\t}
  \t\t\t\t},
  \t\t\t\terror: function(xhr, ajaxOptions, thrownError) {
  \t\t\t\t\talert(thrownError + \"\\r\\n\" + xhr.statusText + \"\\r\\n\" + xhr.responseText);
  \t\t\t\t}
  \t\t\t});
  \t\t} else \$('#container-fluid-export').prepend('<div class=\"alert alert-danger\"><i class=\"fa fa-exclamation-circle\"></i> ";
        // line 193
        echo ($context["error_select_book"] ?? null);
        echo " <button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button></div>');
  \t}
  \t\t});

  \$(\"input[type='text']\").bind(\"change\", function() {
  \tchange_key = true;
  });
  //--></script></div>
";
        // line 201
        echo ($context["footer"] ?? null);
        echo "
";
    }

    public function getTemplateName()
    {
        return "extension/module/sendpulse.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  477 => 201,  466 => 193,  439 => 169,  431 => 164,  425 => 160,  416 => 153,  405 => 151,  401 => 150,  397 => 149,  391 => 146,  384 => 142,  375 => 136,  371 => 134,  369 => 133,  360 => 126,  355 => 124,  350 => 123,  345 => 121,  340 => 120,  338 => 119,  332 => 116,  329 => 115,  323 => 111,  308 => 109,  304 => 108,  300 => 107,  294 => 104,  291 => 103,  289 => 102,  284 => 99,  279 => 97,  274 => 96,  269 => 94,  264 => 93,  262 => 92,  256 => 89,  249 => 84,  234 => 82,  230 => 81,  219 => 72,  204 => 70,  200 => 69,  189 => 60,  174 => 58,  170 => 57,  159 => 48,  153 => 46,  151 => 45,  145 => 44,  140 => 42,  135 => 39,  129 => 37,  127 => 36,  121 => 35,  116 => 33,  111 => 31,  105 => 28,  101 => 26,  93 => 22,  91 => 21,  84 => 18,  82 => 17,  76 => 13,  65 => 11,  61 => 10,  56 => 8,  50 => 7,  46 => 6,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "extension/module/sendpulse.twig", "");
    }
}
