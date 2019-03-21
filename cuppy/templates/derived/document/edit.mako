<%inherit file="cuppy:templates/base/dashboard-base.mako"/>
<%namespace name="field" file="cuppy:templates/derived/document/fields.mako"/>

<%block name="content_header">
<!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Dashboard
        <small>Edit page</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="${request.route_url('dashboard')}"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Edit page</li>
      </ol>
      </section>
</%block>
<div class="box box-primary">
<div class="box-header with-body">
<h3 class="box-title">Edit ${doc.title}</h3>

${field.doc_form(form)}


</div>
</div>
