var FormWizard = function () {
	"use strict";
    var wizardContent = $('#wizard');
    var wizardForm = $('.form_validate');
    var numberOfSteps = $('.swMain > ul > li').length;
    var initWizard = function () {
        // function to initiate Wizard Form
        wizardContent.smartWizard({
            selected: 0,
            keyNavigation: false,
            onLeaveStep: leaveAStepCallback,
            onShowStep: onShowStep,
        });
        var numberOfSteps = 0;
        initValidators();
    };
    
     
    var initValidators = function () {
        
        $('#step1_form').validate({
            errorElement: "span", // contain the error msg in a span tag
            errorClass: 'help-block',
            ignore: ':hidden',
            highlight: function (element) {
                $(element).closest('.help-block').removeClass('valid');
                // display OK icon
                $(element).closest('.form-group').removeClass('has-success').addClass('has-error').find('.symbol').removeClass('ok').addClass('required');
                // add the Bootstrap error class to the control group
            },
            unhighlight: function (element) { // revert the change done by hightlight
                $(element).closest('.form-group').removeClass('has-error');
                // set error class to the control group
            },
            success: function (label, element) {
                label.addClass('help-block valid');
                // mark the current input as valid and display OK icon
                $(element).closest('.form-group').removeClass('has-error').addClass('has-success').find('.symbol').removeClass('required').addClass('ok');
            }
        });

    };
    var displayConfirm = function () {
       /* form = $('#wizard_container');
        $('.display-value', form).each(function () {
            var input = $('[name="' + $(this).attr("data-display") + '"]', form);
            if (input.attr("type") == "text" || input.attr("type") == "email" || input.is("textarea")) {
                $(this).html(input.val());
            } else if (input.is("select")) {
                $(this).html(input.find('option:selected').text());
            } else if (input.is(":radio") || input.is(":checkbox")) {
                $(this).html(input.filter(":checked").closest('label').text());
            }
        });*/
    };
    var onShowStep = function (obj, context) {
    	if(context.toStep == numberOfSteps){
    		$('.anchor').children("li:nth-child(" + context.toStep + ")").children("a").removeClass('wait');
            displayConfirm();
    	}
        $(".next-step").unbind("click").click(function (e) {
            e.preventDefault();
            wizardContent.smartWizard("goForward");
            return false;
        });
        $(".back-step").unbind("click").click(function (e) {
            e.preventDefault();
            wizardContent.smartWizard("goBackward");
            return false;
        });
        $(".go-first").unbind("click").click(function (e) {
            e.preventDefault();
            wizardContent.smartWizard("goToStep", 1);
            return false;
        });
        $(".finish-step").unbind("click").click(function (e) {
            e.preventDefault();
            onFinish(obj, context);
            return false;
        });
    };
    var leaveAStepCallback = function (obj, context) {
        return validateSteps(context.fromStep, context.toStep);
        // return false to stay on step and true to continue navigation
    };
    var onFinish = function (obj, context) {
        if (validateAllSteps()) {
            alert('form submit function');
            $('.anchor').children("li").last().children("a").removeClass('wait').removeClass('selected').addClass('done').children('.stepNumber').addClass('animated tada');
            //wizardForm.submit();
        }
    };
    var validateSteps = function (stepnumber, nextstep) {
        var isStepValid = false;
        
        
        if (numberOfSteps >= nextstep && nextstep > stepnumber) {
           
            if(stepnumber == 1)
            {
                // cache the form element selector
                if ($('#step1_form').valid()) { // validate the form
                    
                   
                    for (var i=stepnumber; i<=nextstep; i++){
                      $('.anchor').children("li:nth-child(" + i + ")").not("li:nth-child(" + nextstep + ")").children("a").removeClass('wait').addClass('done').children('.stepNumber').addClass('animated tada');
                    }
                    isStepValid = true;
                }
                else
                {
                    $('#step1_form').validate().focusInvalid();
                }

                if(isStepValid)
                {
                    $('#step1_form').submit();
                }
            }
            
            if(stepnumber == 2)
            {
                $('#step2_form').validate({
                    errorElement: "span", // contain the error msg in a span tag
                    errorClass: 'help-block',
                    ignore: ':hidden',
                    highlight: function (element) {
                        $(element).closest('.help-block').removeClass('valid');
                        // display OK icon
                        $(element).closest('.form-group').removeClass('has-success').addClass('has-error').find('.symbol').removeClass('ok').addClass('required');
                        // add the Bootstrap error class to the control group
                    },
                    unhighlight: function (element) { // revert the change done by hightlight
                        $(element).closest('.form-group').removeClass('has-error');
                        // set error class to the control group
                    },
                    success: function (label, element) {
                        label.addClass('help-block valid');
                        // mark the current input as valid and display OK icon
                        $(element).closest('.form-group').removeClass('has-error').addClass('has-success').find('.symbol').removeClass('required').addClass('ok');
                    }
                 });

                // cache the form element selector
                if ($('#step2_form').valid()) { // validate the form
                    isStepValid = true;
                }
                else
                {
                    $('#step2_form').validate().focusInvalid();
                }

                if(isStepValid)
                {
                    $('#step2_form').submit();
                }
            }

            if(stepnumber == 3)
            {

                var isStepValid = true;
                $('#step-3').find('table[role = presentation]').each(function(){
                    
                    if($(this).closest('fieldset').is(':visible') && $(this).css('display') == 'none' && $(this).closest('.cv_item').css('display') !== 'none'){
                        var document_name = $(this).closest('fieldset').find('legend').text();
                        toastr.error(document_name);
                        isStepValid = false;
                        return false;
                    }
                });
                
                if(isStepValid)
                {
                    $('#step3_form').submit();
                }
            }
            
            return isStepValid;

        } else if (nextstep < stepnumber) {
        	for (i=nextstep; i<=stepnumber; i++){
        		$('.anchor').children("li:nth-child(" + i + ")").children("a").addClass('wait').children('.stepNumber').removeClass('animated tada');
        	}
            
            return true;
        } 
    };
    var validateAllSteps = function () {
        var isStepValid = true;
        // all step validation logic
        return isStepValid;
    };
    return {
        init: function () {
            initWizard();
        }
    };
}();