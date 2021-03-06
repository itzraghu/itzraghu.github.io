$(document).ready(function(){

	$('#logBtn').on('click', function(e){
		e.stopPropagation();
		e.preventDefault();
		var loginType = $("#loginType option:selected").text();
		var username = $("#username").val();
		var password = $("#password").val();

		if( loginType === "Job Seeker" )
		{

			$.ajax({
				url:'php/jobseeker-login.php',
				type:'POST',
				data:{'username':username, 'password':password},
				success:function(data){
					if(data === "index") {
						window.location.replace("jobseeker-home.html");
					}
					else
					{
						swal('Website Says',data,'error');
					}
				}
			});
		}

		else if( loginType === "Recruiter" )
		{
			$.ajax({
				url:'recruiter/php/recruiter-login.php',
				type:'POST',
				data:{'username':username, 'password':password},
				success:function(data){
					if(data === "index") {
						window.location.replace('recruiter/recruiter-home.html');
					}
					else
					{
						swal('Website Says',data,'error');
					}
				}
			});
		}
		else{
			alert("login fail");
		}
	});
});