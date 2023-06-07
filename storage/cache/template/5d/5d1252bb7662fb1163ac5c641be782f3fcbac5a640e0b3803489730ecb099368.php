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
class __TwigTemplate_d2174e16ba6b3a8694b3cb2c1e5018c7407a629801bc6c930e4c793f7a73d64d extends \Twig\Template
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

\t\t  <div class=\"form-group required\">
            <label class=\"col-sm-2 control-label\" for=\"input-campaign-name\">Nome da Campanha</label>
            <div class=\"col-sm-10\">
              <input type=\"text\" name=\"campaign_name\" value=\"\" placeholder=\"Nome da Campanha\" id=\"input-campaign-name\" class=\"form-control\" />
            </div>
          </div>

\t\t  <div class=\"form-group required\">
            <label class=\"col-sm-2 control-label\" for=\"input-subject\">";
        // line 32
        echo ($context["entry_subject"] ?? null);
        echo "</label>
            <div class=\"col-sm-10\">
              <input type=\"text\" name=\"subject\" value=\"\" placeholder=\"";
        // line 34
        echo ($context["entry_subject"] ?? null);
        echo "\" id=\"input-subject\" class=\"form-control\" />
            </div>
          </div>

\t\t  <div class=\"form-group required\">
            <label class=\"col-sm-2 control-label\" for=\"input-campaign-name\">Data de envio</label>
            <div class=\"col-sm-10\">
              <input type=\"text\" name=\"campaign_date\" value=\"\" placeholder=\"Data de envio\" id=\"input-campaign-date\" class=\"form-control\" />
            </div>
          </div>

\t\t  ";
        // line 45
        if (($context["books"] ?? null)) {
            // line 46
            echo "\t\t  <div class=\"form-group\">
\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-books-default\">Selecione a Lista</label>
\t\t\t  <div class=\"col-sm-10\">
\t\t\t\t<select name=\"module_sendpulse_book_default\" id=\"input-book-default\" class=\"form-control\">
\t\t\t\t  <option value=\"\">";
            // line 50
            echo ($context["text_select"] ?? null);
            echo "</option>
\t\t  \t\t\t";
            // line 51
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["books"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["book"]) {
                // line 52
                echo "\t\t\t\t  \t\t<option value=\"";
                echo twig_get_attribute($this->env, $this->source, $context["book"], "id", [], "any", false, false, false, 52);
                echo "\" ";
                if ((twig_get_attribute($this->env, $this->source, $context["book"], "id", [], "any", false, false, false, 52) == ($context["module_sendpulse_book_default"] ?? null))) {
                    echo " selected ";
                }
                echo ">";
                echo twig_get_attribute($this->env, $this->source, $context["book"], "name", [], "any", false, false, false, 52);
                echo "</option>
\t\t\t\t  \t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['book'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 54
            echo "\t\t\t\t</select>
\t\t\t  </div>
\t\t  </div>
\t\t";
        }
        // line 58
        echo "

\t\t  <div class=\"form-group to\" id=\"to-product\">
            <label class=\"col-sm-2 control-label\" for=\"input-product\"><span data-toggle=\"tooltip\" title=\"";
        // line 61
        echo ($context["help_product"] ?? null);
        echo "\">";
        echo ($context["entry_product"] ?? null);
        echo "</span></label>
            <div class=\"col-sm-10\">
              <input type=\"text\" name=\"products\" value=\"\" placeholder=\"";
        // line 63
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
  <link href=\"view/javascript/jquery/jsdatetimepicker/jquery.datetimepicker.min.css\" rel=\"stylesheet\" />
  <script type=\"text/javascript\" src=\"view/javascript/codemirror/lib/codemirror.js\"></script> 
  <script type=\"text/javascript\" src=\"view/javascript/codemirror/lib/xml.js\"></script> 
  <script type=\"text/javascript\" src=\"view/javascript/codemirror/lib/formatting.js\"></script> 
  <script type=\"text/javascript\" src=\"view/javascript/summernote/summernote.min.js\"></script>
  <link href=\"view/javascript/summernote/summernote.min.css\" rel=\"stylesheet\" />
  <script type=\"text/javascript\" src=\"view/javascript/summernote/summernote-image-attributes.js\"></script> 
  <script type=\"text/javascript\" src=\"view/javascript/summernote/opencart.js\"></script> 
  <script type=\"text/javascript\" src=\"view/javascript/jquery/jsdatetimepicker/jquery.datetimepicker.full.min.js\"></script> 
  
  <script type=\"text/javascript\"><!--
\$('select[name=\\'to\\']').on('change', function() {
\t\$('.to').hide();

\t\$('#to-' + this.value.replace('_', '-')).show();
});

\$('select[name=\\'to\\']').trigger('change');
//--></script> 
  <script type=\"text/javascript\"><!--

\t\$(function () {\t\t

\t\tvar logic = function( currentDateTime ){
\t\t\tvar newDate = moment(Date()).add(4, 'hours').format('HH:mm');\t\t\t
\t\t\tif( (currentDateTime.getDay()==6 || currentDateTime.getDay()==7) && currentDateTime.getHours() <= 19 ){
\t\t\t  this.setOptions({\t\t\t\t
\t\t\t\t//minTime:''+newDate+'',
\t\t\t\t//step: 240
\t\t\t\tallowTimes:[
\t\t\t\t\t'04:00',
\t\t\t\t\t'08:00',
\t\t\t\t\t'12:00',
\t\t\t\t\t'16:00',
\t\t\t\t\t'20:00',\t\t\t\t\t
\t\t\t\t\t]
\t\t\t  });
\t\t\t}else
\t\t\t  this.setOptions({
\t\t\t\tminTime:'00:00',
\t\t\t\tstep: 30
\t\t\t  });
\t\t  };
\t\t \t\t  \t\t  

\t\t\$.datetimepicker.setLocale('pt-BR');
\t\t\$('#input-campaign-date').datetimepicker({
\t\t\tformat:'d/m/Y H:i',  \t\t\t
\t\t\t//closeOnDateSelect: true,
\t\t\t//step: 30,
\t\t\t//defaultDate: '21/08/2022 23:00:00',
\t\t\tminDate:'21/08/2022',
\t\t\tonChangeDateTime:logic,
\t\t\tonShow:logic\t\t
\t\t\t//format:\"DD/MM/YYYY HH:mm:ss\",
\t\t\t//language: 'pt-br',
\t\t\t//minuteStepping: 5\t\t\t\t\t\t
\t\t    //minDate: \"21/08/2022 23:00:00\",\t\t
\t\t\t//maxDate: \"21/08/2023 23:00:00\",\t\t
\t\t\t//defaultDate: defDate.toString(\"DD/MM/YYY hh:mm:ss\")
\t\t\t//minDate: moment().add(4, 'hours'),
\t\t});\t\t\t\t
\t});

\t
\t 

// Products
\$('input[name=\\'products\\']').autocomplete({
\t'source': function(request, response) {
\t\t\$.ajax({
\t\t\turl: 'index.php?route=catalog/product/autocomplete&user_token=";
        // line 153
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
\t\t\t//\$('#button-send').button('loading');
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
        // line 228
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
        return array (  343 => 228,  265 => 153,  172 => 63,  165 => 61,  160 => 58,  154 => 54,  139 => 52,  135 => 51,  131 => 50,  125 => 46,  123 => 45,  109 => 34,  104 => 32,  88 => 19,  80 => 13,  69 => 11,  65 => 10,  60 => 8,  54 => 7,  46 => 6,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "marketing/contact.twig", "");
    }
}
