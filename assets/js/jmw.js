// simpan data dan juga upload file
function simpan(url,data){
    $.ajax({
      url: url,
      type: 'post',
      dataType:'json',
      contentType : false,
      processData : false, // Mencegah jQuery merubah val ke string
      data:new FormData($(data)[0]),
      encode:true,
      success: function(data){
        Swal.fire(
          'Success!',
          'Data berhasil diperbarui',
          'success'
        )
        // if(!data.success){
        //   if(data.errors){
        //       alert("Data yang diisi tidak lengkap !",data.errors);
        //       return false;
        //   }
        // }else {
        //     alert("Good!", "You Save the data!", "success");
        //     // if(table != undefined){
        //     //       table.ajax.reload();
        //     //  }
        // }
      }
    });
}

function loadingSweet(){
  let timerInterval
        Swal.fire({
        html: '<h3>Sedang menyimpan data</h3>',
        timer: 600000,
        timerProgressBar: true,
        allowOutsideClick: false,
        allowEscapeKey: false,
        didOpen: () => {
            Swal.showLoading()
        },
        willClose: () => {
            clearInterval(timerInterval)
        }
        }).then((result) => {
        /* Read more about handling dismissals below */
        if (result.dismiss === Swal.DismissReason.timer) {
            console.log('I was closed by the timer')
        }
        })
}