@extends('layouts/admin/master')
@section('title')لوحة التحكم | الدعم الفنى@endsection
@section('page_name')الدعم الفنى @endsection
@section('content')
    <div class="row">
        <div class="col-lg-5 p-2 ">
            <!--begin::Contacts-->
            <div class="card card-flush">
                <input type="hidden" id="room_id" value="">
                <!--begin::Card header-->
                <div class="card-header pt-7" id="">
                    <!--begin::Form-->
                    <form class="w-100 position-relative" autocomplete="off">
                        <!--begin::Icon-->
                        <!--begin::Svg Icon | path: icons/duotone/General/Search.svg-->
                        <span class="svg-icon svg-icon-2 svg-icon-lg-1 svg-icon-gray-500 position-absolute top-50 ms-5 translate-middle-y"
                              id="search"><!--onclick="searchFunction()"-->
														<svg xmlns="http://www.w3.org/2000/svg"
                                                             xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"
                                                             height="24px" viewBox="0 0 24 24" version="1.1">
															<g stroke="none" stroke-width="1" fill="none"
                                                               fill-rule="evenodd">
																<rect x="0" y="0" width="24" height="24"></rect>
																<path d="M14.2928932,16.7071068 C13.9023689,16.3165825 13.9023689,15.6834175 14.2928932,15.2928932 C14.6834175,14.9023689 15.3165825,14.9023689 15.7071068,15.2928932 L19.7071068,19.2928932 C20.0976311,19.6834175 20.0976311,20.3165825 19.7071068,20.7071068 C19.3165825,21.0976311 18.6834175,21.0976311 18.2928932,20.7071068 L14.2928932,16.7071068 Z"
                                                                      fill="#000000" fill-rule="nonzero"
                                                                      opacity="0.3"></path>
																<path d="M11,16 C13.7614237,16 16,13.7614237 16,11 C16,8.23857625 13.7614237,6 11,6 C8.23857625,6 6,8.23857625 6,11 C6,13.7614237 8.23857625,16 11,16 Z M11,18 C7.13400675,18 4,14.8659932 4,11 C4,7.13400675 7.13400675,4 11,4 C14.8659932,4 18,7.13400675 18,11 C18,14.8659932 14.8659932,18 11,18 Z"
                                                                      fill="#000000" fill-rule="nonzero"></path>
															</g>
														</svg>
													</span>
                        <!--end::Svg Icon-->
                        <!--end::Icon-->
                        <!--begin::Input-->
                        <input type="text" class="form-control form-control-solid px-15" name="search" id="searchBar"
                               onkeyup="searchFunction()" value="" placeholder="البحث عن مستخدم او مؤلف ...">
                        <!--end::Input-->
                    </form>
                    <!--end::Form-->
                </div>
                <!--end::Card header-->
                <!--begin::Card body-->
                <div class="card-body pt-5" id="">
                    <!--begin::List-->
                    <div class="scroll-y me-n5 pe-5 h-400px" data-kt-scroll="true"
                         data-kt-scroll-activate="{default: false, lg: true}" data-kt-scroll-max-height="auto"
                         data-kt-scroll-dependencies="#kt_header, #kt_toolbar, #kt_footer, #kt_chat_contacts_header"
                         data-kt-scroll-wrappers="#kt_content, #kt_chat_contacts_body" data-kt-scroll-offset="0px"
                         style="max-height: 25px;">
                        <style>
                            .myActiveRoom{
                                background-color: #ebebeb;
                                border-radius: 20px;
                            }
                        </style>
                    @foreach($users as $user)
                        <!--begin::User-->
                            <div class="flex-stack py-1 myRoom" style="cursor: pointer;display: flex" id="{{$user->id}}">
                                <!--begin::Details-->
                                <div class="d-flex align-items-center">
                                    <!--begin::Avatar-->
                                    @if($user->image != null)
                                        <div class="symbol symbol-35px symbol-circle">
                                            <img alt="Pic" src="{{get_file($user->image)}}" style="width: 20px" height="50px">
                                        </div>
                                    @else
                                        <div class="symbol symbol-45px symbol-circle">
                                            <span class="symbol-label bg-light-danger text-danger fs-6 fw-bolder">{{substr($user->name)}}</span>
                                            <div class="symbol-badge bg-success start-100 top-100 border-4 h-15px w-15px ms-n2 mt-n2"></div>
                                        </div>
                                @endif
                                <!--end::Avatar-->
                                    <!--begin::Details-->
                                    <div class="ms-5">
                                        <span class="fs-5 fw-bolder text-gray-900 mb-2 nameOfUser">{{$user->name}}</span>
                                        <div class="fw-bold text-gray-400">{{$user->email}}</div>
                                    </div>
                                    <!--end::Details-->
                                </div>
                                <!--end::Details-->
                                <!--begin::Lat seen-->
                                <div class="d-flex flex-column align-items-end ms-2">
                                    {{--                            <span class="text-muted fs-7 mb-1">{{$room->created_at->diffForHumans()}}</span>--}}
                                </div>
                                <!--end::Lat seen-->
                            </div>
                            <!--end::User-->
                            <!--begin::Separator-->
                            <div class="separator separator-dashed d-none"></div>
                            <!--end::Separator-->
                        @endforeach
                    </div>

                    <!--end::List-->
                </div>
                <!--end::Card body-->
            </div>
            <!--end::Contacts-->
        </div>
        <div class="col-lg-7 p-2 ">
            <!--begin::Messenger-->
            <div class="card" id="">
                <!--begin::Card header-->
                <div class="card-header" id="">
                    <!--begin::Title-->
                    <div class="card-title">
                        <!--begin::User-->
                        <div class="d-flex justify-content-center flex-column me-3">
                            <a class="fs-4 fw-bolder text-gray-900 text-hover-primary me-1 mb-2 lh-1">دردشة ابهار</a>
                            <!--begin::Info-->
                            <div class="mb-0 lh-1">
                                <span class="badge badge-success badge-circle w-10px h-10px me-1"></span>
                            </div>
                            <!--end::Info-->
                        </div>
                        <!--end::User-->
                    </div>
                    <!--end::Title-->
                </div>
                <!--end::Card header-->
                <!--begin::Card body-->
                <div class="card-body" id="">
                    <!--begin::Messages-->
                    <div class="scroll-y me-n5 pe-5 h-300px" data-kt-element="messages" id="chatBody"
                         data-kt-scroll="true" data-kt-scroll-activate="{default: false, lg: true}"
                         data-kt-scroll-max-height="auto"
                         data-kt-scroll-dependencies="#kt_header, #kt_toolbar, #kt_footer, #kt_chat_messenger_header, #kt_chat_messenger_footer"
                         data-kt-scroll-wrappers="#kt_content, #kt_chat_messenger_body" data-kt-scroll-offset="-2px">
                        <img style="width: 100%;height: 200px;object-fit: contain" src="{{asset('public/text.gif')}}">
                    </div>
                    <!--end::Messages-->
                </div>
                <!--end::Card body-->
                <!--begin::Card footer-->
                <div class="card-footer pt-4" id="">
                    <!--begin::Input-->
                    <textarea id="chat-input" class="form-control form-control-flush mb-3" rows="1"
                              data-kt-element="input" placeholder="اكتب رسالتك .."></textarea>
                    <!--end::Input-->
                    <!--begin:Toolbar-->
                    <div class="d-flex flex-stack">
                        <!--begin::Send-->
                        <button class="btn btn-primary" type="button" id="my-chat-submit" data-kt-element="send">ارسل
                        </button>
                        <!--end::Send-->
                    </div>
                    <!--end::Toolbar-->
                </div>
                <!--end::Card footer-->
            </div>
            <!--end::Messenger-->
        </div>
    </div>
@endsection
@section('js')
    <script src="{{asset('public/pusher/pusher.min.js')}}"></script>
    <script>
        $(function () {
            var INDEX = 0;
            $("#my-chat-submit").click(function (e) {
                e.preventDefault();
                var msg = $("#chat-input").val();
                if (msg.trim() == '') {
                    return false;
                }
                var room_id = $('#room_id').val();
                sendMessage(msg,room_id)
            });

            function sendMessage(msg,room_id) {
                var status = 500;
                $.post('{{url('admin/sendAdminMessage')}}', {
                    "msg": msg,
                    "room_id": room_id,
                    "_token": "{{csrf_token()}}"
                }, function (data) {
                    if (data.code == 200) {
                        generate_message(msg, 'self');
                    } else {
                        toastr.info("{{trans('front.error')}}")
                    }

                    if (data.status === 500)
                        toastr.info("{{trans('front.error')}}")

                })
            }


            function generate_message(msg, type) {
                var str = `
                    <div class="d-flex justify-content-end mb-10">
                        <div class="d-flex flex-column align-items-end">
                            <div class="d-flex align-items-center mb-2">
                                <div class="symbol symbol-35px symbol-circle">
                                    <img alt="Pic" src="{{asset('public/fav.jpg')}}">
                                </div>
                                <div class="ms-3">
                                    <a href="#" class="fs-5 fw-bolder text-gray-900 text-hover-primary me-1">ابهار</a>
                                    <span class="text-muted fs-7 mb-1">{{date('Y/m/d h:i A')}}</span>
                                </div>
                            </div>
                            <div class="p-5 rounded bg-light-primary text-dark fw-bold mw-lg-400px text-end" data-kt-element="message-text">${msg}</div>
                        </div>
                    </div>
            `;
                $("#chatBody").append(str);
                if (type == 'self') {
                    $("#chat-input").val('');
                }
                $("#chatBody").animate({scrollTop: $('#chatBody').prop("scrollHeight")}, 1000);
            }
        })
        // Enable pusher logging - don't include this in production
        Pusher.logToConsole = true;

        var pusher = new Pusher('149b2eaf2d2e63260c02', {
            cluster: 'mt1'
        });

        var channel = pusher.subscribe('chat-channel');
        channel.bind('chat-event', function (data) {
            // data = JSON.stringify(data);
            if (data.message) {
                getNewMessage(data.message)
            }
        });

        function getNewMessage(id) {
            $.get("{{url('admin/getNewMessage')}}", {"id": id}, function (data) {
                let room_id = $('#room_id').val()
                if (data.code == 200 && data.room_id == room_id) {
                    var str = `
                    <div class="d-flex justify-content-start mb-10">
                    <div class="d-flex flex-column align-items-start">
                        <div class="d-flex align-items-center mb-2">
                            <div class="me-3">
                                <span class="text-muted fs-7 mb-1">${data.time}</span>
                                <a href="#" class="fs-5 fw-bolder text-gray-900 text-hover-primary ms-1">${data.name}</a>
                            </div>
                            <div class="symbol symbol-35px symbol-circle">
                                <img alt="Pic" src="{{asset('public/fav.jpg')}}">
                            </div>
                        </div>
                        <div class="p-5 rounded bg-light-info text-dark fw-bold mw-lg-400px text-start" data-kt-element="message-text">${data.msg}</div>
                    </div>
                </div>
                `;
                    $("#chatBody").append(str);
                }
                $("#chatBody").animate({scrollTop: $('#chatBody').prop("scrollHeight")}, 1000);
            })
        }

        function searchFunction() {
            var input, filter, container, tr, td, i, txtValue;
            input = document.getElementById("searchBar");
            filter = input.value;
            // console.log($('.myRoom .ms-5 .nameOfUser')[0].innerText);
            for (i = 0; i < $('.myRoom').length; i++) {
                userName = $('.myRoom .ms-5 .nameOfUser')[i].innerText;
                if (userName) {
                    if (userName.includes(filter)) {
                        $('.myRoom')[i].style.display = "";
                    } else {
                        $('.myRoom')[i].style.display = "none";
                    }
                }
            }
        }

        $('.myRoom').on('click', function (e) {
            $('.myRoom').removeClass('myActiveRoom')
            $(this).addClass('myActiveRoom')
            $('#room_id').val(this.id)
            e.preventDefault();
            $.ajax({
                url: `{{route('getOldMessages')}}`,
                type: 'GET',
                data: {
                    'id': this.id
                },
                dataType: 'json',
                success: function (data) {
                    if (data.msg.length) {
                        // $('#user_id').val(data.msg[0]['from'])
                        $("#chatBody").empty();
                        let type = 0;
                        for (let i = 0; i < data.msg.length; i++) {
                            if (data.msg[i]['to'] == 0) {
                                type = 0;
                            } else {
                                type = 1;
                            }
                            checkMessageSender(type, data.msg[i]['message'], data.msg[i]['created_at'], data.name, data.photo)
                        }
                        $("#chatBody").animate({scrollTop: $('#chatBody').prop("scrollHeight")}, 1000);
                    } else {
                        $("#chatBody").empty();
                        $("#chatBody").append('<img style="width: 100%;height: 200px;object-fit: contain" src="{{asset('public/text.gif')}}">')
                    }
                },
                error: function (request, error) {
                    alert("عذرا لقد حدث مشكلة غير متوقعة");
                }
            });
        });

        function checkMessageSender(type, msg, time, name, image) {
            const d = new Date(time);
            var datestring = d.getFullYear() + "/" + (d.getMonth() + 1) + "/" + d.getDate() + " " +
                d.getHours() + ":" + d.getMinutes();
            if (type == 1) {
                var str = `
                     <div class="d-flex justify-content-end mb-10">
                        <div class="d-flex flex-column align-items-end">
                            <div class="d-flex align-items-center mb-2">
                                <div class="symbol symbol-35px symbol-circle">
                                    <img alt="Pic" src="{{asset('public/fav.jpg')}}">
                                </div>
                                <div class="ms-3">
                                    <span class="fs-5 fw-bolder text-gray-900 me-1">ابهار</span>
                                    <span class="text-muted fs-7 mb-1">${datestring}</span>
                                </div>
                            </div>
                            <div class="p-5 rounded bg-light-primary text-dark fw-bold mw-lg-400px text-end" data-kt-element="message-text">${msg}</div>
                        </div>
                    </div>
                `;
            } else {
                if (photo == null) {
                    photo = "{{ URL::asset('public/chat.png') }}"
                }
                str = `
                    <div class="d-flex justify-content-start mb-10">
                    <div class="d-flex flex-column align-items-start">
                        <div class="d-flex align-items-center mb-2">
                            <div class="me-3">
                                <span class="text-muted fs-7 mb-1">${datestring}</span>
                                <span class="fs-5 fw-bolder text-gray-900 ms-1">${name}</span>
                            </div>
                            <div class="symbol symbol-35px symbol-circle">
                                <img alt="Pic" src="${image}">
                            </div>
                        </div>
                        <div class="p-5 rounded bg-light-info text-dark fw-bold mw-lg-400px text-start" data-kt-element="message-text">${msg}</div>
                    </div>
                </div>
                `
            }
            $("#chatBody").append(str);

        }
    </script>

@endsection
