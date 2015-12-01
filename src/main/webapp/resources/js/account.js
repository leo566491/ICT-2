/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var acnt = {};
acnt.warnmsg = function (msg, alert) {
    return '<div class="alert alert-' + alert + '"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>' + msg + '</div>';
};

acnt.setMenu = function (type) {
    if (type === "visitor") {
        $('.vis_menu').show();
        $('.com_menu').hide();
        $('.cand_menu').hide();
    } else if (type === "company") {
        $('.vis_menu').hide();
        $('.com_menu').show();
        $('.cand_menu').hide();
    } else {
        $('.vis_menu').hide();
        $('.com_menu').hide();
        $('.cand_menu').show();
    }

};

acnt.register = function (formId, path, confirmId, warningBox) {
    var formObj = acnt.getFormObj($(formId));
    if (formObj['pass'] !== $(confirmId).val()) {
        $(warningBox).html(acnt.warnmsg('Password and repeat password mismatch', 'warning'));
        return false;
    }
    var attr;
    for (attr in formObj) {
        if (formObj[attr] === '') {
            $(warningBox).html(acnt.warnmsg('Please enter all the attrubutes', 'info'));
            return false;
        }
    }
    $.post(path, formObj, function (data) {

        if (data === "suuccess") {
            $('#register').fadeOut(300);
            $("body").removeClass("no-scroll");
            $("#login").fadeIn(300);
            $("body").addClass("no-scroll");
            $('#login-warning').html(acnt.warnmsg('Congratulation! You have registered successfully, please login', 'success'));
        } else {
            $(warningBox).html(acnt.warnmsg('Sorry, your email are already being used', 'danger'));
        }
    });
};

acnt.getFormObj = function (f) {
    var o = {};
    var a = f.serializeArray();
    $.each(a, function () {
        if (o[this.name]) {
            if (!o[this.name].push) {
                o[this.name] = [o[this.name]];
            }
            o[this.name].push(this.value || '');
        } else {
            o[this.name] = this.value || '';
        }
    });
    return o;
};
/*
acnt.flapper = function () {
    var flag = false;
    return function (action) {
        flag = !flag;
        action.call(flag);
    };
};
acnt.edit = acnt.flapper(function (flag) {
    console.log(flag);
});
*/
$('#login-btn').click(function (e) {
    e.preventDefault();
    var email = $('#login-email').val();
    var pass = $('#login-password').val();
    if (email === "" || pass === "") {
        $('#login-warning').html(acnt.warnmsg('Please enter your Email and password!', 'warning'));
        return false;
    }
    $.post("/login", {"email": email, "pass": pass}, function (data) {
        var res = JSON.parse(data);
        if (res['state'] === "success") {
            $('#login').fadeOut(300);
            $("body").removeClass("no-scroll");
            acnt.setMenu(res['type']);
        } else {
            $('#login-warning').html(acnt.warnmsg('Email or password incorrect!', 'danger'));
        }
    });
});

$('.logout').click(function (e){
    $.get("/logout",function(){
        alert();
    });
});

$('#register-per-btn').click(function (e) {
    e.preventDefault();
    acnt.register('#register-per', "/reg/person", '#register-per-password2', '#reg-personal-warning');
});

$('#register-com-btn').click(function (e) {
    e.preventDefault();
    acnt.register('#register-com', "/reg/company", '#register-com-password2', '#reg-company-warning');
});

$.post("/info", {}, function (data) {
    var res = JSON.parse(data);
    acnt.setMenu(res['type']);
});

