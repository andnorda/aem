<%@include file="/libs/foundation/global.jsp"%>
<%@ page import="com.day.cq.wcm.foundation.Image" %>
<%
    // getting the image from the Dialog/resouce
    // notice the use of the second parameter "image" -- this signifies that the
    // image will live on a resource (called image) below the requested resource
    Image image = new Image(resource, "image");
    // setting the selector so that the "parbase" can work its magic
    image.setSelector(".img");
    // getting the rich text from the Dialog
    String text = properties.get("text", "TEXT NA");
    // getting the path from the Design Dialog
    String path = currentStyle.get("path", "PATH NA");
%>
<h2><%= path %></h2>
<%= text %><br />
<%
    image.draw(out);
%>