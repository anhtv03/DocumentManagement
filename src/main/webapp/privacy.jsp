<%-- 
    Document   : privacy
    Created on : Nov 1, 2023, 8:34:15 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Privacy Policy</title>
        <link rel="icon" type="image/x-icon" href="asets/img/book-icon.png">
        <!--=================== Bootstrap CSS ========================== -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
        <link rel="stylesheet" href="asets/css/profile.css">
        <style>
            #terms #main{
                margin-top: 110px;
                margin-bottom: 60px;
            }
            #terms .body{
                background-color: #F0F0F0;
            }

            #terms .all{
                margin-top: 50px;
                /*font-family: sans-serif;*/
                display: flex;
                justify-content: center;
                align-items: center;
                text-align: justify;
            }
            #terms #main .container{
                width: 70%;
                background-color: white;
                padding: 15px 40px;
                box-sizing: border-box;
                border-radius: 20px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
            }
            #terms h1{
                font-family: 'Baloo';
                color: rgb(170, 5, 5);
                opacity: 80%;
                border-bottom: 1px solid grey;
                margin: 0px;
                text-align: center;
                margin-left: 40px;
            }
            #terms h2{
                font-family: 'Baloo';
                font-size: 22px;
                font-weight: bolder;
                margin: 0px;
                margin-top: 30px;

            }
            #terms li, p{
                font-size: 15px;
                opacity: 80%;
                margin: 5px 0px;
                line-height: 1.2;
            }
        </style>
    </head>
    <body>
        <div id="terms">
            <!--=================== header ========================== -->
            <div id="header">
                <!--=================== Begin: navbar ========================== -->
                <nav class="navbar navbar-expand-sm navbar-light bg-light fixed-top">
                    <div class="container">
                        <!-- Begin: logo -->
                        <div class="navbar-home col-md-2">
                            <a class="navbar-brand" href="home">
                                <img src="asets/img/logo_dragon.png" width="35px" height="35px" alt="Logo" />
                                VA<span style="color: #00A888">DocS</span>
                            </a>
                        </div>
                        <!-- End:logo -->
                        <!--menu-->
                        <button class="navbar-toggler" type="button" data-toggle="collapse"
                                data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                                aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <!-- End: search -->
                        <div class="col-md-8"></div>

                        <!-- Begin: user -->
                        <div class="user col-md-2">
                            <div class="user-header pointer relative js-user" onclick="toggleUserMenu()">
                                <span class="relative float-left mr-2 h-8 w-8">
                                    <img src="https://media.store123doc.com/images/default/user_small.png" alt="user">
                                </span>
                                <a class="user-name" href="javascript:void(0)">${sessionScope.nameUser}</a>
                            </div>
                            <div class="user-modal absolute js-modal">
                                <ul class="user-modal-sub">
                                    <li><a href="overview">Dashboard</a></li>
                                    <li><a href="profile">Profile</a></li>
                                    <li><a href="management">Doc Management</a></li>
                                    <li><a href="login?action=logout">LogOut</a></li>
                                </ul>
                            </div>
                        </div>
                        <!-- End: user -->
                    </div>
                </nav>
                <!--=================== End: navbar ========================== -->
            </div>

            <!--=================== body ========================== -->
            <div id="main">
                <div class="container">
                    <div class="main">
                        <div class="subtitle-section">
                            <div class="subtitle">
                                CHÍNH SÁCH BẢO MẬT THÔNG TIN NGƯỜI DÙNG
                                <br>
                            </div>
                        </div>
                        <br>
                        <div class="date">
                            <span>Ngày cập nhật: 01/07/2023</span> <br>
                            <span>Ngày hiệu lực: 01/07/2023</span>
                        </div>
                        <hr>
                        <div class="content">
                            Sự riêng tư của bạn là yếu tố quan trọng đối với TopCV.vn (gọi tắt là TopCV). Vui lòng đọc kỹ Chính Sách
                            Bảo Mật Thông Tin Người Dùng này
                            (Sau đây gọi tắt là “Chính Sách Bảo Mật”) vì nó là một phần của Điều Khoản Sử Dụng nhằm quản lý việc sử
                            dụng các Dịch vụ trên trang web
                            TopCV. Thông Báo Chính Sách Bảo Mật này giải thích:
                            <ul>
                                <li>
                                    Loại thông tin cá nhân của bạn được TopCV xử lý khi bạn sử dụng các Dịch vụ của TopCV.
                                </li>
                                <li>
                                    Cách thức TopCV xử lý thông tin cá nhân của bạn khi bạn sử dụng các Dịch vụ của TopCV.
                                </li>
                                <li>
                                    Mục đích TopCV thu thập và xử lý thông tin cá nhân của bạn.
                                </li>
                                <li>
                                    Quyền truy cập và chỉnh sửa thông tin cá nhân của bạn.
                                </li>
                                <li>
                                    Các bên thứ ba mà TopCV có thể công bố thông tin cá nhân của bạn.
                                </li>
                                <li>
                                    Tính bắt buộc hoặc tự nguyện đối với việc cung cấp thông tin cá nhân và hậu quả khi bạn từ chối
                                    cung cấp thông tin cá nhân trong
                                    trường hợp bắt buộc.
                                </li>
                                <li>
                                    Cách thức TopCV giữ gìn sự bảo mật và an ninh về thông tin cá nhân của bạn.
                                </li>
                            </ul>
                            <p>Chính Sách Bảo Mật này sẽ áp dụng cho việc sử dụng các Dịch vụ của TopCV ngay sau khi TopCV đã gửi
                                thông báo và được bạn chấp thuận.
                                Nếu bạn không muốn chấp nhận các Điều khoản của Chính Sách Bảo Mật này, bạn không nên tiếp tục sử
                                dụng các Dịch vụ của TopCV. Nếu bạn
                                tiếp tục sử dụng Dịch vụ của TopCV, bạn đã thể hiện sự đồng ý đối với các ràng buộc tại các Điều
                                khoản của Chính Sách Bảo Mật này.</p>
                            <h2>1. THU THẬP THÔNG TIN CÁ NHÂN</h2>
                            <ol>
                                <li>
                                    Khi đăng ký Dịch vụ của TopCV
                                    <ul>
                                        <li>Khi đăng ký bất cứ Dịch vụ nào của TopCV, bạn sẽ được yêu cầu cung cấp một số thông tin
                                            cá
                                            nhân nhất định để thiết lập
                                            tài khoản của bạn, để xác thực danh tính theo quy định của pháp luật hiện hành (bao gồm
                                            cả các lần cập nhật).
                                        </li>
                                        <li>Bất cứ thông tin cá nhân nào do TopCV yêu cầu được đánh dấu “Bắt buộc”, bạn phải cung
                                            cấp và đồng ý để TopCV xử
                                            lý thông tin này. Nếu bạn không đồng ý cung cấp thông tin cá nhân này và/hoặc không đồng
                                            ý để chúng tôi xử lý thông
                                            tin theo quy định tại Chính Sách Bảo Mật này, TopCV sẽ không thể cung cấp các dịch vụ
                                            liên quan và việc đăng ký dịch
                                            vụ của bạn sẽ bị từ chối.
                                        </li>
                                    </ul>
                                </li>
                                <li>Từ việc sử dụng các Dịch vụ của TopCV của bạn
                                    <ul>
                                        <li>Chúng tôi thu thập thông tin cá nhân trực tiếp từ bạn khi bạn chọn lựa tham gia vào bất
                                            kỳ Dịch vụ nào của TopCV. Dưới
                                            đây là các ví dụ về thông tin cá nhân mà TopCV có thể thu thập trực tiếp từ bạn: tuổi,
                                            ngày sinh, điện thoại cố định hoặc
                                            số điện thoại di động, hình ảnh cá nhân, học vấn, sở thích cá nhân, kinh nghiệm làm
                                            việc, lịch sử truy cập, tìm việc, ứng
                                            tuyển, các thông tin khác liên quan đến Hồ sơ việc làm (CV) của bạn, các thông tin liên
                                            quan đến việc sử dụng các công
                                            cụ tính lương, bài thi trắc nghiệm:
                                            <ul>
                                                <li style="list-style: none">+ Nếu bạn lựa chọn để thêm người giới thiệu trong hồ
                                                    sơ, TopCV sẽ yêu cầu tên, số điện thoại, email, vị
                                                    trí công việc và các thông tin cụ thể khác của những người này. Thông tin này sẽ
                                                    được đính kèm trong hồ
                                                    sơ xin việc của bạn và nhà tuyển dụng có thể liên lạc với người giới thiệu hồ sơ
                                                    đó để lấy thông tin tham
                                                    khảo cho hồ sơ xin việc của bạn.
                                                </li>
                                                <li style="list-style: none">+ Nếu bạn muốn TopCV ngưng xử lý thông tin cá nhân của
                                                    bạn, TopCV sẽ không thể cung cấp các dịch
                                                    vụ liên quan cho bạn.
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            Từ việc truy cập và đồng ý với các nội dung điều khoản của Chính Sách Bảo Mật này, bạn
                                            đã cho phép TopCV được thu
                                            thập và xử lý và kiểm soát các thông tin cá nhân của bạn cho mục đích nêu tại Điều 2 của
                                            Thỏa thuận này
                                        </li>
                                    </ul>
                                </li>
                                <li>Khi bạn truy cập các Dịch vụ của TopCV
                                    <ul>
                                        <li>Khi bạn truy cập bất cứ trang web nào thuộc hệ thống TopCV, máy chủ trang web của chúng
                                            tôi sẽ tự động thu thập
                                            thông tin truy cập của bạn tại các trang web này, bao gồm địa chỉ IP, thời gian, ngày và
                                            thời lượng truy cập. Địa chỉ IP
                                            của bạn là thiết bị định dạng duy nhất cho máy tính của bạn hoặc các thiệt bị truy cập
                                            khác.
                                        </li>
                                        <li>TopCV có thể theo dõi quá trình truy cập của bạn tại bất cứ trang web nào thuộc hệ thống
                                            TopCV, bằng cách cài đặt một
                                            “cookie” trong máy tính của bạn hoặc các thiết bị truy cập khác khi bạn đăng nhập.
                                            Cookies là các tập tin văn bản nhỏ
                                            được đặt trên máy tính của bạn hoặc thiết bị truy cập khác bởi các trang web mà bạn truy
                                            cập. Chúng được sử dụng rộng
                                            rãi để làm cho trang web hoạt động, hoặc hoạt động hiệu quả hơn, cũng như cung cấp thông
                                            tin cho chủ sở hữu của các
                                            trang web.
                                        </li>
                                        <li>Cookies cho phép TopCV lưu lại các trạng thái dữ liệu của bạn để bạn sẽ không phải đăng
                                            nhập lại trong lần truy cập
                                            sau. Cookies cũng giúp TopCV thu thập luồng dữ liệu truy cập ẩn danh để theo dõi xu
                                            hướng và mẫu người dùng. TopCV
                                            có thể sử dụng luồng dữ liệu truy cập ẩn danh để giúp các nhà quảng cáo cung cấp quảng
                                            cáo nhắm tới mục tiêu tốt
                                            hơn.
                                        </li>
                                        <li>Bạn có thể gỡ bỏ Cookies bằng cách làm theo các hướng dẫn được cung cấp trong tập tin
                                            “giúp đỡ” trình duyệt Internet
                                            của bạn. Bạn nên hiểu rằng một số nội dung của một số trang web nhất định sẽ không hiển
                                            thị nếu bạn cài đặt trình duyệt
                                            Internet của bạn không chấp nhập cookies.
                                        </li>
                                        <li>TopCV cũng sử dụng các mã ghi rõ ràng trong email định dạng HTML để xác định các email
                                            nào đã được mở bởi người
                                            nhận. Điều này cho phép TopCV đánh giá tính hiệu quả của các phương tiện truyền thông
                                            nhất định và hiệu quả của các
                                            chiến lược tiếp thị của công ty.
                                        </li>
                                    </ul>
                                </li>
                            </ol>
                            <h2>2. MỤC ĐÍCH THU THẬP VÀ SỬ DỤNG THÔNG TIN CÁ NHÂN</h2>
                            <ol>
                                <li>Mục đích TopCV xử lý thông tin cá nhân của bạn như sau:
                                    <ul>
                                        <li>Xác định danh tính của bạn.</li>
                                        <li>Đánh giá và/hoặc xác định khả năng làm việc và mức độ tín nhiệm của bạn.</li>
                                        <li>
                                            Phân tích thông tin hồ sơ của bạn để giới thiệu gợi ý việc làm cho bạn dựa trên thông
                                            tin phân tích.
                                        </li>
                                        <li>Chia sẻ thông tin dữ liệu tìm việc và hồ sơ ứng viên của bạn cho nhà tuyển dụng</li>
                                        <li>Cung cấp một trong các Dịch vụ của TopCV mà bạn đã yêu cầu.</li>
                                        <li>Điều hành và quản lý các Dịch vụ của TopCV đã cung cấp cho bạn.</li>
                                        <li>Liên lạc với bạn các vấn đề liên quan đến việc sử dụng Dịch vụ của TopCV.</li>
                                        <li>Cải thiện các cơ hội thay đổi công việc của bạn hoặc sắp xếp các dịch vụ cụ thể cho
                                            bạn.
                                        </li>
                                        <li>Xác minh trình độ học vấn và nghề nghiệp của bạn bằng việc liên lạc trường học/cao
                                            đẳng/đại học/viện nghiên cứu/các
                                            cơ quan chuyên môn.
                                        </li>
                                        <li>Xử lý đơn yêu cầu trong quá trình sử dụng Dịch vụ của TopCV mà bạn đã yêu cầu.</li>
                                        <li>Điều tra và giải quyết các khiếu nại hoặc thắc mắc khác mà bạn gửi đến TopCV liên quan
                                            đến các Dịch vụ của TopCV.
                                        </li>
                                        <li>Giám sát và cải thiện việc thực hiện các Dịch vụ của TopCV.</li>
                                        <li>Duy trì và phát triển các Dịch vụ của TopCV.</li>
                                        <li>Am hiểu về các nhu cầu thông tin và liên lạc của bạn để TopCV nâng cao và điều chỉnh các
                                            Dịch vụ của TopCV.
                                        </li>
                                        <li>Tiến hành nghiên cứu và phát triển và phân tích thống kê liên quan đến các Dịch vụ của
                                            TopCV để xác định xu hướng
                                            và phát triển các dịch vụ mới đáp ứng ứng sự quan tâm của bạn.
                                        </li>
                                        <li>Hỗ trợ TopCV am hiểu các lựa chọn duyệt thông tin ưu tiên của bạn để TopCV có thể điều
                                            chỉnh nội dung phù hợp.
                                        </li>
                                        <li>Phát hiện và ngăn chặn hoạt động gian lận, lừa đảo, vi phạm pháp luật.</li>
                                    </ul>
                                </li>
                                <li>Bạn không thể hạn chế việc xử lý thông tin cá nhân của bạn cho các mục đích quy định tại Khoản 1
                                    nêu trên bởi đây là mục đích của
                                    bạn khi sử dụng dịch vụ của TopCV và là cách để TopCV có thể đáp ứng dịch vụ của bạn . Nếu bạn
                                    không đồng ý để TopCV xử lý
                                    thông tin cá nhân của bạn cho các mục đích trên, bạn phải chấm dứt thỏa thuận liên quan của bạn
                                    với TopCV cho các Dịch vụ của
                                    TopCV và ngừng sử dụng các Dịch vụ do TopCV cung cấp.
                                </li>
                                <li>TopCV sẽ yêu cầu sự đồng ý của bạn trước khi xử lý thông tin cá nhân ngoài các mục quy định tại
                                    Khoản 1 Điều này.
                                </li>
                                <li>Ngoài ra, TopCV có thể sử dụng thông tin cá nhân của bạn cho các mục đích sau:
                                    <ul>
                                        <li>Thúc đẩy và giới thiệu đến bạn:<br>
                                            - Các Dịch vụ khác của TopCV như: Giới thiệu việc làm, Giới thiệu khóa học, sự kiện, tin
                                            tức, Kết nối nhà tuyển dụng,...<br>
                                            - Các dịch vụ của các bên thứ ba mà TopCV thấy phù hợp với sự quan tâm của bạn.<br>
                                        </li><li>Gửi đến bạn các tin nhắn chúc mừng và/hoặc tin nhắn thông báo lỗi trên các trang Web
                                            TopCV và/hoặc các thông tin
                                            Dịch vụ của TopCV.
                                        </li>
                                        <li>Gửi đến bạn các hướng dẫn, lời khuyên và thông tin khảo sát để tối đa hóa sự phát triển
                                            nghề nghiệp của bạn bao gồm
                                            nhưng không giới hạn đối với việc sử dụng các Dịch vụ của TopCV.
                                        </li>
                                    </ul>
                                </li>
                            </ol>
                            <h2>3. QUYỀN CỦA BẠN ĐỐI VỚI CƠ SỞ DỮ LIỆU</h2>
                            <ol>
                                <li>
                                    TopCV trao cho bạn sự chọn lựa để CV của mình trong Cơ Sở Dữ Liệu Hồ Sơ TopCV. Có hai cách để
                                    thực hiện:
                                    <ul>
                                        <li>Bạn có thể lưu trữ hồ sơ của bạn trong Cơ Sở Dữ Liệu Hồ Sơ TopCV, nhưng không cho phép
                                            hồ sơ này được tìm kiếm
                                            bởi Nhà tuyển dụng hoặc các Đơn vị quảng cáo hoặc các Chủ sở hữu tài khoản TopCV
                                            Partner. Không cho phép hồ sơ
                                            của bạn được tìm kiếm có nghĩa là bạn có thể sử dụng nó để nộp đơn xin việc trực tuyến,
                                            nhưng Nhà tuyển dụng hoặc
                                            các Đơn vị quảng cáo hoặc các Chủ sở hữu tài khoản TopCV Partner sẽ không có quyền truy
                                            cập để tìm kiếm thông qua
                                            cơ sở dữ liệu Cơ Sở Dữ Liệu Hồ Sơ TopCV.
                                        </li>
                                        <li>Bạn có thể cho phép thông tin hồ sơ và thông tin dữ liệu tìm việc của bạn được tìm kiếm
                                            bởi hoặc hoặc gợi ý cho những
                                            Nhà tuyển dụng hoặc các Đơn vị quảng cáo hoặc các Chủ sở hữu tài khoản TopCV Partner.
                                            Khi bạn lựa chọn để hồ sơ
                                            của mình được tìm kiếm hoặc gợi ý, toàn bộ thông tin lý lịch, thông tin cá nhân, và dữ
                                            liệu tìm việc của bạn sẽ hiển thị
                                            đối với các Nhà tuyển dụng hoặc các Đơn vị quảng cáo hoặc các Chủ sở hữu tài khoản TopCV
                                            Partner khi họ lưu trữ
                                            qua Cơ Sở Dữ Liệu Hồ Sơ TopCV.
                                        </li>
                                        <li>Trong trường hợp bạn đồng ý chia sẻ với Nhà tuyển dụng về thông tin dữ liệu tìm việc của
                                            bạn, TopCV sẽ trở thành đơn
                                            vị trung gian kết nối và chia sẻ thông tin này cho Nhà tuyển dụng dựa trên sự đồng ý của
                                            bạn. Việc kết nối này có thể
                                            phát sinh một số khoản phí để duy trì hoạt động vận hành của hệ thống, tuy nhiên, toàn
                                            bộ các khoản phí này sẽ do Nhà
                                            tuyển dụng phải chi trả và Ứng viên không phải chi trả khoản phí này.
                                        </li>
                                    </ul>
                                </li>
                                <li>TopCV nỗ lực hạn chế quyền truy cập vào Cơ Sở Dữ Liệu Hồ Sơ TopCV mà chỉ dành cho những người đã
                                    đăng ký với các Dịch vụ
                                    của TopCV, những người này có thể giữ lại một bản sao của hồ sơ của bạn trong các tập tin hoặc
                                    cơ sở dữ liệu riêng của họ. Tuy
                                    nhiên, trong mọi trường hợp, bạn là người có quyền chấp thuận hoặc từ chối để Nhà tuyển dụng
                                    truy cập vào Hồ Sơ của bạn.
                                </li>
                                <li>TopCV sẽ thực hiện các bước hợp lý để các bên chưa được đề cập ở trên sẽ không đạt được quyền
                                    truy cập vào Cơ Sở Dữ Liệu Hồ
                                    Sơ TopCV, khi chưa có sự đồng ý của TopCV. Tuy nhiên, TopCV không chịu trách nhiệm đối với việc
                                    lưu giữ, sử dụng hoặc tính bảo
                                    mật của hồ sơ của bất kỳ bên thứ ba nào.
                                </li>
                                <li>Mặc dù quy định tại Khoản 3.1, TopCV có quyền truy cập đầy đủ đến hồ sơ của bạn cho mục đích quy
                                    định tại Khoản 2.1 để thực hiện
                                    các Dịch vụ TopCV.
                                </li>
                                <li>Bạn có thể được kích hoạt lại tài khoản khi đã bị vô hiệu hóa nếu được sự chấp thuận từ TopCV.
                                </li>
                                <li>Ngoài các quyền được quy định tại các khoản 1,2,3,4,5 Điều này, bạn có đầy đủ các quyền của chủ
                                    thể dữ liệu được quy định
                                    tại Điều 9 Nghị định 13/2023/NĐ-CP về Bảo vệ dữ liệu cá nhân.
                                </li>
                            </ol>
                            <h2>4. LỰA CHỌN VÀ TRUY CẬP THÔNG TIN CÁ NHÂN</h2>
                            <ol>
                                <li>Bạn có thể có những quan tâm về quyền bảo mật khác nhau. Mục tiêu của TopCV là làm rõ các thông
                                    tin mà chúng tôi thu thập, để bạn
                                    có thể có các lựa chọn ý nghĩa về cách sử dụng. Ví dụ:
                                    <ul>
                                        <li style="list-style: none">- Bạn có thể kiểm soát người mà bạn muốn chia sẻ thông tin cá
                                            nhân.
                                        </li>
                                        <li style="list-style: none">- Bạn có thể xem lại và kiểm soát việc đăng ký của bạn đối với
                                            các lựa chọn tiếp thị khác nhau, các Dịch vụ TopCV. Bạn
                                            có thể xem, chỉnh sửa hoặc xóa thông tin cá nhân và các mục ưa thích bất cứ lúc nào.
                                        </li>
                                        <li style="list-style: none">- Bạn có thể lựa chọn không tiếp nhận bất cứ tài liệu tiếp thị
                                            nào từ TopCV.
                                        </li>
                                        <li style="list-style: none">- Bạn cũng có thể đăng ký các Dịch vụ TopCV bổ sung bằng cách
                                            đăng nhập vào tài khoản của bạn trên trang chủ của
                                            chúng tôi.
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    Bạn có thể xóa tài khoản của mình bất cứ lúc nào và khi đó TopCV sẽ hủy tất cả quyền truy cập
                                    đến tài khoản và hồ sơ trong cơ sở dữ
                                    liệu. Việc xóa tài khoản của bạn sẽ không ảnh hưởng đến những hồ sơ mà bạn đã gửi đến các Nhà
                                    tuyển dụng hoặc được lưu xuống
                                    bởi các Nhà tuyển dụng, Chủ sở hữu tài khoản (muốn có CV) được thực hiện trước thời điểm bạn gửi
                                    yêu cầu xóa tài khoản đến
                                    TopCV.
                                    <div id="remove-account-guide">
                                        <p>Dưới đây là các bước để bạn có thể xóa tài khoản của mình khỏi hệ thống của TopCV</p>
                                        <ul>
                                            <li>Gửi email về hòm mail hotro@topcv.vn với tiêu đề <strong>Yêu cầu xóa tài
                                                    khoản</strong></li>
                                            <li>Sau khi TopCV nhận được yêu cầu qua email, chúng tôi sẽ liên hệ lại để xác nhận
                                                thông tin
                                            </li>
                                            <li>Thực hiện xóa tài khoản khỏi hệ thống và thông báo phản hồi lại qua email trong thời
                                                hạn 72 giờ, kể từ thời điểm nhận
                                                được yêu cầu của bạn.
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                            </ol>
                            <h2>5. LƯU TRỮ THÔNG TIN CÁ NHÂN</h2>
                            <p>TopCV sẽ lưu trữ thông tin cá nhân của bạn trong khoảng thời gian cần thiết để đáp ứng các mục đích
                                quy định tại Khoản 2 bên trên và cho bất
                                cứ mục đích pháp lý hoặc kinh doanh nào.</p>
                            <p>Sau khi chấm dứt hoặc vô hiệu hóa tài khoản của bạn, TopCV, Chi nhánh hoặc Nhà cung cấp dịch vụ của
                                TopCV có thể giữ lại thông tin (bao gồm
                                thông tin trang cá nhân của bạn) và Nội dung của người dùng trong khoảng thời gian hợp lý về mặt
                                thương mại cho các mục đích sao lưu, lưu trữ
                                và/hoặc kiểm tra theo quy định của pháp luật Việt Nam.</p>
                            <h2>6. BẢO MẬT THÔNG TIN CÁ NHÂN</h2>
                            <ol>
                                <li>TopCV cam kết bảo mật thông tin cá nhân của bạn. TopCV có quy trình kỹ thuật, hành chính và vật
                                    chất thích hợp để chống mất mát,
                                    trộm cắp và lạm dụng, cũng như chống lại việc truy cập trái phép, tiết lộ, thay đổi và tiêu hủy
                                    thông tin. Thông tin nhạy cảm (như là số
                                    thẻ ngân hàng, thẻ tín dụng) được nhập vào các dịch vụ cổng thanh toán của chúng tôi hoặc đối
                                    tác thanh toán sẽ được mã hóa trong
                                    quá trình truyền tải thông tin bằng cách sử dụng công nghệ SSL.
                                </li>
                                <li>Tuy nhiên, không có phương pháp truyền tải qua Internet hoặc phương pháp lưu trữ điện tử nào là
                                    an toàn 100%. Do đó, chúng tôi
                                    không thể đảm bảo bảo mật tuyệt đối. Nếu bạn có bất kỳ câu hỏi nào về việc bảo mật trên TopCV,
                                    bạn có thể liên hệ với chúng tôi qua
                                    email hotro@topcv.vn.
                                </li>
                            </ol>
                            <h2>7. NHỮNG BÊN THỨ BA ĐƯỢC SỬ DỤNG THÔNG TIN</h2>
                            <ol>
                                <li>
                                    Thông tin cá nhân đề cập ở Khoản 1 trên đây có thể được công bố/sử dụng bởi các bên thứ ba sau
                                    đây nhằm kết nối các Dịch vụ của
                                    TopCV và bạn đến các cơ hội phù hợp:
                                    <ul>
                                        <li>Các Nhà tuyển dụng / Doanh nghiệp đang có nhu cầu tuyển dụng nhân sự
                                        </li><li>
                                            Các bên thứ ba ký hợp đồng với TopCV để hỗ trợ TopCV thực hiện tất cả hoặc một phần các
                                            Dịch vụ TopCV cho bạn,
                                            bao gồm nhưng không giới hạn, các dịch vụ sau:<br>
                                            - Dịch vụ hồ sơ/đánh giá.<br>
                                            - Dịch vụ nghiên cứu thị trường và phân tích sử dụng trang web.<br>
                                            - Cung cấp các thông tin, khóa học, sự kiện phù hợp<br>
                                        </li>
                                        <li>Các đối tác chiến lược làm việc với TopCV để cung cấp một trong các Dịch vụ của TopCV
                                            hoặc để hỗ trợ tiếp thị và giới
                                            thiệu tới người dùng TopCV.
                                        </li>
                                        <li>Trường học/cao đẳng/đại học/viện nghiên cứu mà bạn đã theo học hoặc người giới thiệu để
                                            xác minh trình độ học vấn
                                            của bạn.
                                        </li>
                                        <li>Các cơ quan chuyên môn nơi bạn được công nhận trình độ chuyên môn.</li>
                                        <li>Các tư vấn chuyên nghiệp của TopCV khi có nhu cầu tìm hiểu cơ bản với mục đích tư vấn
                                            cho TopCV.
                                        </li>
                                        <li>Bất cứ bên thứ ba nào sở hữu một phần hoặc tất cả tài sản hoặc việc kinh doanh của TopCV
                                            (bao gồm các khách hàng
                                            và các khoản phải thu thương mại) nhằm mục đích hỗ trợ bên thứ ba tiếp tục cung cấp một
                                            phần hoặc toàn bộ các Dịch
                                            vụ TopCV mà họ sở hữu.
                                        </li>
                                        <li>Các trường hợp khác được cho phép theo quy định pháp luật về bảo mật dữ liệu.</li>
                                    </ul>
                                </li>
                                <li>Ngoài những trường hợp ở trên, bạn sẽ được thông báo khi thông tin cá nhân của bạn có thể đi đến
                                    các bên thứ ba, và bạn sẽ có cơ
                                    hội lựa chọn không chia sẻ thông tin này.
                                </li>
                                <li>TopCV không cho phép bất kỳ bên thứ ba nào được phép chia sẻ lại thông tin đã được cung cấp cho
                                    một bên khác hoặc sử dụng không
                                    đúng mục đích đã được ký kết trong hợp đồng với TopCV.
                                </li>
                            </ol>
                            <h2>8. NGHĨA VỤ CỦA BẠN ĐỐI VỚI THÔNG TIN CÁ NHÂN CỦA MÌNH</h2>
                            <ol>
                                <li>Bạn có trách nhiệm cung cấp cho TopCV các thông tin của bạn và cá nhân của người nào mà bạn cung
                                    cấp cho chúng tôi một cách
                                    chính xác, không gây nhầm lẫn, đầy đủ và gần nhất, và có trách nhiệm cập nhật thông tin cá nhân
                                    này khi có sự sai lệch, nhầm lẫn,
                                    không đầy đủ và lỗi thời bằng cách liên lạc với TopCV qua email hotro@topcv.vn.
                                </li>
                                <li>Trong trường hợp bạn có nhu cầu cung cấp thông tin cá nhân của một người nào đó cho TopCV mà
                                    không phải là thông tin của bạn
                                    (ví dụ, người giới thiệu hoặc người bảo lãnh), bạn nên thông báo những người này về việc cung
                                    cấp thông tin cá nhân của họ cho
                                    TopCV, nhằm đảm bảo sự đồng ý của họ cho việc cung cấp thông tin và để họ biết địa chỉ để tìm
                                    Thông Báo Chính Sách này (tại mục
                                    Chính Sách Bảo Mật trên trang web của chúng tôi).
                                </li>
                                <li>Ngoài các nghĩa vụ được quy định tại Khoản 1, 2 Điều này, bạn có đầy đủ các nghĩa vụ của chủ thể
                                    dữ liệu theo quy định tại Điều 12
                                    Nghị định 13/2023/NĐ-CP.
                                </li>
                            </ol>
                            <h2>9. HẬU QUẢ, THIỆT HẠI KHÔNG MONG MUỐN CÓ KHẢ NĂNG XẢY RA</h2>
                            <ol>
                                <li>
                                    Mất dữ liệu vào các đối tượng mà ứng viên cho phép nhầm/ lỗi.
                                </li>
                                <li>Các đối tượng lừa đảo sử dụng thông tin cá nhân của bạn để thực hiện các mục tiêu bất hợp pháp
                                    sau khi được bạn chia sẻ.
                                </li>
                                <li>TopCV có thể đánh giá và phân tích sai dữ liệu của bạn khi bạn không có sự cập nhật thường xuyên
                                    khi có thay đổi.
                                </li>
                            </ol>
                            <h2>10. THỜI GIAN BẮT ĐẦU, THỜI GIAN KẾT THÚC XỬ LÝ DỮ LIỆU</h2>
                            <p>Từ ngày chính sách này có hiệu lực cho đến ngày Bạn (chủ sở hữu dữ liệu) có yêu cầu bằng văn bản về
                                việc từ chối cho phép xử lý dữ liệu gửi
                                cho TopCV theo thông tin liên lạc bên dưới.
                            </p>
                            <h2>11. CHUYỂN THÔNG TIN CÁ NHÂN NGOÀI PHẠM VI ĐỊA PHƯƠNG CỦA BẠN</h2>
                            <p>TopCV có thể cần chuyển thông tin cá nhân của bạn ra ngoài phạm vi địa phương của bạn nếu có bất kỳ
                                nhà cung cấp dịch vụ hoặc các đối tác
                                chiến lược (“các công ty nước ngoài”) tham gia cung cấp một phần của một trong các Dịch vụ của
                                TopCV.</p>
                            <h2>12. CÁC TRANG LIÊN KẾT</h2>
                            <ol>
                                <li>Các trang web thuộc TopCV có thể chứa các liên kết đến các trang của bên thứ ba. TopCV không
                                    chịu trách nhiệm đối với các trang
                                    web của các bên thứ ba này. Bất cứ thông tin cá nhân nào của bạn sẵn có trên các trang đó sẽ
                                    không được hưởng lợi từ Chính Sách
                                    Bảo Mật này và sẽ phụ thuộc vào chính sách bảo mật của bên thứ ba liên quan (nếu có). Chúng tôi
                                    không chịu trách nhiệm đối với
                                    những thực tiễn được triển khai bởi bất kỳ trang web hoặc dịch vụ nào được liên kết đến hoặc từ
                                    Dịch vụ của chúng tôi, bao gồm thông
                                    tin hoặc nội dung có trong đó. Xin lưu ý rằng khi bạn sử dụng liên kết để đi từ Dịch vụ của
                                    chúng tôi đến trang web hoặc dịch vụ khác,
                                    Chính sách bảo mật của chúng tôi không áp dụng đối với những trang web hoặc dịch vụ bên thứ ba
                                    đó. Quá trình duyệt web và tương
                                    tác của bạn trên bất kỳ trang web hoặc dịch vụ của bên thứ ba nào, bao gồm trang web hoặc dịch
                                    vụ có liên kết trên trang web của
                                    chúng tôi, phải tuân theo các quy định và chính sách của riêng bên thứ ba đó. Ngoài ra, bạn đồng
                                    ý rằng chúng tôi không có trách nhiệm
                                    và không có quyền kiểm soát đối với bất kỳ bên thứ ba nào mà bạn cho phép truy cập vào Nội dung
                                    của người dùng của mình. Nếu
                                    bạn đang sử dụng trang web hoặc dịch vụ bên thứ ba và bạn cho phép trang web hoặc dịch vụ đó
                                    truy cập vào Nội dung của người
                                    dùng của mình, bạn phải tự chịu rủi ro khi thực hiện việc đó.
                                </li>
                                <li>Bạn có thể truy cập vào trang của chúng tôi bằng cách sử dụng dịch vụ đăng nhập như là Facebook
                                    Connect. Dịch vụ này sẽ xác thực
                                    danh tính của bạn và cung cấp cho bạn các tùy chọn để chia sẻ thông tin cá nhân nhất định với
                                    chúng tôi như tên và địa chỉ email để
                                    nhập trước vào mẫu đăng ký của chúng tôi. Các dịch vụ như Facebook Connect cung cấp cho bạn các
                                    tùy chọn để đăng thông tin về
                                    các hoạt động của bạn trên trang web này trên trang hồ sơ cá nhân của bạn để chia sẻ với những
                                    người khác trong mạng lưới của bạn.
                                </li>
                                <li>Trang web của chúng tôi bao gồm các Tính năng Truyền thông Xã hội, chẳng hạn như các widget và
                                    nút like/share/comment Facebook,
                                    hoặc các chương trình tương tác mini chạy trên trang web của chúng tôi. Những tính năng này có
                                    thể thu thập địa chỉ IP của bạn, trang
                                    mà bạn đang truy cập trên trang web của chúng tôi, và có thể cài đặt cookies để kích hoạt các
                                    Tính năng hoạt động tốt. Các Tính năng
                                    Truyền thông Xã hội và các widget được cung cấp bởi bên thứ ba hoặc cung cấp trực tiếp trên
                                    trang web của chúng tôi. Sự tương tác
                                    của bạn với những Tính năng này được quản lý bởi chính sách bảo mật của bên cung cấp.
                                </li>
                            </ol>
                            <h2>13. SỰ ĐỒNG Ý CỦA BẠN</h2>
                            <ol>
                                <li>Khi sử dụng các Dịch vụ của TopCV, bạn đồng ý với việc thu thập và sử dụng thông tin cá nhân của
                                    TopCV như được mô tả ở phần
                                    trên (có thể thay đổi theo thời gian) trừ khi và cho đến khi bạn thông báo điều ngược lại với
                                    TopCV qua email hotro@topcv.vn.
                                </li>
                                <li>Bên cạnh đó, bạn đồng ý với việc người giới thiệu, các trường học/cao đẳng/đại học/ học viện mà
                                    bạn đã theo học, các cơ quan chuyên
                                    môn nơi bạn được công nhận trình độ chuyên môn và các Nhà tuyển dụng công bố thông tin các nhân
                                    của bạn với TopCV.
                                </li>
                            </ol>
                            <h2>14. QUYỀN RIÊNG TƯ CỦA TRẺ EM</h2>
                            <p>TopCV không chủ định thu thập hoặc yêu cầu bất kỳ thông tin nào từ bất kỳ ai dưới 13 tuổi hoặc không
                                chủ ý cho phép những người đó đăng ký
                                Dịch vụ. Dịch vụ và nội dung của Dịch vụ không nhắm tới trẻ em dưới 13 tuổi. Trong trường hợp chúng
                                tôi biết rằng mình đã thu thập thông tin cá
                                nhân từ trẻ em dưới 13 tuổi mà không có sự chấp thuận của cha mẹ, chúng tôi sẽ xóa thông tin đó
                                nhanh nhất có thể. Nếu bạn cho rằng chúng
                                tôi có thể có thông tin từ hoặc về trẻ dưới 13 tuổi, vui lòng liên hệ với chúng tôi.</p>
                            <h2>THÔNG TIN LIÊN LẠC</h2>
                            <p>Nếu bạn có câu hỏi về Thông Báo Chính Sách này, vui lòng gửi email tới địa chỉ hotro@topcv.vn để được
                                giải đáp nhanh nhất.</p>
                        </div>
                    </div>
                </div>
            </div>   

            <!--=================== footer ========================== -->
            <footer class="mt-auto" id="footer">
                <div class="bg-light border-t text-title-darker">
                    <h3 class="p-6 text-center">
                        <a href="javascript:;">
                            <img src="asets/img/logo_dragon.png" width="35px" height="35px" alt="Logo" />
                            VA<span style="color: #00A888">DocS</span>
                        </a>
                    </h3>
                    <div class="container">
                        <div class="row">
                            <!-- about me -->
                            <div class="col-md-4">
                                <div class="footer__about">
                                    <h3>ABOUT ME</h3>
                                </div>
                                <ul>
                                    <li><i class="fa-solid fa-map-location-dot"></i><p>Ha Noi, Viet Nam</p></li>
                                    <li><i class="fa-regular fa-envelope"></i><p>anhtvhe176717@fpt.edu.vn</p></li>
                                    <li><i class="fa-solid fa-phone"></i><p>+84 123456789</p></li>
                                </ul>
                            </div>
                            <!-- help -->
                            <div class="col-md-4">
                                <div class="footer__about">
                                    <h3>HELP</h3>
                                </div>
                                <ul>
                                    <li><a href="terms.jsp">Terms of Use</a></li>
                                    <li><a href="privacy.jsp">Privacy Policy</a></li>
                                </ul>
                            </div>
                            <!-- contact -->
                            <div class="col-md-4">
                                <div class="footer__about">
                                    <h3>CONTACT</h3>
                                </div>
                                <a href="#"><i class="fa-brands fa-facebook first-icon"></i></a>
                                <a href="#"><i class="fa-brands fa-instagram"></i></a>
                                <a href="#"><i class="fa-brands fa-linkedin"></i></a>
                                <a href="#"><i class="fa-brands fa-tiktok"></i></a>
                            </div>
                        </div>
                    </div>
                    <!-- copy right -->
                    <div class="row w-full">
                        <div class="col-lg-12 text-center text-xs">
                            <p>Copyright © 2023. Designed by VADocS</p>
                        </div>
                    </div>
                </div>
            </footer>
        </div>




        <!--=================== Optional JavaScript ========================== -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
                integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
                integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
                integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@2.x/dist/alpine.js" defer></script>
        <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
    </body>
    
       <script type="text/javascript">
                                          const modal = document.querySelector('.js-modal');
                                          let menuStatus = false;

                                          // thêm class vào modal
                                          function showUserMenu() {
                                              modal.classList.add('open');
                                          }

                                          //gỡ bỏ class open của modal
                                          function hideUserMenu() {
                                              modal.classList.remove('open');
                                          }

                                          function toggleUserMenu() {
                                              if (menuStatus) {
                                                  hideUserMenu();
                                              } else {
                                                  showUserMenu();
                                              }
                                              menuStatus = !menuStatus;
                                          }


    </script>
</html>
