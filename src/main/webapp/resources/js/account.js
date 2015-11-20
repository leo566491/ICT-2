/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
//console.log('hello');
var acnt = {};
acnt.warnmsg = function (msg, alert) {
    return '<div class="alert alert-' + alert + '"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>' + msg + '</div>';
};

$('#login-btn').click(function (e) {
    e.preventDefault();
    if ($('#login-email').val() === '' || $('#login-password').val() === '') {
        $('#login-warning').html(acnt.warnmsg('Please Enter your Email and password!', 'danger'));
    }
});

$('#register-per-btn').click(function (e) {
    e.preventDefault();
    console.log('per');
});

$('#register-com-btn').click(function (e) {
    e.preventDefault();
    console.log('com');
});