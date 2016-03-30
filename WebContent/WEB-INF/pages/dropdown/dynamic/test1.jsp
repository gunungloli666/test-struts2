<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<!--    <script src="/resources/js/jquery.1.10.2.min.js" ></script> -->
   <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.1.10.2.min.js"></script>
   <script>
       $(function () {
           $('#state').html('');
           $.getJSON("readStates", function (res) {
               for (var i = 0; i < res.states.length; i++) {
                   $('#state').append(
                       '<option value=' + res.states[i] + '>' + res.states[i] + '</option>');
               }
           });

           $("#state").change(
               function () {
                   $('#district').html('');
                   var state = {
                       "state": $("#state").val()
                   };
                   $.ajax({
                       url: "readDistricts",
                       data: JSON.stringify(state),
                       dataType: 'json',
                       contentType: 'application/json',
                       type: 'POST',
                       async: true,
                       success: function (res) {
                           console.log(res.districts.length);
                           for (var i = 0; i < res.districts.length; i++) {
                               console.log(" " + res.districts[i]);
                               $('#district').append(
                                   '<option value=' + res.districts[i] + '>' + res.districts[i] + '</option>');
                           }
                       }
                   });
               });
       });
   </script>
</head>
 
<body>
    <h3>Struts 2 Dynamic Drop down List</h3>
    State :
    <select id="state"></select>District :
    <select id="district"></select>
</body>

</html>