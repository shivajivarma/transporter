$(function () {

    var rowTemplate = $('#mytrips-row-template').html();
    var tableTemplate = $('#mytrips-table-template').html();

    window.userApp = {
        init: function () {
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
        load: function (username, page) {
            var that = this;
            this.username = username;
            $.getJSON("/rest/passengers/" + username, function (data) {
                that.user = data;
                if (that.user.name) {
                    that._$settings['name'].val(that.user.name);
                    that._$name.text(that.user.name);
                }
                that._$settings['dob'].val(new moment(that.user.dob).format('DD/MM/YYYY'));
                that._$settings['gender'].filter('[value=' + that.user.gender + ']').iCheck('check');
                that._$settings['email'].val(that.user.email);
                that._$settings['mobile'].val(that.user.mobile);
            });
            if(page === 'mytrips'){
                this.loadMytrips(username);
            } else{
                this.loadDashboard(username);
            }
        },
        loadDashboard: function(username){
            var that = this,
                cal = $("#calendar").datepicker(),
                fromSelect = $('#from-select2');

            cal.datepicker('update', moment().format('MM-DD-YYYY'));

            $.getJSON("/rest/locations", function (locations) {
                that.locations = $.grep(locations, function( location ) {
                    return location.enabled;
                });
                fromSelect.html('');
                $.each(that.locations, function(i, location){
                    $('#from-select2').append('<option value="'+location.id+'">'+location.name+'</option>')
                });
                fromSelect.select2();
                that.populateLocations();
            });

            function filterGlobal() {
                $('#mytrips-table').DataTable().search(
                    $('#global_filter').val(),
                    false,
                    false
                ).draw();
            }

            $('#global_filter').on('keyup click', function () {
                filterGlobal();
            });
        },
        populateLocations: function(){
            var that = this,
                toSelect = $('#to-select2');
            var from = parseInt($('#from-select2').val());


            toSelect.html('');
            $.each(this.locations, function(i, location){
                if(from !== location.id)
                    $('#to-select2').append('<option value="'+location.id+'">'+location.name+'</option>');
            });
            toSelect.select2();
        },
        loadMytrips: function(username){
            var that = this;

            function filterGlobal() {
                $('#mytrips-table').DataTable().search(
                    $('#global_filter').val(),
                    false,
                    false
                ).draw();
            }

            $('#global_filter').on('keyup click', function () {
                filterGlobal();
            });

            this.loadTable();
        },
        loadTable : function(){
            var that = this;

            $('#mytrips-table').html(Mustache.render(tableTemplate, {}));

            $.getJSON("/rest/passengers/" + this.username + "/reservations", function (data) {

                that.reservations = data;

                $.each(that.reservations, function (id, reservation) {
                    if(reservation.trip.dt !== null) reservation.trip.dt = new moment(reservation.trip.dt).format('DD/MM/YYYY')
                    var html = Mustache.render(rowTemplate, reservation);
                    $('#mytrips-table tbody').append(html);
                });

                $('#mytrips-table table').DataTable({
                    "paging": true,
                    "lengthChange": false,
                    "searching": true,
                    "ordering": true,
                    "info": true,
                    "autoWidth": false
                });

                that.blueButtons();
            });
        },

        fetchTrips: function(){
            var that = this;
            var dt = new moment($('#calendar').data('datepicker').getDate('date')).format('DDMMYYYY');
            var from = $('#from-select2').val();
            var to = $('#to-select2').val();

            if(!isNaN(parseInt(dt))){

                $('#mytrips-table').html(Mustache.render(tableTemplate, {}));

                $.getJSON("/rest/trips/"+from+"/"+to+"/"+dt, function (data) {

                    that.reservations = data;

                    $.each(that.reservations, function (id, reservation) {
                        var html = Mustache.render(rowTemplate, reservation);
                        $('#mytrips-table tbody').append(html);
                    });

                    $('#mytrips-table table').DataTable({
                        "paging": true,
                        "lengthChange": false,
                        "searching": true,
                        "ordering": true,
                        "info": true,
                        "autoWidth": false
                    });

                    that.blueButtons();
                });
            } else {
                alert('Please select date');
            }
        },


        attachListeners: function () {
            var that = this;
            $('#settings form').on('submit', function (event) {
                event.preventDefault();

                var postData = {};
                postData.id = that.user.id;
                postData.username = that.user.username;
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

            $('#cancelReservation').on('click', function () {

                var data = [];

                $(".trip-tickets .checked input[type='checkbox']").each(function(){
                    var id = parseInt($(this).val());
                    if(!isNaN(id)){
                        var record = {};
                        record.id = id;
                        data.push(record);
                    }
                });

                $.ajax({
                    url: '/rest/reservations',
                    type: 'DELETE',
                    dataType: 'text',
                    contentType: "application/json; charset=utf-8",
                    data: JSON.stringify(data)
                }).done(function (data) {
                    that.loadTable();
                });
            });



            $('#from-select2').on('change', function(){
                that.populateLocations();
            });

            $('form#enquire').on('submit', function (e) {
                e.preventDefault();
                that.fetchTrips();
            });

            $(document).on('click', '#bookTicket', function(){

                $('.trip-tickets input[type=checkbox]:checked').each(function(index, element){
                    var saveObj = {
                        trip: element.value,
                        username: that.username
                    };

                    $.ajax({
                        url: '/rest/reservations',
                        type: 'POST',
                        dataType: 'text',
                        contentType: "application/json; charset=utf-8",
                        data: JSON.stringify(saveObj)
                    }).done(function (data) {
                        that.fetchTrips();
                    });

                });

            });

        },
        blueButtons: function () {
            //Enable iCheck plugin for checkboxes
            //iCheck for checkbox and radio inputs
            $('.trip-tickets input[type="checkbox"]').iCheck({
                checkboxClass: 'icheckbox_flat-blue',
                radioClass: 'iradio_flat-blue'
            });

            //Enable check and uncheck all functionality
            $(".checkbox-toggle").click(function () {
                var clicks = $(this).data('clicks');
                if (clicks) {
                    //Uncheck all checkboxes
                    $(".trip-tickets input[type='checkbox']").iCheck("uncheck");
                    $(".fa", this).removeClass("fa-check-square-o").addClass('fa-square-o');
                } else {
                    //Check all checkboxes
                    $(".trip-tickets input[type='checkbox']").iCheck("check");
                    $(".fa", this).removeClass("fa-square-o").addClass('fa-check-square-o');
                }
                $(this).data("clicks", !clicks);
            });

        }
    };

    userApp.init();

});