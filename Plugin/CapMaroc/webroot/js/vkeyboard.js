var keyboard_open=false;
$(document).ready(function(){
    
    $("textarea.vkeyboard,input.vkeyboard").each(function() {
        $(this).addClass("vkeyboard_float");
        target_id=$(this).attr('id');
        $(this).after("<span rel="+target_id+" class=\"keyboard-icon\"></span><div class=\"clear\"></div>");
    });
    $('body').after('<div id="keyboard">'
        +'<div class="keyboard_close"></div>'
        +'<ul class="keyboard">' 
        +'<li class="symbol"><span class="off">`</span><span class="on">~</span></li>'
        +'<li class="symbol"><span class="off">1</span><span class="on">!</span></li>'

        +'<li class="symbol"><span class="off">2</span><span class="on">@</span></li>'
        +'<li class="symbol"><span class="off">3</span><span class="on">#</span></li>'
        +'<li class="symbol"><span class="off">4</span><span class="on">$</span></li>'
        +'<li class="symbol"><span class="off">5</span><span class="on">%</span></li>'
        +'<li class="symbol"><span class="off">6</span><span class="on">^</span></li>'

        +'<li class="symbol"><span class="off">7</span><span class="on">&amp;</span></li>'
        +'<li class="symbol"><span class="off">8</span><span class="on">*</span></li>'
        +'<li class="symbol"><span class="off">9</span><span class="on">(</span></li>'
        +'<li class="symbol"><span class="off">0</span><span class="on">)</span></li>'
        +'<li class="symbol"><span class="off">-</span><span class="on">_</span></li>'

        +'<li class="symbol"><span class="off">=</span><span class="on">+</span></li>'
        +'<li class="delete lastitem">delete</li>'
        +'<li class="tab">tab</li>'
        +'<li class="letter">ش</li>'
        +'<li class="letter">س</li>'
        +'<li class="letter">ز</li>'

        +'<li class="letter">ر</li>'
        +'<li class="letter">ذ</li>'
        +'<li class="letter">د</li>'
        +'<li class="letter">خ</li>'
        +'<li class="letter">ح</li>'
        +'<li class="letter ">ج</li>'

        +'<li class="letter">ث</li>'
        +'<li class="letter">ت</li>'
        +'<li class="letter">ب</li>'
        +'<li class="letter ">ا</li>'
        +'<li class="letter clear">م</li>'
        +'<li class="letter">ل</li>'

        +'<li class="letter">ك</li>'
        +'<li class="letter">ق</li>'
        +'<li class="letter">ف</li>'
        +'<li class="letter">غ</li>'
        +'<li class="letter">ع</li>'
        +'<li class="letter">ظ</li>'

        +'<li class="letter">ط</li>'
        +'<li class="letter">ض</li>'
        +'<li class="letter">ص</li>'
        +'<li class="symbol"><span class="off">;</span><span class="on">:</span></li>'
        +'<li class="symbol"><span class="off">\'</span><span class="on">&quot;</span></li>'
        +'<li class="return lastitem">return</li>'

        +'<li class="letter clear">ى</li>'
        +'<li class="letter">ئ</li>'
        +'<li class="letter">ؤ</li>'
        +'<li class="letter">ة</li>'
        +'<li class="letter">ء</li>'
        +'<li class="letter">ي</li>'
        +'<li class="letter">و</li>'
        +'<li class="letter">ه</li>'
        +'<li class="letter">ن</li>'
        +'<li class="symbol"><span class="off">,</span><span class="on">&lt;</span></li>'
        +'<li class="symbol"><span class="off">.</span><span class="on">&gt;</span></li>'
        +'<li class="symbol"><span class="off">/</span><span class="on">?</span></li>'

        +'<li class="right-shift lastitem">shift</li>'
        +'<li class="space lastitem">&nbsp;</li>'
        +'</ul>'
        +'</div>'
        );
    $('#keyboard').hide();
    var write=null,
    shift = false,
    capslock = false;
    $(".keyboard-icon").click(function(e) {
        //alert('here');
        if(keyboard_open) keyboard_open=false; else keyboard_open=true;
        input_id=$(this).attr('rel');
        write = $('#'+input_id);
        callerTopPosition = write.offset().top;
        //alert(callerTopPosition);
        callerleftPosition = write.offset().left;
        callerWidth =  write.width()
        callerHeight =  write.height()
        inputHeight = $('#keyboard').height()

        callerleftPosition = callerleftPosition - callerWidth +20
        callerTopPosition = callerTopPosition  +callerHeight + 10
	
        $('#keyboard').css({
            top:callerTopPosition,
            left:callerleftPosition
        //opacity:0
        })
        $('#keyboard').toggle();
        write.focus();
        e.preventDefault();
    });
    $(".keyboard_close").click(function() {
        $(this).parent().hide();
        keyboard_open=false;
    });
    // makes the keyboard draggable
    $("#keyboard").draggable();	
    $('#keyboard li').bind('click',function(e){
        if(write.attr('readonly')) return false;
        var $this = $(this),
        character = $this.html(); // If it's a lowercase letter, nothing happens to this variable
		
        // Shift keys
        if ($this.hasClass('left-shift') || $this.hasClass('right-shift')) {
            // $('.letter').toggleClass('uppercase');
            $('.symbol span').toggle();
			
            shift = (shift === true) ? false : true;
            capslock = false;
            return false;
        }
		
        // Caps lock
        if ($this.hasClass('capslock')) {
            // $('.letter').toggleClass('uppercase');
            capslock = true;
            return false;
        }
		
        // Delete
        if ($this.hasClass('delete')) {
            var html = write.html();
			
            write.html(html.substr(0, html.length - 1));
            return false;
        }
		
        // Special characters
        if ($this.hasClass('symbol')) character = $('span:visible', $this).html();
        if ($this.hasClass('space')) character = ' ';
        if ($this.hasClass('tab')) character = "\t";
        if ($this.hasClass('return')) character = "\n";
		
        // Uppercase letter
        if ($this.hasClass('uppercase')) character = character.toUpperCase();
		
        // Remove shift once a key is clicked.
        if (shift === true) {
            $('.symbol span').toggle();
            // if (capslock === false) $('.letter').toggleClass('uppercase');
			
            shift = false;
        }
		
        // Add the character
        //alert(write.html() + character);
        write.val(write.val() + character);
    });
    var car;
    $('.vkeyboard').bind('keyup',function(e){
        if($(this).attr('readonly')) return false;
        if(keyboard_open)
            translation($(this));
    });
    translation=function(write){
        car = write.val(); 
        car = car.replace(/’/g, "\'");
        car = car.replace(/[aâàā]/g, "ا");
        car = car.replace(/اا/g, "آ");  
        car  = car.replace(/b/g, "ب");
        car  = car.replace(/ب'/g, "پ");
        car  = car.replace(/p/g, "پ");
        car  = car.replace(/t/g, "ت");
        car  = car.replace(/ت'/g, "ث");
        car  = car.replace(/ṯ/g, "ث");
        car  = car.replace(/[jǧ]/g, "ج");
        car  = car.replace(/ج'/g, "چ");
        car  = car.replace(/c/g, "س");
        car  = car.replace(/[HḥḤ]/g, "ح");
        car  = car.replace(/ح'/g, "خ");
        car  = car.replace(/[xẖK]/g, "خ");
        car  = car.replace(/d/g, "د");
        car  = car.replace(/د'/g, "ذ");
        car  = car.replace(/ḏ/g, "ذ");
        car  = car.replace(/r/g, "ر");
        car  = car.replace(/ر'/g, "ز");
        car  = car.replace(/z/g, "ز");
        car  = car.replace(/s/g, "س");
        car  = car.replace(/س'/g, "ش");
        car  = car.replace(/š/g, "ش");
        car  = car.replace(/[Sṣ]/g, "ص");
        car  = car.replace(/ص'/g, "ض");
        car  = car.replace(/[Dḍ]/g, "ض");
        car  = car.replace(/[Tṭ]/g, "ط");
        car  = car.replace(/ط'/g, "ظ");
        car  = car.replace(/[Zẓ]/g, "ظ");
        car  = car.replace(/[gʿ]/g, "ع");
        car  = car.replace(/ع'/g, "غ");
        car  = car.replace(/ġ/g, "غ");
        car  = car.replace(/f/g, "ف");
        car  = car.replace(/ف'/g, "ڤ");
        car  = car.replace(/v/g, "ڢ");
        car  = car.replace(/q/g, "ق");
        car  = car.replace(/ق'/g, "ڨ");
        car  = car.replace(/k/g, "ك");
        car  = car.replace(/ك'/g, "ڭ");
        car  = car.replace(/l/g, "ل");
        car  = car.replace(/m/g, "م");
        car  = car.replace(/n/g, "ن");
        car  = car.replace(/h/g, "ه");
        car  = car.replace(/ه'/g, "ة");
        car  = car.replace(/[wouôûōū]/g, "و");
        car  = car.replace(/[yieîī]/g, "ي");
        car  = car.replace(/[YIE]/g, "ى");
        car  = car.replace(/-/g, "ء");
        car  = car.replace(/ʾ/g, "ء");
        car  = car.replace(/وءء/g, "ؤ");
        car  = car.replace(/يءء/g, "ئ");
        car  = car.replace(/اءء/g, "إ");
        car  = car.replace(/I/g, "إ");
        car  = car.replace(/A/g, "إ");
        car  = car.replace(/ءا/g, "أ");
        car  = car.replace(/_/g, "ـ");
        car  = car.replace(/\?/g, "؟");
        car  = car.replace(/\;/g, "؛");
        car  = car.replace(/\,/g, "،");
        write.val(car);
        //alert(car);
        write.focus();
        write.scrollTop=write.scrollHeight;
    }

});