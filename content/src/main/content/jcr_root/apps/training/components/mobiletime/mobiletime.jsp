<%@ page import="com.day.cq.wcm.mobile.api.device.capability.DeviceCapability,com.day.cq.wcm.mobile.core.MobileUtil" %> <%
%><%@include file="/libs/foundation/global.jsp"%>
<%
// only show the times if the device supports javascript
if (MobileUtil.hasCapability(slingRequest, DeviceCapability.CAPABILITY_JAVASCRIPT)) {
%>
<script type="text/javascript">
	function startTime() {
		
var today=new Date();
		var h=today.getHours();
		var m=today.getMinutes();
		var s=today.getSeconds();
		
// add a zero in front of numbers<10	
m=checkTime(m);
		s=checkTime(s);
		document.getElementById('timing').innerHTML=h+":"+m+":"+s;	
t=setTimeout('startTime()',500);
}
function checkTime(i) {
			if (i<10) {
			i="0" + i;
		}
	
return i;
}
</script>
	
<div id="timing" style="color:yellow; font-style:bold"></div>
	
<script type="text/javascript">
	startTime();
</script>
<% } else { %>
<p>Your device does not support javascript</p>
<% } %>