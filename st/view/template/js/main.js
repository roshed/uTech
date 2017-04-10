$(function () {
  $('[data-toggle="tooltip"]').tooltip();


$(document).on('click', '.function_click', function() {
  	var name = $(this).attr('alt');
  	var spr = $(this).attr('id');
	$.ajax({
	  method: "POST",
	  url: "loadAjax.php",
	  data:  { load: name },
	})
	  .done(function( msg ) {
	    $('#content').html(msg);
			if(spr==null){	
					tinymce.init({
					  selector: '#code',
					  height: 500,
					  theme: 'modern',
					  force_br_newlines : false,
					  force_p_newlines : false,
					  forced_root_block : '',
					  paste_auto_cleanup_on_paste : true,
						paste_remove_styles: true,
						paste_remove_styles_if_webkit: true,
						paste_strip_class_attributes: true,
						entity_encoding: 'raw',
					  plugins: [
					    'noneditable advlist autolink lists link image charmap print preview hr anchor pagebreak',
					    'searchreplace wordcount visualblocks visualchars code fullscreen',
					    'insertdatetime media nonbreaking save table contextmenu directionality',
					    'emoticons template paste textcolor colorpicker textpattern imagetools codesample toc'
					  ],
					  paste_preprocess : function(pl, o) {
					  //example: keep bold,italic,underline and paragraphs
					  //o.content = strip_tags( o.content,'<b><u><i><p>' );

					  // remove all tags => plain text
					  o.content = strip_tags( o.content,'' );
					},
					  toolbar1: 'undo redo | insert | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image',
					  toolbar2: 'print preview media | forecolor backcolor emoticons | codesample',
					  image_advtab: true,
					  templates: [
					    { title: 'Test template 1', content: 'Test 1' },
					    { title: 'Test template 2', content: 'Test 2' }
					  ],
					  content_css: [
					    '//fonts.googleapis.com/css?family=Lato:300,300i,400,400i',
					    '//www.tinymce.com/css/codepen.min.css'
					  ]
					 });
					tinyMCE.activeEditor.on('change', function(ed, e) {
					     $('.code').val(tinyMCE.activeEditor.getContent());
					 });
			} else {
				tinymce.EditorManager.editors = []; 
			}
	  });
  });
function strip_tags (str, allowed_tags)
{

    var key = '', allowed = false;
    var matches = [];    var allowed_array = [];
    var allowed_tag = '';
    var i = 0;
    var k = '';
    var html = ''; 
    var replacer = function (search, replace, str) {
        return str.split(search).join(replace);
    };
    // Build allowes tags associative array
    if (allowed_tags) {
        allowed_array = allowed_tags.match(/([a-zA-Z0-9]+)/gi);
    }
    str += '';

    // Match tags
    matches = str.match(/(<\/?[\S][^>]*>)/gi);
    // Go through all HTML tags
    for (key in matches) {
        if (isNaN(key)) {
                // IE7 Hack
            continue;
        }

        // Save HTML tag
        html = matches[key].toString();
        // Is tag not in allowed list? Remove from str!
        allowed = false;

        // Go through all allowed tags
        for (k in allowed_array) {            // Init
            allowed_tag = allowed_array[k];
            i = -1;

            if (i != 0) { i = html.toLowerCase().indexOf('<'+allowed_tag+'>');}
            if (i != 0) { i = html.toLowerCase().indexOf('<'+allowed_tag+' ');}
            if (i != 0) { i = html.toLowerCase().indexOf('</'+allowed_tag)   ;}

            // Determine
            if (i == 0) {                allowed = true;
                break;
            }
        }
        if (!allowed) {
            str = replacer(html, "", str); // Custom replace. No regexing
        }
    }
    return str;
}
$(document).on('keyup', '#code', function(e){
	         var value = $(this).val();
	         $('.code').val(value);
	});
});
