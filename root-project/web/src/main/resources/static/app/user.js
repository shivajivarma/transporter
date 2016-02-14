$(function () {

    window.userApp = {
	  init: function(){
		  this._$settings = {};
          this._$settings['username'] = $('#inputUsername');
          this._$settings['name'] = $('#inputName');
          this._$settings['dob'] = $('#inputDOB');
          this._$settings['gender'] = $('#inputGender input:radio');
          this._$settings['email'] = $('#inputEmail');
          this._$settings['mobile'] = $('#inputMobile');

          this._$name = $('.user-name');

          this.attachListeners();
	  },
      load: function(username){
		  var that = this;
          $.getJSON( "/rest/passengers/"+username, function( data ) {
              that.user = data;
              if(that.user.name){
                  that._$settings['name'].val(that.user.name);
                  that._$name.text(that.user.name);
              }
              that._$settings['dob'].val(new moment(that.user.dob).format('DD/MM/YYYY'));
              that._$settings['gender'].filter('[value='+that.user.gender+']').iCheck('check');
              that._$settings['email'].val(that.user.email);
              that._$settings['mobile'].val(that.user.mobile);
          });
      },
	  attachListeners: function(){
          var that = this;
          $('#settings form').on('submit', function(){

              var postData = {};
              postData.username = that._$settings['username'].val();
              postData.name = that._$settings['name'].val();
              postData.dob = new moment(that._$settings['dob'].val(), 'DD/MM/YYYY').unix() * 1000;
              postData.gender = $("#inputGender .checked input").val()
              postData.email = that._$settings['email'].val();
              postData.mobile = that._$settings['mobile'].val();

              $.ajax({
                  url: '/rest/passengers',
                  type: 'POST',
                  dataType: 'json',
                  contentType: "application/json; charset=utf-8",
                  success: function (data) {
                      alert("updated");
                  },
                  data: JSON.stringify(postData)
              });
          });
	  }
    };

	userApp.init();

});