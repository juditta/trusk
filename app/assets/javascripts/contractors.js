$().ready(function () 

{  

// Sorting and pagination links.
  $('#contractors .pagination a').live('click', 
  	function () {  
	    $.getScript(this.href);  
	    return false;  
  	}
  );  

 // Search form.  
  $('#contractors_search').submit(function () {  
    $.get(this.action, $(this).serialize(), null, 'script');  
    return false;  
  });  

  $('#contractors_search input').keyup(function () {  
  $.get($('#contractors_search').attr('action'), 
    $('#contractors_search').serialize(), null, 'script');  
  return false;  
  });  

// BOOKMARKS

	$("#bookmarks li a").click(function()
	{
	$("#bookmarks .active").removeClass("active");
	$(this).parent().addClass("active");
	var element_index = $("#bookmarks a").index(this);
	$("#content div:visible").hide();
	$("#content div").eq(element_index).show();
	return false;
	});

});