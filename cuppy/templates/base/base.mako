<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  
    <meta name="keywords" content="${api.meta_keywords}">
    
    <meta name="description" content="${api.meta_description}">
    
    <title>${title or api.page_title} - ${api.site_title}</title>

  <link rel="stylesheet" href="${request.static_url('cuppy:static/bootstrap/css/bootstrap.min.css')}">
  <link rel="stylesheet" href="${request.static_url('cuppy:static/adminlte/css/AdminLTE.min.css')}">
  <link rel="stylesheet" href="${request.static_url('cuppy:static/adminlte/css/skin-blue.min.css')}">
 <link rel="stylesheet" href="${request.static_url('cuppy:static/fontawesome/css/font-awesome.min.css')}">
  <%block name="header_tags">
  </%block>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body class='hold-transition skin-blue'>
    
    ${api.render_template("cuppy:templates/components/navigation.mako", contents=api.navigation_documents)|n}
    <div class="container">
    
    ${api.render_template("cuppy:templates/components/breadcrumb.mako", breadcrumbs=api.breadcrumbs)|n}
    <div class="row">
      <div class="col-md-8 main">
      <%block name="aboveContent">
      </%block>
    ${next.body()}
      <%block name="belowContent">
      </%block>
      </div>
      <div class="col-md-4 right">
      <%block name="right">
      </%block>
      </div>
    </div>
    </div>
    
   <script src="${request.static_url('cuppy:static/jquery/jquery.v3.3.1.min.js')}"></script>
<script src="${request.static_url('cuppy:static/bootstrap/js/bootstrap.min.js')}"></script>
<script src="${request.static_url('cuppy:static/adminlte/js/adminlte.min.js')}"></script>
<%block name="script_tags">
</%block>
  </body>
</html>