jQuery(document).ready(function(){
	jQuery('tr.link-row').hover(function(){
		jQuery('.show-tag', this).toggle();
	});
});
