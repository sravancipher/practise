<body>
<form name="f1" action="/Sample1/Methods1" method="post" onSubmit="return validateInput()">
  <input type="radio" id="option1" name="option" value="option1">
  <label for="option1">Add a Student</label><br>
  <input type="radio" id="option2" name="option" value="option2">
  <label for="option2">Update a Student</label><br>
  <input type="radio" id="option3" name="option" value="option3">
  <label for="option3">Remove a Student</label><br>
  <input type="radio" id="option4" name="option" value="option4">
  <label for="option4">Search for a Student</label><br>
  <input type="radio" id="option5" name="option" value="option5">
  <label for="option5">Get Students Data</label><br>
  <input type="submit"  value="Submit Options"/>
</form>  
<form action="/Sample1/Methods1"><div id="inputs"></div></form>
  <script>
	  function validateInput(){
		var opt=document.querySelector('input[name="option"]:checked');
		if(opt.value==="option1"){
	      var o = document.createElement("input");  
		  o.type = "text";
		  o.name = "opti"; 
		  o.value=opt.value;
		  o.readOnly=true;
		  document.getElementById("inputs").appendChild(o);
		  var label1=document.createElement("label");
		  label1.textContent="Enter the Roll No:";
		  document.getElementById("inputs").appendChild(label1);
		  var roll = document.createElement("input");  
		  roll.type = "number";
		  roll.name = "roll_no"; 
		  document.getElementById("inputs").appendChild(roll);
		  var label2=document.createElement("label");
		  label2.textContent="Enter the Student Name:";
		  document.getElementById("inputs").appendChild(label2);
		  var name = document.createElement("input");  
		  name.type = "text";
		  name.name = "name"; 
		  document.getElementById("inputs").appendChild(name);
		  var label3=document.createElement("label");
		  label3.textContent="Enter the Student grade:";
		  document.getElementById("inputs").appendChild(label3);
		  var grade = document.createElement("input");  
		  grade.type = "text";
		  grade.name = "grade"; 
		  document.getElementById("inputs").appendChild(grade);
		  var subm = document.createElement("input");  
		  subm.type = "submit";
		  subm.name = "sub"; 
		  document.getElementById("inputs").appendChild(subm);
		  var br = document.createElement("br");
		  document.getElementById("inputs").appendChild(br);
		  return false;
	  }
	if(opt.value==="option2"){
	      var o = document.createElement("input");
		  o.type = "text";
		  o.name = "opti"; 
		  o.value=opt.value;
		  o.readOnly=true;
		  document.getElementById("inputs").appendChild(o);
		  var label1=document.createElement("label");
		  label1.textContent="Enter the Roll No:";
		  document.getElementById("inputs").appendChild(label1);
		  var roll = document.createElement("input");  
		  roll.type = "number";
		  roll.name = "roll_no"; 
		  document.getElementById("inputs").appendChild(roll);
		  var label2=document.createElement("label");
		  label2.textContent="Enter the Student Name:";
		  document.getElementById("inputs").appendChild(label2);
		  var name = document.createElement("input");  
		  name.type = "text";
		  name.name = "name"; 
		  document.getElementById("inputs").appendChild(name);
		  var label3=document.createElement("label");
		  label3.textContent="Enter the Student grade:";
		  document.getElementById("inputs").appendChild(label3);
		  var grade = document.createElement("input");  
		  grade.type = "text";
		  grade.name = "grade"; 
		  document.getElementById("inputs").appendChild(grade);
		  var subm = document.createElement("input");  
		  subm.type = "submit";
		  subm.name = "sub"; 
		  document.getElementById("inputs").appendChild(subm);
		  var br = document.createElement("br");
		  document.getElementById("inputs").appendChild(br);
		  return false;
	  }
	  if(opt.value==="option3"){
		  var o = document.createElement("input");  
		  o.type = "text";
		  o.name = "opti"; 
		  o.value=opt.value;
		  o.readOnly=true;
		  document.getElementById("inputs").appendChild(o);
		  var label1=document.createElement("label");
		  label1.textContent="Enter the Roll No:";
		  document.getElementById("inputs").appendChild(label1);
		  var roll = document.createElement("input");  
		  roll.type = "number";
		  roll.name = "roll_no"; 
		  document.getElementById("inputs").appendChild(roll);
		  var subm = document.createElement("input");  
		  subm.type = "submit";
		  subm.name = "sub"; 
		  document.getElementById("inputs").appendChild(subm);
		  var br = document.createElement("br");
		  document.getElementById("inputs").appendChild(br);
		  return false;
	  }
	  if(opt.value==="option4"){
		  var o = document.createElement("input");  
		  o.type = "text";
		  o.name = "opti"; 
		  o.value=opt.value;
		  o.readOnly=true;
		  document.getElementById("inputs").appendChild(o);
		  var label1=document.createElement("label");
		  label1.textContent="Enter the Roll No:";
		  document.getElementById("inputs").appendChild(label1);
		  var roll = document.createElement("input");  
		  roll.type = "number";
		  roll.name = "roll_no"; 
		  document.getElementById("inputs").appendChild(roll);
		  var subm = document.createElement("input");  
		  subm.type = "submit";
		  subm.name = "sub"; 
		  document.getElementById("inputs").appendChild(subm);
		  var br = document.createElement("br");
		  document.getElementById("inputs").appendChild(br);
		  return false;
	  }
	  if(opt.value==="option5"){
		  var o = document.createElement("input");  
		  o.type = "text";
		  o.name = "opti"; 
		  o.value=opt.value;
		  o.readOnly=true;
		  document.getElementById("inputs").appendChild(o);
		  var subm = document.createElement("input");  
		  subm.type = "submit";
		  subm.name = "sub"; 
		  document.getElementById("inputs").appendChild(subm);
		  var br = document.createElement("br");
		  document.getElementById("inputs").appendChild(br);
		  return false;
	  }
	  else{
		  return false;
	  }  
	  }
  </script>
 </body>



