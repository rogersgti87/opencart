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

/* marketing/contact.twig */
class __TwigTemplate_b2850392ae577aeac7b7d65a5b0a2a90d967f2ec92e4a10ed0bcc20530741d4c extends \Twig\Template
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
        <button id=\"button-send\" data-loading-text=\"";
        // line 6
        echo ($context["text_loading"] ?? null);
        echo "\" data-toggle=\"tooltip\" title=\"";
        echo ($context["button_send"] ?? null);
        echo "\" class=\"btn btn-primary\" onclick=\"send('index.php?route=marketing/contact/send&user_token=";
        echo ($context["user_token"] ?? null);
        echo "');\"><i class=\"fa fa-envelope\"></i></button>
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
    <div class=\"panel panel-default\">
      <div class=\"panel-heading\">
        <h3 class=\"panel-title\"><i class=\"fa fa-envelope\"></i> ";
        // line 19
        echo ($context["heading_title"] ?? null);
        echo "</h3>
      </div>
      <div class=\"panel-body\">
        <form class=\"form-horizontal\">
          <div class=\"form-group\">
            <label class=\"col-sm-2 control-label\" for=\"input-store\">";
        // line 24
        echo ($context["entry_store"] ?? null);
        echo "</label>
            <div class=\"col-sm-10\">
              <select name=\"store_id\" id=\"input-store\" class=\"form-control\">
                <option value=\"0\">";
        // line 27
        echo ($context["text_default"] ?? null);
        echo "</option>               
                ";
        // line 28
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["stores"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["store"]) {
            // line 29
            echo "                <option value=\"";
            echo twig_get_attribute($this->env, $this->source, $context["store"], "store_id", [], "any", false, false, false, 29);
            echo "\">";
            echo twig_get_attribute($this->env, $this->source, $context["store"], "name", [], "any", false, false, false, 29);
            echo "</option>
                ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['store'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 31
        echo "              </select>
            </div>
          </div>

\t\t  <div class=\"form-group required\">
            <label class=\"col-sm-2 control-label\" for=\"input-campaign-name\">Nome da Campanha</label>
            <div class=\"col-sm-10\">
              <input type=\"text\" name=\"campaign_name\" value=\"\" placeholder=\"Nome da Campanha\" id=\"input-campaign-name\" class=\"form-control\" />
            </div>
          </div>

\t\t  <div class=\"form-group required\">
            <label class=\"col-sm-2 control-label\" for=\"input-subject\">";
        // line 43
        echo ($context["entry_subject"] ?? null);
        echo "</label>
            <div class=\"col-sm-10\">
              <input type=\"text\" name=\"subject\" value=\"\" placeholder=\"";
        // line 45
        echo ($context["entry_subject"] ?? null);
        echo "\" id=\"input-subject\" class=\"form-control\" />
            </div>
          </div>

\t\t  ";
        // line 49
        if (($context["books"] ?? null)) {
            // line 50
            echo "\t\t  <div class=\"form-group\">
\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-books-default\">Selecione a Lista</label>
\t\t\t  <div class=\"col-sm-10\">
\t\t\t\t<select name=\"module_sendpulse_book_default\" id=\"input-book-default\" class=\"form-control\">
\t\t\t\t  <option value=\"\">";
            // line 54
            echo ($context["text_select"] ?? null);
            echo "</option>
\t\t  \t\t\t";
            // line 55
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["books"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["book"]) {
                // line 56
                echo "\t\t\t\t  \t\t<option value=\"";
                echo twig_get_attribute($this->env, $this->source, $context["book"], "id", [], "any", false, false, false, 56);
                echo "\" ";
                if ((twig_get_attribute($this->env, $this->source, $context["book"], "id", [], "any", false, false, false, 56) == ($context["module_sendpulse_book_default"] ?? null))) {
                    echo " selected ";
                }
                echo ">";
                echo twig_get_attribute($this->env, $this->source, $context["book"], "name", [], "any", false, false, false, 56);
                echo "</option>
\t\t\t\t  \t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['book'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 58
            echo "\t\t\t\t</select>
\t\t\t  </div>
\t\t  </div>
\t\t";
        }
        // line 62
        echo "
\t\t  <div class=\"form-group\">
            <label class=\"col-sm-2 control-label\" for=\"input-to\">Produtos</label>
            <div class=\"col-sm-10\">
              <select name=\"to\" id=\"input-to\" class=\"form-control\">               
                <option value=\"product\">";
        // line 67
        echo ($context["text_product"] ?? null);
        echo "</option>
              </select>
            </div>
          </div>

\t\t  <div class=\"form-group to\" id=\"to-product\">
            <label class=\"col-sm-2 control-label\" for=\"input-product\"><span data-toggle=\"tooltip\" title=\"";
        // line 73
        echo ($context["help_product"] ?? null);
        echo "\">";
        echo ($context["entry_product"] ?? null);
        echo "</span></label>
            <div class=\"col-sm-10\">
              <input type=\"text\" name=\"products\" value=\"\" placeholder=\"";
        // line 75
        echo ($context["entry_product"] ?? null);
        echo "\" id=\"input-product\" class=\"form-control\" />
              <div class=\"well well-sm\" style=\"height: 150px; overflow: auto;\"></div>
            </div>
          </div>
         

\t\t  

          
          
        


        </form>
      </div>
    </div>
  </div>
  <link href=\"view/javascript/codemirror/lib/codemirror.css\" rel=\"stylesheet\" />
  <link href=\"view/javascript/codemirror/theme/monokai.css\" rel=\"stylesheet\" />
  <script type=\"text/javascript\" src=\"view/javascript/codemirror/lib/codemirror.js\"></script> 
  <script type=\"text/javascript\" src=\"view/javascript/codemirror/lib/xml.js\"></script> 
  <script type=\"text/javascript\" src=\"view/javascript/codemirror/lib/formatting.js\"></script> 
  <script type=\"text/javascript\" src=\"view/javascript/summernote/summernote.min.js\"></script>
  <link href=\"view/javascript/summernote/summernote.min.css\" rel=\"stylesheet\" />
  <script type=\"text/javascript\" src=\"view/javascript/summernote/summernote-image-attributes.js\"></script> 
  <script type=\"text/javascript\" src=\"view/javascript/summernote/opencart.js\"></script> 
  <script type=\"text/javascript\"><!--
\$('select[name=\\'to\\']').on('change', function() {
\t\$('.to').hide();

\t\$('#to-' + this.value.replace('_', '-')).show();
});

\$('select[name=\\'to\\']').trigger('change');
//--></script> 
  <script type=\"text/javascript\"><!--
// Products
\$('input[name=\\'products\\']').autocomplete({
\t'source': function(request, response) {
\t\t\$.ajax({
\t\t\turl: 'index.php?route=catalog/product/autocomplete&user_token=";
        // line 115
        echo ($context["user_token"] ?? null);
        echo "&filter_name=' +  encodeURIComponent(request),
\t\t\tdataType: 'json',
\t\t\tsuccess: function(json) {
\t\t\t\tresponse(\$.map(json, function(item) {
\t\t\t\t\treturn {
\t\t\t\t\t\tlabel: item['name'],
\t\t\t\t\t\tvalue: item['product_id']
\t\t\t\t\t}
\t\t\t\t}));
\t\t\t},
\t\t\terror: function(xhr, ajaxOptions, thrownError) {
\t\t\t\talert(thrownError + \"\\r\\n\" + xhr.statusText + \"\\r\\n\" + xhr.responseText);
\t\t\t}
\t\t});
\t},
\t'select': function(item) {
\t\t\$('input[name=\\'products\\']').val('');

\t\t\$('#product' + item['value']).remove();

\t\t\$('#input-product').parent().find('.well').append('<div id=\"product' + item['value'] + '\"><i class=\"fa fa-minus-circle\"></i> ' + item['label'] + '<input type=\"hidden\" name=\"product[]\" value=\"' + item['value'] + '\" /></div>');
\t}
});

\$('#input-product').parent().find('.well').delegate('.fa-minus-circle', 'click', function() {
\t\$(this).parent().remove();
});

function send(url) {
\t\$.ajax({
\t\turl: url,
\t\ttype: 'post',
\t\tdata: \$('#content select, #content input, #content textarea'),
\t\tdataType: 'json',
\t\tbeforeSend: function() {
\t\t\t\$('#button-send').button('loading');
\t\t},
\t\tsuccess: function(json) {
\t\t\t\$('.alert-dismissible, .text-danger').remove();

\t\t\tif (json['error']) {
\t\t\t\tif (json['error']['warning']) {
\t\t\t\t\t\$('#content > .container-fluid').prepend('<div class=\"alert alert-danger alert-dismissible\"><i class=\"fa fa-exclamation-circle\"></i> ' + json['error']['warning'] + ' <button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button></div>');
\t\t\t\t}

\t\t\t\tif (json['error']['email']) {
\t\t\t\t\t\$('#content > .container-fluid').prepend('<div class=\"alert alert-danger alert-dismissible\"><i class=\"fa fa-exclamation-circle\"></i> ' + json['error']['email'] + ' <button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button></div>');
\t\t\t\t}

\t\t\t\tif (json['error']['subject']) {
\t\t\t\t\t\$('input[name=\\'subject\\']').after('<div class=\"text-danger\">' + json['error']['subject'] + '</div>');
\t\t\t\t}

\t\t\t\tif (json['error']['message']) {
\t\t\t\t\t\$('textarea[name=\\'message\\']').parent().append('<div class=\"text-danger\">' + json['error']['message'] + '</div>');
\t\t\t\t}
\t\t\t}

\t\t\tif (json['success']) {
\t\t\t\t\$('#content > .container-fluid').prepend('<div class=\"alert alert-success alert-dismissible\"><i class=\"fa fa-check-circle\"></i>  ' + json['success'] + ' <button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button></div>');
\t\t\t}
\t\t\t\t
\t\t\tif (json['next']) {
\t\t\t\tsend(json['next']);
\t\t\t} else {
\t\t\t\t\$('#button-send').button('reset');
\t\t\t}
\t\t\t
\t\t},
\t\terror: function(xhr, ajaxOptions, thrownError) {
\t\t\talert(thrownError + \"\\r\\n\" + xhr.statusText + \"\\r\\n\" + xhr.responseText);
\t\t}
\t});
}
//--></script></div>
";
        // line 190
        echo ($context["footer"] ?? null);
        echo "
";
    }

    public function getTemplateName()
    {
        return "marketing/contact.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  328 => 190,  250 => 115,  207 => 75,  200 => 73,  191 => 67,  184 => 62,  178 => 58,  163 => 56,  159 => 55,  155 => 54,  149 => 50,  147 => 49,  140 => 45,  135 => 43,  121 => 31,  110 => 29,  106 => 28,  102 => 27,  96 => 24,  88 => 19,  80 => 13,  69 => 11,  65 => 10,  60 => 8,  54 => 7,  46 => 6,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "marketing/contact.twig", "");
    }
}
