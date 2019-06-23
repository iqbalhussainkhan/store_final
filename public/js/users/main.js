
function resetPassword(id) {
    debugger;
    Swal.fire({
        title: "Are you sure?",
        text: "password Will Be Set to User123!",
        type: "warning",
        showCancelButton: true,
        confirmButtonText: "Reset",
    }).then(function(result) {
        if (result.value) {
        $.ajax({
            type: "GET",
            url:  '/users/resetPassword/'+id,
            success: function(data) {
                window.location = '/users/engineers';
            }
        });
    }
})


}


function deleteUser(id) {
    debugger;
    Swal.fire({
        title: "are you sure?",
        text: "user will be deleted !",
        type: "warning",
        showCancelButton: true,
        confirmButtonText: "sure",
    }).then(function(result){
        if(result.value){
            debugger;
            $.ajax({
                type: "GET",
                url:  '/users/deleteUser/'+id,
                success: function(data) {
                    window.location.reload();
                }
            });
        }

    });
}

$(".alert-success").fadeTo(2000, 500).slideUp(500, function(){
    $("#success-alert").slideUp(500);
});
$(".alert-danger").fadeTo(2000, 500).slideUp(500, function(){
    $("#success-alert").slideUp(500);
});