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
class __TwigTemplate_287402d39a17878ad75d4bccdf3f6804818856ca66b9a048672be196283b1bbe extends \Twig\Template
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

          
          ";
        // line 104
        if (($context["senders"] ?? null)) {
            // line 105
            echo "    \t\t  <div class=\"form-group\">
    \t\t\t<label class=\"col-sm-2 control-label\" for=\"input-senders-default\">Remetente Padrão</label>
      \t\t\t<div class=\"col-sm-10\">
      \t\t\t  <select name=\"module_sendpulse_sender_default\" id=\"input-senders-default\" class=\"form-control\">
      \t\t\t\t<option value=\"\">";
            // line 109
            echo ($context["text_select"] ?? null);
            echo "</option>
              ";
            // line 110
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["senders"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["sender"]) {
                // line 111
                echo "      \t\t\t\t<option value=\"";
                echo ((twig_get_attribute($this->env, $this->source, $context["sender"], "name", [], "any", false, false, false, 111) . ",") . twig_get_attribute($this->env, $this->source, $context["sender"], "email", [], "any", false, false, false, 111));
                echo "\" ";
                if ((twig_get_attribute($this->env, $this->source, $context["sender"], "name", [], "any", false, false, false, 111) == ($context["module_sendpulse_sender_default"] ?? null))) {
                    echo " selected ";
                }
                echo ">";
                echo twig_get_attribute($this->env, $this->source, $context["sender"], "name", [], "any", false, false, false, 111);
                echo "</option>
      \t\t\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['sender'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 113
            echo "      \t\t\t  </select>
      \t\t\t</div>
    \t\t  </div>
    \t\t";
        }
        // line 117
        echo "
    \t\t  ";
        // line 118
        if (($context["books"] ?? null)) {
            // line 119
            echo "    \t\t  <div class=\"form-group\">
    \t\t\t<label class=\"col-sm-2 control-label\" for=\"input-books-default\">";
            // line 120
            echo ($context["entry_book_default"] ?? null);
            echo "</label>
      \t\t\t<div class=\"col-sm-10\">
      \t\t\t  <select name=\"module_sendpulse_book_default\" id=\"input-book-default\" class=\"form-control\">
      \t\t\t\t<option value=\"\">";
            // line 123
            echo ($context["text_select"] ?? null);
            echo "</option>
              ";
            // line 124
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["books"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["book"]) {
                // line 125
                echo "      \t\t\t\t<option value=\"";
                echo twig_get_attribute($this->env, $this->source, $context["book"], "id", [], "any", false, false, false, 125);
                echo "\" ";
                if ((twig_get_attribute($this->env, $this->source, $context["book"], "id", [], "any", false, false, false, 125) == ($context["module_sendpulse_book_default"] ?? null))) {
                    echo " selected ";
                }
                echo ">";
                echo twig_get_attribute($this->env, $this->source, $context["book"], "name", [], "any", false, false, false, 125);
                echo "</option>
      \t\t\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['book'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 127
            echo "      \t\t\t  </select>
      \t\t\t</div>
    \t\t  </div>
    \t\t";
        }
        // line 131
        echo "          <div class=\"form-group\">
            <label class=\"col-sm-2 control-label\" for=\"input-status\">";
        // line 132
        echo ($context["entry_status"] ?? null);
        echo "</label>
            <div class=\"col-sm-10\">
              <select name=\"module_sendpulse_status\" id=\"input-status\" class=\"form-control\">
                ";
        // line 135
        if (($context["module_sendpulse_status"] ?? null)) {
            // line 136
            echo "                <option value=\"1\" selected=\"selected\">";
            echo ($context["text_enabled"] ?? null);
            echo "</option>
                <option value=\"0\">";
            // line 137
            echo ($context["text_disabled"] ?? null);
            echo "</option>
                ";
        } else {
            // line 139
            echo "                <option value=\"1\">";
            echo ($context["text_enabled"] ?? null);
            echo "</option>
                <option value=\"0\" selected=\"selected\">";
            // line 140
            echo ($context["text_disabled"] ?? null);
            echo "</option>
                ";
        }
        // line 142
        echo "              </select>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
  ";
        // line 149
        if (($context["books"] ?? null)) {
            // line 150
            echo "  <div class = \"container-fluid\">
    <div class = \"pull-right\">
       <button class = \"btn btn-primary\"  type=\"button\" id=\"button_export\">";
            // line 152
            echo ($context["button_export"] ?? null);
            echo "</button>
    </div>
  </div>
  <div class=\"container-fluid\" id='container-fluid-export'>
    <div class = \"panel panel-default\">
      <div class = \"panel-heading\">
        <h3 class = \"panel-title\">";
            // line 158
            echo ($context["entry_export"] ?? null);
            echo "</h3>
      </div>
      <div class = \"panel-body\">
          <div class=\"form-group\">
          <label class=\"col-sm-2 control-label\" for=\"input-books\">";
            // line 162
            echo ($context["entry_book"] ?? null);
            echo "</label>
          <div class=\"col-sm-10\">
            <select name=\"book\" id=\"input-book\" class=\"form-control\">
              <option value=\"\">";
            // line 165
            echo ($context["text_select"] ?? null);
            echo "</option>
              ";
            // line 166
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["books"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["book"]) {
                // line 167
                echo "              <option value=\"";
                echo twig_get_attribute($this->env, $this->source, $context["book"], "id", [], "any", false, false, false, 167);
                echo "\">";
                echo twig_get_attribute($this->env, $this->source, $context["book"], "name", [], "any", false, false, false, 167);
                echo "</option>
              ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['book'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 169
            echo "            </select>
          </div>
          </div>
      </div>
    </div>
  </div>
  ";
        }
        // line 176
        echo "  <script type=\"text/javascript\"><!--
  var change_key = false;
  \$(document).delegate('#button_export', 'click', function() {
  \t\$('.alert').remove();
  \tif(change_key) \$('#container-fluid-export').prepend('<div class=\"alert alert-danger\"><i class=\"fa fa-exclamation-circle\"></i> ";
        // line 180
        echo ($context["error_change"] ?? null);
        echo " <button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button></div>');
  \telse {
  \t\tvar id_book = \$('select[name^=\\'book\\']').val();
  \t\tif(id_book != ''){
  \t\t\t\$.ajax({
  \t\t\t\turl: 'index.php?route=extension/module/sendpulse/export&user_token=";
        // line 185
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
        // line 209
        echo ($context["error_select_book"] ?? null);
        echo " <button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button></div>');
  \t}
  \t\t});

  \$(\"input[type='text']\").bind(\"change\", function() {
  \tchange_key = true;
  });
  //--></script></div>
";
        // line 217
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
        return array (  519 => 217,  508 => 209,  481 => 185,  473 => 180,  467 => 176,  458 => 169,  447 => 167,  443 => 166,  439 => 165,  433 => 162,  426 => 158,  417 => 152,  413 => 150,  411 => 149,  402 => 142,  397 => 140,  392 => 139,  387 => 137,  382 => 136,  380 => 135,  374 => 132,  371 => 131,  365 => 127,  350 => 125,  346 => 124,  342 => 123,  336 => 120,  333 => 119,  331 => 118,  328 => 117,  322 => 113,  307 => 111,  303 => 110,  299 => 109,  293 => 105,  291 => 104,  284 => 99,  279 => 97,  274 => 96,  269 => 94,  264 => 93,  262 => 92,  256 => 89,  249 => 84,  234 => 82,  230 => 81,  219 => 72,  204 => 70,  200 => 69,  189 => 60,  174 => 58,  170 => 57,  159 => 48,  153 => 46,  151 => 45,  145 => 44,  140 => 42,  135 => 39,  129 => 37,  127 => 36,  121 => 35,  116 => 33,  111 => 31,  105 => 28,  101 => 26,  93 => 22,  91 => 21,  84 => 18,  82 => 17,  76 => 13,  65 => 11,  61 => 10,  56 => 8,  50 => 7,  46 => 6,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "extension/module/sendpulse.twig", "");
    }
}
