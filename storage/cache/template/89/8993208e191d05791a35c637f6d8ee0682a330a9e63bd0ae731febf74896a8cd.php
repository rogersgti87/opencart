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

/* extension/module/validacao.twig */
class __TwigTemplate_4f863dead1f5c96f00819b7fa07bbe9b66999f3adf39a79169a08f5878c30a22 extends \Twig\Template
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
        <button type=\"submit\" form=\"form-validacao\" input type=\"hidden\" id=\"save_stay\" name=\"save_stay\" value=\"1\" data-toggle=\"tooltip\" title=\"";
        // line 6
        echo ($context["button_save_stay"] ?? null);
        echo "\" class=\"btn btn-success\"><i class=\"fa fa-save\"></i></button>
        <button type=\"submit\" form=\"form-validacao\" data-toggle=\"tooltip\" title=\"";
        // line 7
        echo ($context["button_save"] ?? null);
        echo "\" class=\"btn btn-primary\"><i class=\"fa fa-save\"></i></button>
        <a href=\"";
        // line 8
        echo ($context["cancel"] ?? null);
        echo "\" data-toggle=\"tooltip\" title=\"";
        echo ($context["button_cancel"] ?? null);
        echo "\" class=\"btn btn-default\"><i class=\"fa fa-reply\"></i></a>
      </div>
      <h1>";
        // line 10
        echo ($context["heading_title"] ?? null);
        echo "</h1> <span class=\"badge\">";
        echo ($context["versao"] ?? null);
        echo "</span>
      <ul class=\"breadcrumb\">
        ";
        // line 12
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["breadcrumbs"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["breadcrumb"]) {
            // line 13
            echo "        <li><a href=\"";
            echo twig_get_attribute($this->env, $this->source, $context["breadcrumb"], "href", [], "any", false, false, false, 13);
            echo "\">";
            echo twig_get_attribute($this->env, $this->source, $context["breadcrumb"], "text", [], "any", false, false, false, 13);
            echo "</a></li>
        ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['breadcrumb'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 15
        echo "      </ul>
    </div>
  </div>
  <div class=\"container-fluid\">
    ";
        // line 19
        if (($context["error_warning"] ?? null)) {
            // line 20
            echo "    <div class=\"alert alert-danger\"><i class=\"fa fa-exclamation-circle\"></i> ";
            echo ($context["error_warning"] ?? null);
            echo "
      <button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button>
    </div>
    ";
        }
        // line 24
        echo "    ";
        if (($context["success"] ?? null)) {
            // line 25
            echo "    <div class=\"alert alert-success\"><i class=\"fa fa-check-circle\"></i> ";
            echo ($context["success"] ?? null);
            echo "
      <button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button>
    </div>
    ";
        }
        // line 29
        echo "    <div class=\"panel panel-default\">
      <div class=\"panel-heading\">
        <h3 class=\"panel-title\"><i class=\"fa fa-pencil\"></i> ";
        // line 31
        echo ($context["text_edit"] ?? null);
        echo "</h3>
      </div>
      <div class=\"panel-body\">
        <form action=\"";
        // line 34
        echo ($context["action"] ?? null);
        echo "\" method=\"post\" enctype=\"multipart/form-data\" id=\"form-validacao\" class=\"form-horizontal\">
          <ul class=\"nav nav-tabs\">
            <li class=\"active\"><a href=\"#tab-configuracoes\" data-toggle=\"tab\">";
        // line 36
        echo ($context["tab_configuracoes"] ?? null);
        echo "</a></li>
            <li><a href=\"#tab-campos\" data-toggle=\"tab\">";
        // line 37
        echo ($context["tab_campos"] ?? null);
        echo "</a></li>
            <li><a href=\"#tab-erros\" data-toggle=\"tab\">";
        // line 38
        echo ($context["tab_erros"] ?? null);
        echo "</a></li>
          </ul>
          <div class=\"tab-content\">
            <div class=\"tab-pane active\" id=\"tab-configuracoes\">
              <div class=\"alert alert-info\"><i class=\"fa fa-info-circle\"></i> ";
        // line 42
        echo ($context["text_configuracoes"] ?? null);
        echo "
                <button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button>
              </div>
              <div class=\"form-group\">
                <div class=\"col-sm-3\">
                  <h5><strong>";
        // line 47
        echo ($context["entry_cpf_existe"] ?? null);
        echo "</strong></h5>
                  <span class=\"help\"><i class=\"fa fa-info-circle\"></i> ";
        // line 48
        echo ($context["help_cpf_existe"] ?? null);
        echo "</span>
                </div>
                <div class=\"col-sm-2\">
                  <select name=\"module_validacao_cpf_existe\" class=\"form-control\">
                    ";
        // line 52
        if (($context["module_validacao_cpf_existe"] ?? null)) {
            // line 53
            echo "                    <option value=\"1\" selected=\"selected\">";
            echo ($context["text_yes"] ?? null);
            echo "</option>
                    <option value=\"0\">";
            // line 54
            echo ($context["text_no"] ?? null);
            echo "</option>
                    ";
        } else {
            // line 56
            echo "                    <option value=\"1\">";
            echo ($context["text_yes"] ?? null);
            echo "</option>
                    <option value=\"0\" selected=\"selected\">";
            // line 57
            echo ($context["text_no"] ?? null);
            echo "</option>
                    ";
        }
        // line 59
        echo "                  </select>
                </div>
              </div>
              <div class=\"form-group\">
                <div class=\"col-sm-3\">
                  <h5><strong>";
        // line 64
        echo ($context["entry_maior_18_anos"] ?? null);
        echo "</strong></h5>
                  <span class=\"help\"><i class=\"fa fa-info-circle\"></i> ";
        // line 65
        echo ($context["help_maior_18_anos"] ?? null);
        echo "</span>
                </div>
                <div class=\"col-sm-2\">
                  <select name=\"module_validacao_maior_18_anos\" class=\"form-control\">
                    ";
        // line 69
        if (($context["module_validacao_maior_18_anos"] ?? null)) {
            // line 70
            echo "                    <option value=\"1\" selected=\"selected\">";
            echo ($context["text_yes"] ?? null);
            echo "</option>
                    <option value=\"0\">";
            // line 71
            echo ($context["text_no"] ?? null);
            echo "</option>
                    ";
        } else {
            // line 73
            echo "                    <option value=\"1\">";
            echo ($context["text_yes"] ?? null);
            echo "</option>
                    <option value=\"0\" selected=\"selected\">";
            // line 74
            echo ($context["text_no"] ?? null);
            echo "</option>
                    ";
        }
        // line 76
        echo "                  </select>
                </div>
              </div>
              <div class=\"form-group\">
                <div class=\"col-sm-3\">
                  <h5><strong>";
        // line 81
        echo ($context["entry_remover_placeholder"] ?? null);
        echo "</strong></h5>
                  <span class=\"help\"><i class=\"fa fa-info-circle\"></i> ";
        // line 82
        echo ($context["help_remover_placeholder"] ?? null);
        echo "</span>
                </div>
                <div class=\"col-sm-2\">
                  <select name=\"module_validacao_remover_placeholder\" class=\"form-control\">
                    ";
        // line 86
        if (($context["module_validacao_remover_placeholder"] ?? null)) {
            // line 87
            echo "                    <option value=\"1\" selected=\"selected\">";
            echo ($context["text_yes"] ?? null);
            echo "</option>
                    <option value=\"0\">";
            // line 88
            echo ($context["text_no"] ?? null);
            echo "</option>
                    ";
        } else {
            // line 90
            echo "                    <option value=\"1\">";
            echo ($context["text_yes"] ?? null);
            echo "</option>
                    <option value=\"0\" selected=\"selected\">";
            // line 91
            echo ($context["text_no"] ?? null);
            echo "</option>
                    ";
        }
        // line 93
        echo "                  </select>
                </div>
              </div>
              <div class=\"form-group\">
                <div class=\"col-sm-3\">
                  <h5><strong>";
        // line 98
        echo ($context["entry_cep_correios"] ?? null);
        echo "</strong></h5>
                  <span class=\"help\"><i class=\"fa fa-info-circle\"></i> ";
        // line 99
        echo ($context["help_cep_correios"] ?? null);
        echo "</span>
                </div>
                <div class=\"col-sm-2\">
                  <select name=\"module_validacao_cep_correios\" class=\"form-control\">
                    ";
        // line 103
        if (($context["module_validacao_cep_correios"] ?? null)) {
            // line 104
            echo "                    <option value=\"1\" selected=\"selected\">";
            echo ($context["text_yes"] ?? null);
            echo "</option>
                    <option value=\"0\">";
            // line 105
            echo ($context["text_no"] ?? null);
            echo "</option>
                    ";
        } else {
            // line 107
            echo "                    <option value=\"1\">";
            echo ($context["text_yes"] ?? null);
            echo "</option>
                    <option value=\"0\" selected=\"selected\">";
            // line 108
            echo ($context["text_no"] ?? null);
            echo "</option>
                    ";
        }
        // line 110
        echo "                  </select>
                </div>
              </div>
              <div class=\"form-group\">
                <div class=\"col-sm-3\">
                  <h5><strong>";
        // line 115
        echo ($context["entry_cep_primeiro"] ?? null);
        echo "</strong></h5>
                  <span class=\"help\"><i class=\"fa fa-info-circle\"></i> ";
        // line 116
        echo ($context["help_cep_primeiro"] ?? null);
        echo "</span>
                </div>
                <div class=\"col-sm-2\">
                  <select name=\"module_validacao_cep_primeiro\" class=\"form-control\">
                    ";
        // line 120
        if (($context["module_validacao_cep_primeiro"] ?? null)) {
            // line 121
            echo "                    <option value=\"1\" selected=\"selected\">";
            echo ($context["text_yes"] ?? null);
            echo "</option>
                    <option value=\"0\">";
            // line 122
            echo ($context["text_no"] ?? null);
            echo "</option>
                    ";
        } else {
            // line 124
            echo "                    <option value=\"1\">";
            echo ($context["text_yes"] ?? null);
            echo "</option>
                    <option value=\"0\" selected=\"selected\">";
            // line 125
            echo ($context["text_no"] ?? null);
            echo "</option>
                    ";
        }
        // line 127
        echo "                  </select>
                </div>
              </div>
              <div class=\"form-group\">
                <div class=\"col-sm-3\">
                  <h5><strong>";
        // line 132
        echo ($context["entry_cep_html"] ?? null);
        echo "</strong></h5>
                  <span class=\"help\"><i class=\"fa fa-info-circle\"></i> ";
        // line 133
        echo ($context["help_cep_html"] ?? null);
        echo "</span>
                </div>
                <div class=\"col-sm-9\">
                    <textarea name=\"module_validacao_cep_html\" id=\"input-cep-html\" rows=\"10\" class=\"form-control\">";
        // line 136
        echo ($context["module_validacao_cep_html"] ?? null);
        echo "</textarea>
                </div>
              </div>
            </div>
            <div class=\"tab-pane\" id=\"tab-campos\">
              <div class=\"alert alert-info\"><i class=\"fa fa-info-circle\"></i> ";
        // line 141
        echo ($context["text_campos"] ?? null);
        echo "
                <button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button>
              </div>
              <div class=\"form-group\">
                <div class=\"col-sm-3\">
                  <h5><strong>";
        // line 146
        echo ($context["entry_razao_social"] ?? null);
        echo "</strong></h5>
                  <span class=\"help\"><i class=\"fa fa-info-circle\"></i> ";
        // line 147
        echo ($context["help_razao_social"] ?? null);
        echo "</span>
                </div>
                <div class=\"col-sm-5\">
                  <select name=\"module_validacao_razao_social_id\" class=\"form-control\">
                    <option value=\"\">";
        // line 151
        echo ($context["text_none"] ?? null);
        echo "</option>
                    ";
        // line 152
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["custom_fields"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["custom_field"]) {
            // line 153
            echo "                    ";
            if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "location", [], "any", false, false, false, 153) == "account")) {
                // line 154
                echo "                    ";
                if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 154) == "text")) {
                    // line 155
                    echo "                    ";
                    if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 155) == ($context["module_validacao_razao_social_id"] ?? null))) {
                        // line 156
                        echo "                    <option value=\"";
                        echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 156);
                        echo "\" selected=\"selected\">";
                        echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 156);
                        echo "</option>
                    ";
                    } else {
                        // line 158
                        echo "                    <option value=\"";
                        echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 158);
                        echo "\">";
                        echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 158);
                        echo "</option>
                    ";
                    }
                    // line 160
                    echo "                    ";
                }
                // line 161
                echo "                    ";
            }
            // line 162
            echo "                    ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['custom_field'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 163
        echo "                  </select>
                </div>
              </div>
              <div class=\"form-group\">
                <div class=\"col-sm-3\">
                  <h5><strong>";
        // line 168
        echo ($context["entry_cnpj"] ?? null);
        echo "</strong></h5>
                  <span class=\"help\"><i class=\"fa fa-info-circle\"></i> ";
        // line 169
        echo ($context["help_cnpj"] ?? null);
        echo "</span>
                </div>
                <div class=\"col-sm-5\">
                  <select name=\"module_validacao_cnpj_id\" class=\"form-control\">
                    <option value=\"\">";
        // line 173
        echo ($context["text_none"] ?? null);
        echo "</option>
                    ";
        // line 174
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["custom_fields"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["custom_field"]) {
            // line 175
            echo "                    ";
            if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "location", [], "any", false, false, false, 175) == "account")) {
                // line 176
                echo "                    ";
                if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 176) == "text")) {
                    // line 177
                    echo "                    ";
                    if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 177) == ($context["module_validacao_cnpj_id"] ?? null))) {
                        // line 178
                        echo "                    <option value=\"";
                        echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 178);
                        echo "\" selected=\"selected\">";
                        echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 178);
                        echo "</option>
                    ";
                    } else {
                        // line 180
                        echo "                    <option value=\"";
                        echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 180);
                        echo "\">";
                        echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 180);
                        echo "</option>
                    ";
                    }
                    // line 182
                    echo "                    ";
                }
                // line 183
                echo "                    ";
            }
            // line 184
            echo "                    ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['custom_field'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 185
        echo "                  </select>
                </div>
              </div>
              <div class=\"form-group\">
                <div class=\"col-sm-3\">
                  <h5><strong>";
        // line 190
        echo ($context["entry_cpf"] ?? null);
        echo "</strong></h5>
                  <span class=\"help\"><i class=\"fa fa-info-circle\"></i> ";
        // line 191
        echo ($context["help_cpf"] ?? null);
        echo "</span>
                </div>
                <div class=\"col-sm-5\">
                  <select name=\"module_validacao_cpf_id\" class=\"form-control\">
                    <option value=\"\">";
        // line 195
        echo ($context["text_none"] ?? null);
        echo "</option>
                    ";
        // line 196
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["custom_fields"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["custom_field"]) {
            // line 197
            echo "                    ";
            if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "location", [], "any", false, false, false, 197) == "account")) {
                // line 198
                echo "                    ";
                if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 198) == "text")) {
                    // line 199
                    echo "                    ";
                    if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 199) == ($context["module_validacao_cpf_id"] ?? null))) {
                        // line 200
                        echo "                    <option value=\"";
                        echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 200);
                        echo "\" selected=\"selected\">";
                        echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 200);
                        echo "</option>
                    ";
                    } else {
                        // line 202
                        echo "                    <option value=\"";
                        echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 202);
                        echo "\">";
                        echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 202);
                        echo "</option>
                    ";
                    }
                    // line 204
                    echo "                    ";
                }
                // line 205
                echo "                    ";
            }
            // line 206
            echo "                    ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['custom_field'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 207
        echo "                  </select>
                </div>
              </div>
              <div class=\"form-group\">
                <div class=\"col-sm-3\">
                  <h5><strong>";
        // line 212
        echo ($context["entry_nascimento"] ?? null);
        echo "</strong></h5>
                  <span class=\"help\"><i class=\"fa fa-info-circle\"></i> ";
        // line 213
        echo ($context["help_nascimento"] ?? null);
        echo "</span>
                </div>
                <div class=\"col-sm-5\">
                  <select name=\"module_validacao_nascimento_id\" class=\"form-control\">
                    <option value=\"\">";
        // line 217
        echo ($context["text_none"] ?? null);
        echo "</option>
                    ";
        // line 218
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["custom_fields"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["custom_field"]) {
            // line 219
            echo "                    ";
            if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "location", [], "any", false, false, false, 219) == "account")) {
                // line 220
                echo "                    ";
                if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 220) == "text")) {
                    // line 221
                    echo "                    ";
                    if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 221) == ($context["module_validacao_nascimento_id"] ?? null))) {
                        // line 222
                        echo "                    <option value=\"";
                        echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 222);
                        echo "\" selected=\"selected\">";
                        echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 222);
                        echo "</option>
                    ";
                    } else {
                        // line 224
                        echo "                    <option value=\"";
                        echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 224);
                        echo "\">";
                        echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 224);
                        echo "</option>
                    ";
                    }
                    // line 226
                    echo "                    ";
                }
                // line 227
                echo "                    ";
            }
            // line 228
            echo "                    ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['custom_field'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 229
        echo "                  </select>
                </div>
              </div>
              <div class=\"form-group\">
                <div class=\"col-sm-3\">
                  <h5><strong>";
        // line 234
        echo ($context["entry_celular"] ?? null);
        echo "</strong></h5>
                  <span class=\"help\"><i class=\"fa fa-info-circle\"></i> ";
        // line 235
        echo ($context["help_celular"] ?? null);
        echo "</span>
                </div>
                <div class=\"col-sm-5\">
                  <select name=\"module_validacao_celular_id\" class=\"form-control\">
                    <option value=\"\">";
        // line 239
        echo ($context["text_none"] ?? null);
        echo "</option>
                    ";
        // line 240
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["custom_fields"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["custom_field"]) {
            // line 241
            echo "                    ";
            if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "location", [], "any", false, false, false, 241) == "account")) {
                // line 242
                echo "                    ";
                if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 242) == "text")) {
                    // line 243
                    echo "                    ";
                    if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 243) == ($context["module_validacao_celular_id"] ?? null))) {
                        // line 244
                        echo "                    <option value=\"";
                        echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 244);
                        echo "\" selected=\"selected\">";
                        echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 244);
                        echo "</option>
                    ";
                    } else {
                        // line 246
                        echo "                    <option value=\"";
                        echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 246);
                        echo "\">";
                        echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 246);
                        echo "</option>
                    ";
                    }
                    // line 248
                    echo "                    ";
                }
                // line 249
                echo "                    ";
            }
            // line 250
            echo "                    ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['custom_field'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 251
        echo "                  </select>
                </div>
              </div>
              <div class=\"form-group\">
                <div class=\"col-sm-3\">
                  <h5><strong>";
        // line 256
        echo ($context["entry_numero"] ?? null);
        echo "</strong></h5>
                  <span class=\"help\"><i class=\"fa fa-info-circle\"></i> ";
        // line 257
        echo ($context["help_numero"] ?? null);
        echo "</span>
                </div>
                <div class=\"col-sm-5\">
                  <select name=\"module_validacao_numero_id\" class=\"form-control\">
                    <option value=\"\">";
        // line 261
        echo ($context["text_none"] ?? null);
        echo "</option>
                    ";
        // line 262
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["custom_fields"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["custom_field"]) {
            // line 263
            echo "                    ";
            if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "location", [], "any", false, false, false, 263) == "address")) {
                // line 264
                echo "                    ";
                if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 264) == "text")) {
                    // line 265
                    echo "                    ";
                    if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 265) == ($context["module_validacao_numero_id"] ?? null))) {
                        // line 266
                        echo "                    <option value=\"";
                        echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 266);
                        echo "\" selected=\"selected\">";
                        echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 266);
                        echo "</option>
                    ";
                    } else {
                        // line 268
                        echo "                    <option value=\"";
                        echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 268);
                        echo "\">";
                        echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 268);
                        echo "</option>
                    ";
                    }
                    // line 270
                    echo "                    ";
                }
                // line 271
                echo "                    ";
            }
            // line 272
            echo "                    ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['custom_field'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 273
        echo "                  </select>
                </div>
              </div>
              <div class=\"form-group\">
                <div class=\"col-sm-3\">
                  <h5><strong>";
        // line 278
        echo ($context["entry_complemento"] ?? null);
        echo "</strong></h5>
                  <span class=\"help\"><i class=\"fa fa-info-circle\"></i> ";
        // line 279
        echo ($context["help_complemento"] ?? null);
        echo "</span>
                </div>
                <div class=\"col-sm-5\">
                  <select name=\"module_validacao_complemento_id\" id=\"input-complemento\" class=\"form-control\">
                    <option value=\"\">";
        // line 283
        echo ($context["text_none"] ?? null);
        echo "</option>
                    ";
        // line 284
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["custom_fields"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["custom_field"]) {
            // line 285
            echo "                    ";
            if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "location", [], "any", false, false, false, 285) == "address")) {
                // line 286
                echo "                    ";
                if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 286) == "text")) {
                    // line 287
                    echo "                    ";
                    if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 287) == ($context["module_validacao_complemento_id"] ?? null))) {
                        // line 288
                        echo "                    <option value=\"";
                        echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 288);
                        echo "\" selected=\"selected\">";
                        echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 288);
                        echo "</option>
                    ";
                    } else {
                        // line 290
                        echo "                    <option value=\"";
                        echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 290);
                        echo "\">";
                        echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 290);
                        echo "</option>
                    ";
                    }
                    // line 292
                    echo "                    ";
                }
                // line 293
                echo "                    ";
            }
            // line 294
            echo "                    ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['custom_field'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 295
        echo "                  </select>
                </div>
              </div>
            </div>
            <div class=\"tab-pane\" id=\"tab-erros\">
              <div class=\"alert alert-info\"><i class=\"fa fa-info-circle\"></i> ";
        // line 300
        echo ($context["text_erros"] ?? null);
        echo "
                <button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button>
              </div>
              <div class=\"form-group\">
                <div class=\"col-sm-3\">
                  <h5><span class=\"text-danger\">*</span> <strong>";
        // line 305
        echo ($context["entry_msg_cnpj"] ?? null);
        echo "</strong></h5>
                  <span class=\"help\"><i class=\"fa fa-info-circle\"></i> ";
        // line 306
        echo ($context["help_msg_cnpj"] ?? null);
        echo "</span>
                </div>
                <div class=\"col-sm-9\">
                  <input type=\"text\" name=\"module_validacao_msg_cnpj\" value=\"";
        // line 309
        echo ($context["module_validacao_msg_cnpj"] ?? null);
        echo "\" placeholder=\"\" class=\"form-control\" />
                  ";
        // line 310
        if (($context["error_msg_cnpj"] ?? null)) {
            // line 311
            echo "                  <div class=\"text-danger\">";
            echo ($context["error_msg_cnpj"] ?? null);
            echo "</div>
                  ";
        }
        // line 313
        echo "                </div>
              </div>
              <div class=\"form-group\">
                <div class=\"col-sm-3\">
                  <h5><span class=\"text-danger\">*</span> <strong>";
        // line 317
        echo ($context["entry_msg_cpf"] ?? null);
        echo "</strong></h5>
                  <span class=\"help\"><i class=\"fa fa-info-circle\"></i> ";
        // line 318
        echo ($context["help_msg_cpf"] ?? null);
        echo "</span>
                </div>
                <div class=\"col-sm-9\">
                  <input type=\"text\" name=\"module_validacao_msg_cpf\" value=\"";
        // line 321
        echo ($context["module_validacao_msg_cpf"] ?? null);
        echo "\" placeholder=\"\" class=\"form-control\" />
                  ";
        // line 322
        if (($context["error_msg_cpf"] ?? null)) {
            // line 323
            echo "                  <div class=\"text-danger\">";
            echo ($context["error_msg_cpf"] ?? null);
            echo "</div>
                  ";
        }
        // line 325
        echo "                </div>
              </div>
              <div class=\"form-group\">
                <div class=\"col-sm-3\">
                  <h5><span class=\"text-danger\">*</span> <strong>";
        // line 329
        echo ($context["entry_msg_cpf_existe"] ?? null);
        echo "</strong></h5>
                  <span class=\"help\"><i class=\"fa fa-info-circle\"></i> ";
        // line 330
        echo ($context["help_msg_cpf_existe"] ?? null);
        echo "</span>
                </div>
                <div class=\"col-sm-9\">
                  <input type=\"text\" name=\"module_validacao_msg_cpf_existe\" value=\"";
        // line 333
        echo ($context["module_validacao_msg_cpf_existe"] ?? null);
        echo "\" placeholder=\"\" class=\"form-control\" />
                  ";
        // line 334
        if (($context["error_msg_cpf_existe"] ?? null)) {
            // line 335
            echo "                  <div class=\"text-danger\">";
            echo ($context["error_msg_cpf_existe"] ?? null);
            echo "</div>
                  ";
        }
        // line 337
        echo "                </div>
              </div>
              <div class=\"form-group\">
                <div class=\"col-sm-3\">
                  <h5><span class=\"text-danger\">*</span> <strong>";
        // line 341
        echo ($context["entry_msg_nascimento"] ?? null);
        echo "</strong></h5>
                  <span class=\"help\"><i class=\"fa fa-info-circle\"></i> ";
        // line 342
        echo ($context["help_msg_nascimento"] ?? null);
        echo "</span>
                </div>
                <div class=\"col-sm-9\">
                  <input type=\"text\" name=\"module_validacao_msg_nascimento\" value=\"";
        // line 345
        echo ($context["module_validacao_msg_nascimento"] ?? null);
        echo "\" placeholder=\"\" class=\"form-control\" />
                  ";
        // line 346
        if (($context["error_msg_nascimento"] ?? null)) {
            // line 347
            echo "                  <div class=\"text-danger\">";
            echo ($context["error_msg_nascimento"] ?? null);
            echo "</div>
                  ";
        }
        // line 349
        echo "                </div>
              </div>
              <div class=\"form-group\">
                <div class=\"col-sm-3\">
                  <h5><span class=\"text-danger\">*</span> <strong>";
        // line 353
        echo ($context["entry_msg_maior_18_anos"] ?? null);
        echo "</strong></h5>
                  <span class=\"help\"><i class=\"fa fa-info-circle\"></i> ";
        // line 354
        echo ($context["help_msg_maior_18_anos"] ?? null);
        echo "</span>
                </div>
                <div class=\"col-sm-9\">
                  <input type=\"text\" name=\"module_validacao_msg_maior_18_anos\" value=\"";
        // line 357
        echo ($context["module_validacao_msg_maior_18_anos"] ?? null);
        echo "\" placeholder=\"\" class=\"form-control\" />
                  ";
        // line 358
        if (($context["error_msg_maior_18_anos"] ?? null)) {
            // line 359
            echo "                  <div class=\"text-danger\">";
            echo ($context["error_msg_maior_18_anos"] ?? null);
            echo "</div>
                  ";
        }
        // line 361
        echo "                </div>
              </div>
              <div class=\"form-group\">
                <div class=\"col-sm-3\">
                  <h5><span class=\"text-danger\">*</span> <strong>";
        // line 365
        echo ($context["entry_msg_celular"] ?? null);
        echo "</strong></h5>
                  <span class=\"help\"><i class=\"fa fa-info-circle\"></i> ";
        // line 366
        echo ($context["help_msg_celular"] ?? null);
        echo "</span>
                </div>
                <div class=\"col-sm-9\">
                  <input type=\"text\" name=\"module_validacao_msg_celular\" value=\"";
        // line 369
        echo ($context["module_validacao_msg_celular"] ?? null);
        echo "\" placeholder=\"\" class=\"form-control\" />
                  ";
        // line 370
        if (($context["error_msg_celular"] ?? null)) {
            // line 371
            echo "                  <div class=\"text-danger\">";
            echo ($context["error_msg_celular"] ?? null);
            echo "</div>
                  ";
        }
        // line 373
        echo "                </div>
              </div>
              <div class=\"form-group\">
                <div class=\"col-sm-3\">
                  <h5><span class=\"text-danger\">*</span> <strong>";
        // line 377
        echo ($context["entry_msg_bairro"] ?? null);
        echo "</strong></h5>
                  <span class=\"help\"><i class=\"fa fa-info-circle\"></i> ";
        // line 378
        echo ($context["help_msg_bairro"] ?? null);
        echo "</span>
                </div>
                <div class=\"col-sm-9\">
                  <input type=\"text\" name=\"module_validacao_msg_bairro\" value=\"";
        // line 381
        echo ($context["module_validacao_msg_bairro"] ?? null);
        echo "\" placeholder=\"\" class=\"form-control\" />
                  ";
        // line 382
        if (($context["error_msg_bairro"] ?? null)) {
            // line 383
            echo "                  <div class=\"text-danger\">";
            echo ($context["error_msg_bairro"] ?? null);
            echo "</div>
                  ";
        }
        // line 385
        echo "                </div>
              </div>
              <div class=\"form-group\">
                <div class=\"col-sm-3\">
                  <h5><span class=\"text-danger\">*</span> <strong>";
        // line 389
        echo ($context["entry_msg_numero"] ?? null);
        echo "</strong></h5>
                  <span class=\"help\"><i class=\"fa fa-info-circle\"></i> ";
        // line 390
        echo ($context["help_msg_numero"] ?? null);
        echo "</span>
                </div>
                <div class=\"col-sm-9\">
                  <input type=\"text\" name=\"module_validacao_msg_numero\" value=\"";
        // line 393
        echo ($context["module_validacao_msg_numero"] ?? null);
        echo "\" placeholder=\"\" class=\"form-control\" />
                  ";
        // line 394
        if (($context["error_msg_numero"] ?? null)) {
            // line 395
            echo "                  <div class=\"text-danger\">";
            echo ($context["error_msg_numero"] ?? null);
            echo "</div>
                  ";
        }
        // line 397
        echo "                </div>
              </div>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
";
        // line 406
        echo ($context["footer"] ?? null);
    }

    public function getTemplateName()
    {
        return "extension/module/validacao.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  1052 => 406,  1041 => 397,  1035 => 395,  1033 => 394,  1029 => 393,  1023 => 390,  1019 => 389,  1013 => 385,  1007 => 383,  1005 => 382,  1001 => 381,  995 => 378,  991 => 377,  985 => 373,  979 => 371,  977 => 370,  973 => 369,  967 => 366,  963 => 365,  957 => 361,  951 => 359,  949 => 358,  945 => 357,  939 => 354,  935 => 353,  929 => 349,  923 => 347,  921 => 346,  917 => 345,  911 => 342,  907 => 341,  901 => 337,  895 => 335,  893 => 334,  889 => 333,  883 => 330,  879 => 329,  873 => 325,  867 => 323,  865 => 322,  861 => 321,  855 => 318,  851 => 317,  845 => 313,  839 => 311,  837 => 310,  833 => 309,  827 => 306,  823 => 305,  815 => 300,  808 => 295,  802 => 294,  799 => 293,  796 => 292,  788 => 290,  780 => 288,  777 => 287,  774 => 286,  771 => 285,  767 => 284,  763 => 283,  756 => 279,  752 => 278,  745 => 273,  739 => 272,  736 => 271,  733 => 270,  725 => 268,  717 => 266,  714 => 265,  711 => 264,  708 => 263,  704 => 262,  700 => 261,  693 => 257,  689 => 256,  682 => 251,  676 => 250,  673 => 249,  670 => 248,  662 => 246,  654 => 244,  651 => 243,  648 => 242,  645 => 241,  641 => 240,  637 => 239,  630 => 235,  626 => 234,  619 => 229,  613 => 228,  610 => 227,  607 => 226,  599 => 224,  591 => 222,  588 => 221,  585 => 220,  582 => 219,  578 => 218,  574 => 217,  567 => 213,  563 => 212,  556 => 207,  550 => 206,  547 => 205,  544 => 204,  536 => 202,  528 => 200,  525 => 199,  522 => 198,  519 => 197,  515 => 196,  511 => 195,  504 => 191,  500 => 190,  493 => 185,  487 => 184,  484 => 183,  481 => 182,  473 => 180,  465 => 178,  462 => 177,  459 => 176,  456 => 175,  452 => 174,  448 => 173,  441 => 169,  437 => 168,  430 => 163,  424 => 162,  421 => 161,  418 => 160,  410 => 158,  402 => 156,  399 => 155,  396 => 154,  393 => 153,  389 => 152,  385 => 151,  378 => 147,  374 => 146,  366 => 141,  358 => 136,  352 => 133,  348 => 132,  341 => 127,  336 => 125,  331 => 124,  326 => 122,  321 => 121,  319 => 120,  312 => 116,  308 => 115,  301 => 110,  296 => 108,  291 => 107,  286 => 105,  281 => 104,  279 => 103,  272 => 99,  268 => 98,  261 => 93,  256 => 91,  251 => 90,  246 => 88,  241 => 87,  239 => 86,  232 => 82,  228 => 81,  221 => 76,  216 => 74,  211 => 73,  206 => 71,  201 => 70,  199 => 69,  192 => 65,  188 => 64,  181 => 59,  176 => 57,  171 => 56,  166 => 54,  161 => 53,  159 => 52,  152 => 48,  148 => 47,  140 => 42,  133 => 38,  129 => 37,  125 => 36,  120 => 34,  114 => 31,  110 => 29,  102 => 25,  99 => 24,  91 => 20,  89 => 19,  83 => 15,  72 => 13,  68 => 12,  61 => 10,  54 => 8,  50 => 7,  46 => 6,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "extension/module/validacao.twig", "");
    }
}
