<%--

  User Account Grid component.

  A custom component that will display a dynamic grid of user accounts

--%><%
%><%@include file="/libs/foundation/global.jsp"%><%
%><%@page session="false" %>

<!-- Pick up the client libraries  -->
<cq:includeClientLib categories="componentlab" />

<script type="text/javascript">

/* Grab the JCR path to the content entry that calls this component
 * with Sling, you cannot call a script, you must call the jcr content
 * node that resolves to the representation (script).
 */
var baseURL = "<%= currentNode.getPath() %>";

$CQ(function () {
    $CQ('.user-table').flexigrid({
        url: baseURL + '.json', // This will trigger a POST request back to CQ
        dataType: 'json', // The expected response will be JSON formatted data
        colModel : [ {
            display : 'User ID', name : 'id', width : 215, sortable : true, align : 'left', hide: false
        }, {
            display : 'First Name', name : 'givenName', width : 100, sortable : true, align : 'left', hide: false
        }, {
            display : 'Last Name', name : 'familyName', width : 100, sortable : true, align : 'left', hide: false
        },{
            display : 'Email', name : 'email', width : 215, sortable : true, align : 'left', hide: false
        }],
        buttons : [
            {name: 'Add', bclass: 'add', onpress : userAdd}, 
            {name: 'Edit', bclass: 'edit', onpress : userEdit},
            {name: 'Delete', bclass: 'delete', onpress : userDelete},
            {separator: true}
            ],
       searchitems : [
            {display: 'User ID', name : 'user_id',isdefault: true},
            {display: 'First Name', name : 'givenName'},
            {display: 'Last Name', name : 'familyName'}
            ],
        sortname: "id",
        sortorder: "asc",
        usepager: true,
        title: "User Account Grid",
        useRp: true,
        rp: 15,
        showTableToggleBtn: false,
        singleSelect: true,
        width: 700,
        height: 200
    });
});

function userAdd() {
    alert("Add button clicked");
}

function userEdit() {
    alert("Edit button clicked.");
}

function userDelete() {
    alert("Delete button clicked.");
}


</script>

<table class="user-table"></table>

