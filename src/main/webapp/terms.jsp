<%-- 
    Document   : terms
    Created on : Nov 1, 2023, 8:11:39 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Terms of Use</title>
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
                font-family: sans-serif;
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
                            <div class="subtitle">ĐIỀU KHOẢN SỬ DỤNG DỊCH VỤ VỚI ỨNG
                                VIÊN</div>
                        </div>
                        <hr>
                        <div class="content">
                            <h2>1. ĐIỀU KHOẢN CHUNG</h2>
                            <p>Bằng cách truy cập hoặc sử dụng trang web TopCV.vn, các dịch vụ, hoặc bất kỳ ứng dụng nào do
                                TopCV.,JSC ("TopCV”) cung cấp (gọi
                                chung là "Dịch vụ"), dù truy cập bằng cách nào, bạn đồng ý chịu sự ràng buộc của Điều Khoản Sử Dụng
                                với Người dùng này ("Điều Khoản
                                Sử Dụng"). Dịch vụ do TopCV sở hữu hoặc kiểm soát. Các Điều Khoản Sử Dụng này ảnh hưởng đến quyền và
                                nghĩa vụ pháp lý của bạn.
                                Nếu bạn không đồng ý chịu sự ràng buộc của tất cả các Điều Khoản Sử Dụng này, bạn không truy cập hay
                                sử dụng Dịch vụ. Nếu Bạn có
                                bất kỳ câu hỏi nào liên quan đến Điều Khoản này, vui lòng liên hệ chúng tôi tại email:
                                legal@topcv.vn.</p>
                            <p>Chúng tôi có thể cập nhật Điều Khoản Sử Dụng này theo thời gian vì các lý do pháp lý hoặc theo quy
                                định hoặc để cho phép hoạt động thích
                                hợp của trang web TopCV.vn. Mọi thay đổi sẽ được thông báo tới bạn bằng một thông báo phù hợp trên
                                trang web của chúng tôi. Những
                                thay đổi này sẽ áp dụng cho việc sử dụng trang web TopCV.vn. Sau khi chúng tôi đã thông báo đến bạn,
                                Nếu bạn không muốn chấp nhận
                                Điều Khoản Sử Dụng sau khi được cập nhật, bạn không nên tiếp tục sử dụng trang web TopCV.vn. Nếu bạn
                                tiếp tục sử dụng trang web
                                TopCV.vn kể từ ngày Điều Khoản Sử Dụng được cập nhật, bạn phải chấp thuận Điều Khoản Sử Dụng của
                                TopCV bằng cách lựa chọn đồng
                                ý thông qua thông báo được hiển thị trên trang web của chúng tôi khi áp dụng các thay đổi.</p>
                            <h2>2. ĐỊNH NGHĨA VÀ GIẢI THÍCH</h2>
                            <ol>
                                <li>“<strong>Cơ sở dữ liệu TopCV.vn</strong>” hoặc “<strong>Các cơ sở dữ liệu TopCV.vn</strong>” bao
                                    gồm tất cả các bài quảng cáo việc làm đăng trên các
                                    trang web TopCV.vn và/hoặc tất cả thông tin của Người dùng và/hoặc các nhà tuyển dụng được đăng
                                    ký với TopCV.vn.
                                </li>
                                <li>“<strong>Cơ sở dữ liệu Hồ sơ TopCV.vn</strong>” hoặc “<strong>Các cơ sở dữ liệu Hồ sơ</strong>”
                                    là hồ sơ Người dùng được khởi tạo và/hoặc được đăng tại
                                    các cơ sở dữ liệu TopCV.vn.
                                </li>
                                <li>“<strong>Dịch vụ TopCV.vn</strong>” là bất kỳ dịch vụ nào được cung cấp bởi TopCV.</li>
                                <li>“<strong>Hồ sơ cá nhân</strong>” là các thông tin, CV cá nhân được tạo bởi Người dùng.</li>
                                <li>“<strong>Văn bản</strong>” bao gồm tất cả văn bản trên mọi trang của trang web TopCV.vn, cho dù
                                    là tài liệu có xác định tác giả, các nội dung
                                    tìm kiếm có định hướng hay thông tin hướng dẫn.
                                </li>
                                <li>“Bạn” được đề cập ở đây là cách gọi ngắn gọn chỉ tới Người dùng dịch vụ của TopCV.
                                </li>
                                <li>“<strong>Người dùng</strong>” đề cập đến bất kỳ cá nhân hoặc tổ chức nào sử dụng bất kỳ khía
                                    cạnh nào của trang web TopCV.vn và/hoặc các
                                    Dịch vụ TopCV.vn.
                                </li>
                                <li>“<strong>Nội dung Người dùng</strong>” là tất cả thông tin, dữ liệu, văn bản, phần mềm, âm nhạc,
                                    âm thanh, hình ảnh, đồ họa, video, quảng
                                    cáo, tin nhắn hoặc các tài liệu khác được gửi, đăng hoặc biểu thị bởi Người dùng trên hoặc thông
                                    qua trang web TopCV.vn.
                                </li>
                            </ol>
                            <h2>3. ĐĂNG KÝ</h2>
                            <p>Để sử dụng Dịch vụ bạn phải tạo một tài khoản theo yêu cầu của TopCV, bạn cam kết rằng việc sử dụng
                                tài khoản phải tuân thủ các quy
                                định của TopCV, đồng thời tất cả các thông tin bạn cung cấp cho chúng tôi là đúng, chính xác, đầy đủ
                                với tại thời điểm được yêu cầu. Mọi
                                quyền lợi và nghĩa vụ của bạn sẽ căn cứ trên thông tin tài khoản bạn đã đăng ký, do đó nếu có bất kỳ
                                thông tin sai lệch nào chúng tôi sẽ
                                không chịu trách nhiệm trong trường hợp thông tin đó làm ảnh hưởng hoặc hạn chế quyền lợi của
                                bạn.</p>
                            <h2>4. MẬT KHẨU VÀ BẢO MẬT</h2>
                            <ol>
                                <li>Khi bạn đăng ký sử dụng trang web TopCV.vn bạn sẽ được yêu cầu khởi tạo mật khẩu. Để tránh việc
                                    gian lận, bạn phải giữ mật
                                    khẩu này bảo mật và không được tiết lộ hoặc chia sẻ với bất kỳ người nào. Nếu bạn biết hoặc nghi
                                    ngờ người khác biết mật khẩu
                                    của bạn, bạn nên thông báo với chúng tôi ngay lập tức bằng cách liên hệ với chúng tôi tại email
                                    hotro@topcv.vn
                                </li>
                                <li>Nếu TopCV.vn có lý do để tin rằng có khả năng có hành vi vi phạm bảo mật hoặc sử dụng không đúng
                                    mục đích trang web
                                    TopCV.vn, chúng tôi có thể yêu cầu bạn thay đổi mật khẩu hoặc chúng tôi có thể tạm dừng tài
                                    khoản của bạn.
                                </li>
                                <li>Trường hợp bạn mất Mật khẩu hoặc hoặc sử dụng không đúng mục đích trang web TopCV.vn:
                                    <ul>
                                        <li>Bạn phải chịu tất cả sự mất mát hoặc thiệt hại phát sinh; và</li>
                                        <li>Bạn chịu trách nhiệm sẽ bồi thường hoàn toàn cho TopCV trong trường hợp TopCV có xảy ra
                                            mất mát hoặc thiệt
                                            hại.
                                        </li>
                                    </ul>
                                </li>
                            </ol>
                            <h2>5. QUYỀN TRUY CẬP VÀ THU THẬP THÔNG TIN</h2>
                            <ol>
                                <li>
                                    Khi sử dụng trang web TopCV.vn, bạn thừa nhận rằng chúng tôi có quyền thu thập các thông tin sau
                                    của bạn (bao gồm tất cả
                                    các thay đổi, cập nhật (nếu có)):
                                    <ul>
                                        <li>Thông tin cá nhân: bao gồm các thông tin bạn cung cấp cho chúng tôi để tạo hồ sơ như
                                            tên, số điện thoại, địa chỉ
                                            email;...
                                        </li>
                                        <li>Thông tin chung: như các thông tin về kinh nghiệm làm việc, định hướng nghề nghiệp, mục
                                            tiêu công việc; trình
                                            độ năng lực; thu nhập;...
                                        </li>
                                    </ul>
                                </li>
                                <li>Bạn thừa nhận và đồng ý một mình chịu trách nhiệm về hình thức, nội dung và tính xác thực của
                                    bất kỳ hồ sơ hoăc tài liệu nào
                                    do bạn đăng tải trên trang web TopCV.vn, đồng thời đồng ý một mình chịu trách nhiệm cho bất kỳ
                                    hệ quả nào phát sinh từ việc
                                    đăng tải này.
                                </li>
                                <li>TopCV có quyền đề xuất đến bạn dịch vụ và sản phẩm của bên thứ ba dựa trên các mục phù hợp mà
                                    bạn xác định trong khi
                                    đăng ký và bất kỳ lúc nào sau đó hoặc khi bạn đã đồng ý tiếp nhận, các đề xuất này sẽ được thực
                                    hiện bởi TopCV hoặc các
                                    bên thứ ba.
                                </li>
                                <li>TopCV được quyền tùy ý tuân theo các yêu cầu pháp lý, các yêu cầu từ cơ quan thi hành án hoặc
                                    yêu cầu của cơ quan quản lý
                                    (“Bên Thứ Ba có thẩm quyền”), thậm chí sự tuân thủ này có thể bao gồm việc công bố một số thông
                                    tin Người dùng nhất định.
                                    Ngoài ra, Bên Thứ Ba có thẩm quyền được phép giữ lại các bản sao lưu trữ thông tin Người dùng.
                                </li>
                                <li>Bạn hiểu và thừa nhận rằng tất cả các thông tin do bạn cung cấp, Thông tin cá nhân, hồ sơ
                                    và/hoặc thông tin tài khoản của bạn
                                    (bao gồm tất cả các thay đổi, cập nhật (nếu có), sẽ được công bố cho các Nhà tuyển dụng tiềm
                                    năng trên TopCV khi được sự
                                    đồng ý của bạn.
                                </li>
                                <li>TopCV tôn trọng tuyệt đối quyền bảo mật thông tin của Người dùng. Nếu không muốn hồ sơ cá nhân
                                    của mình được công khai,
                                    bạn vui lòng tắt tính năng tìm việc &amp; tính năng cho phép nhà tuyển dụng xem hồ sơ để tránh bị
                                    làm phiền.
                                </li>
                                <li>Bạn hiểu và thừa nhận rằng bạn không có các quyền sở hữu trong tài khoản của bạn và nếu bạn hủy
                                    bỏ tài khoản trên trang
                                    web TopCV.vn hoặc tài khoản của bạn bị chấm dứt, tất cả các thông tin tài khoản của bạn tại
                                    trang web TopCV.vn, bao gồm sơ
                                    yếu lý lịch, Thông tin cá nhân, thư xin việc, các công việc đã lưu, sẽ được đánh dấu là bị xóa
                                    và có thể bị xóa khỏi Cơ sở dữ
                                    liệu TopCV và sẽ được gỡ bỏ từ bất kỳ khu vực chung nào trên trang web TopCV.vn. Thông tin có
                                    thể tiếp tục được hiển thị
                                    trong một khoảng thời gian vì các trở ngại trong khi truyền tín hiệu xóa thông qua các máy chủ
                                    của TopCV.vn hoặc do yêu cầu
                                    của các cơ quan chức năng liên quan. Ngoài ra, các bên thứ ba được phép giữ lại bản sao thông
                                    tin của bạn.
                                </li>
                                <li>TopCV có quyền xóa tài khoản và tất cả thông tin của bạn sau một thời gian dài không hoạt động.
                                    Thời gian dài được hiểu là từ
                                    .....tháng trở lên. Bạn cần có sự đồng ý của TopCV trong trường hợp muốn khôi phục lại thông
                                    tin.
                                </li>
                            </ol>
                            <h2>6. TUYÊN BỐ VỀ QUYỀN SỞ HỮU TRÍ TUỆ</h2>
                            <ol>
                                <li>Bạn tuyên bố và đảm bảo rằng: (i) bạn sở hữu Nội dung mà bạn đăng lên hoặc thông qua Dịch vụ hay
                                    nói cách khác, bạn có
                                    quyền cấp các quyền và giấy phép được quy định trong các Điều Khoản Sử Dụng này; (ii) việc đăng
                                    và sử dụng Nội dung trên
                                    hoặc thông qua Dịch vụ không vi phạm, chiếm đoạt hay xâm phạm các quyền của bất kỳ bên thứ ba
                                    nào, bao gồm nhưng không
                                    giới hạn ở quyền riêng tư, quyền công khai, bản quyền, nhãn hiệu thương mại và/hoặc quyền sở hữu
                                    trí tuệ khác; (iii) bạn đồng
                                    ý thanh toán tất cả tiền bản quyền tác giả, phí và bất kỳ khoản tiền nào khác còn nợ do Nội dung
                                    mà bạn đăng lên hoặc thông
                                    qua Dịch vụ; và (iv) bạn có quyền và năng lực pháp lý để tham gia vào các Điều Khoản Sử Dụng này
                                    trong quyền hạn của bạn.
                                </li>
                                <li>Dịch vụ chứa nội dung mà TopCV sở hữu hoặc cấp phép ("Nội dung TopCV"). Nội dung TopCV được bảo
                                    vệ bởi bản quyền,
                                    nhãn hiệu thương mại, bằng sáng chế, bí mật thương mại và các luật khác, đồng thời giữa bạn và
                                    TopCV, TopCV sở hữu và nắm
                                    giữ tất cả các quyền về Dịch vụ và Nội dung TopCV. Bạn không được xóa, thay đổi hoặc che giấu
                                    bất kỳ thông báo nào về bản
                                    quyền, nhãn hiệu thương mại, nhãn hiệu dịch vụ hay quyền sở hữu khác được kết hợp với hay đi kèm
                                    Nội dung TopCV và bạn
                                    không được sao chép, sửa đổi, điều chỉnh, chuẩn bị các sản phẩm phái sinh dựa trên, thực hiện,
                                    hiển thị, xuất bản, phân phối,
                                    truyền đi, phát, bán, cấp phép hoặc khai thác Nội dung TopCV.
                                </li>
                                <li>Logo và tên TopCV là các nhãn hiệu thương mại của TopCV và không được sao chép, giả mạo hay sử
                                    dụng toàn bộ hoặc một
                                    phần khi chưa có sự cho phép trước bằng văn bản của TopCV. Ngoài ra, tất cả các tiêu đề trang,
                                    đồ họa tùy chỉnh, biểu tượng
                                    nút và tập lệnh đều là nhãn hiệu dịch vụ, nhãn hiệu thương mại và/hoặc bao bì thương mại của
                                    TopCV và không được sao chép,
                                    giả mạo hay sử dụng toàn bộ hoặc một phần khi chưa có sự cho phép trước bằng văn bản của TopCV.
                                </li>
                                <li>Mặc dù mục đích của TopCV là cung cấp Dịch vụ nhiều nhất có thể nhưng sẽ có trường hợp Dịch vụ
                                    có thể bị gián đoạn, bao
                                    gồm nhưng không giới hạn ở việc gián đoạn để bảo trì hoặc nâng cấp theo lịch trình, để sửa chữa
                                    khẩn cấp hay do lỗi của thiết
                                    bị và/hoặc liên kết viễn thông. Ngoài ra, TopCV có quyền xóa bất kỳ Nội dung nào khỏi Dịch vụ vì
                                    bất kỳ lý do gì mà theo nhận
                                    định của mình, là vi phạm Điều Khoản này, vi phạm pháp luật, quy tắc hoặc quy định, có tính chất
                                    lăng mạ, gây rối, xúc phạm
                                    hoặc bất hợp pháp, hoặc vi phạm các quyền, hoặc nguy hại hoặc đe dọa sự an toàn của Người dủng
                                    của bất kỳ trang web nào
                                    thuộc TopCV.vn. TopCV có quyền trục xuất người dùng và ngăn chặn quyền truy cập sau đó của họ
                                    tới trang web TopCV.vn
                                    và/hoặc sử dụng các dịch vụ TopCV khi vi phạm Điều Khoản này hoặc vi phạm pháp luật, quy tắc
                                    hoặc quy định. TopCV được
                                    phép thực hiện bất kỳ hành động nào liên quan đến Nội dung Người dùng khi tự xét thấy cần thiết
                                    hoặc thích hợp nếu TopCV tin
                                    rằng Nội dung Người dùng có thể tạo ra trách nhiệm pháp lý cho TopCV, gây thiệt hại đến thương
                                    hiệu TopCV hoặc hình ảnh
                                    công cộng, hoặc dẫn đến việc TopCV để mất người dùng. Nội dung bị xóa khỏi Dịch vụ có thể tiếp
                                    tục được TopCV lưu trữ, bao
                                    gồm nhưng không giới hạn ở việc lưu trữ để tuân thủ một số nghĩa vụ pháp lý nhất định nhưng có
                                    thể không truy xuất được nếu
                                    không có lệnh hợp lệ của tòa án. TopCV sẽ không chịu trách nhiệm pháp lý với bạn về bất kỳ sửa
                                    đổi, tạm ngừng hay gián đoạn
                                    Dịch vụ nào hoặc việc mất mát bất kỳ Nội dung nào. Bạn cũng xác nhận rằng Internet có thể không
                                    an toàn và rằng việc gửi Nội
                                    dung hoặc thông tin khác có thể không an toàn.
                                </li>
                                <li>
                                    TopCV sẽ không chịu trách nhiệm với bất cứ thông tin đăng tải của bên thứ ba nào, cho dù với lý
                                    do nào, do bất cứ tổ chức nào
                                    đăng tải nội dung trên TopCV. Tuy nhiên, TopCV sẽ cố gắng sử dụng mọi biện pháp kiểm soát và hạn
                                    chế tối đa các trường hợp
                                    tin tuyển dụng lừa đảo, thông tin không đúng....để bảo vệ Người Dùng.
                                    TopCV không đại diện hoặc đảm bảo tính trung thực, chính xác, hoặc độ tin cậy của Nội dung Người
                                    dùng, các sản phẩm phái
                                    sinh từ Nội dung Người dùng, hoặc bất kỳ thông tin liên lạc khác được đăng bởi Người dùng cũng
                                    như không xác nhận bất kỳ ý
                                    kiến nào được thể hiện bởi Người dùng. Bạn thừa nhận rằng việc tin tưởng nào vào tài liệu được
                                    đăng bởi Người dùng khác là
                                    rủi ro của riêng bạn.
                                </li>
                            </ol>
                            <h2>7. TUYÊN BỐ MIỄN TRỪ TRÁCH NHIỆM</h2>
                            <ol>
                                <li>TopCV không tuyên bố hay đảm bảo rằng dịch vụ sẽ không bị lỗi hay không bị gián đoạn; rằng các
                                    lỗi sẽ được khắc phục; hoặc
                                    rằng dịch vụ hoặc máy chủ cung cấp dịch vụ không bị nhiễm bất kỳ thành phần có hại nào, bao gồm
                                    nhưng không giới hạn ở vi-
                                    rút. TopCV không đưa ra bất kỳ tuyên bố hay đảm bảo nào rằng thông tin (bao gồm mọi hướng dẫn)
                                    về dịch vụ chính xác, đầy
                                    đủ hoặc hữu ích. Bạn xác nhận rằng bạn tự chịu rủi ro khi sử dụng dịch vụ. TopCV không đảm bảo
                                    rằng việc bạn sử dụng dịch
                                    vụ là hợp pháp trong bất kỳ khu vực pháp lý cụ thể nào và TopCV từ chối đưa ra các bảo đảm đó
                                    một cách cụ thể. Một số khu
                                    vực pháp lý giới hạn hoặc không cho phép tuyên bố miễn trừ trách nhiệm về bảo đảm ngụ ý hay các
                                    bảo đảm khác, vì vậy
                                    tuyên bố miễn trừ trách nhiệm trên có thể không áp dụng cho bạn trong phạm vi luật pháp của khu
                                    vực pháp lý đó áp dụng cho
                                    bạn và các Điều Khoản Sử Dụng này.
                                </li>
                                <li>Bằng cách truy cập hay sử dụng dịch vụ, bạn tuyên bố và bảo đảm rằng hoạt động của mình là hợp
                                    pháp trong mọi khu vực
                                    pháp lý nơi bạn truy cập hay sử dụng dịch vụ.
                                </li>
                                <li>TopCV không xác nhận nội dung và từ chối cụ thể bất kỳ trách nhiệm hay trách nhiệm pháp lý nào
                                    đối với bất kỳ cá nhân hay tổ
                                    chức nào về mọi mất mát, thiệt hại (cho dù thực sự, do hậu quả, do trừng phạt hoặc bất kỳ điều
                                    gì khác), thương tích, khiếu nại,
                                    trách nhiệm pháp lý hay nguyên nhân khác dưới mọi hình thức hoặc đặc điểm dựa trên hoặc do bất
                                    kỳ nội dung nào.
                                </li>
                            </ol>
                            <h2>8. GIỚI HẠN TRÁCH NHIỆM PHÁP LÝ</h2>
                            <p>Trong mọi tình huống, TopCV sẽ không chịu trách nhiệm pháp lý với bạn về bất kỳ mất mát hay thiệt hại
                                nào dưới mọi hình thức (bao gồm
                                nhưng không giới hạn ở bất kỳ mất mát hay thiệt hại trực tiếp, gián tiếp, kinh tế, cảnh báo, đặc
                                biệt, do trừng phạt, ngẫu nhiên hoặc do hậu
                                quả nào) có liên quan trực tiếp hoặc gián tiếp đến: (a) dịch vụ; (b) nội dung TopCV; (c) nội dung
                                người dùng; (d) việc bạn sử dụng, không
                                thể sử dụng hoặc hiệu quả của dịch vụ; (e) mọi hành động được thực hiện có liên quan đến việc điều
                                tra của TopCV hoặc cơ quan thực thi
                                pháp luật về việc sử dụng dịch vụ của bạn hoặc bất kỳ bên nào khác; (f) bất kỳ hành động nào được
                                thực hiện có liên quan đến chủ sở hữu
                                bản quyền hoặc quyền sở hữu trí tuệ khác; (g) mọi lỗi hoặc thiếu sót trong hoạt động của dịch vụ;
                                hoặc (h) mọi thiệt hại đối với mọi máy tính,
                                thiết bị di động, thiết bị hoặc công nghệ khác của người dùng, bao gồm nhưng không giới hạn ở thiệt
                                hại do bất kỳ hành vi vi phạm bảo mật
                                nào hoặc do bất kỳ vi-rút, lỗi, giả mạo, gian lận, lỗi, thiếu sót, gián đoạn, khiếm khuyết, trì hoãn
                                quá trình hoạt động hoặc truyền đi, lỗi mạng
                                hay dòng máy tính, mọi sự cố kỹ thuật khác hoặc trục trặc khác, bao gồm nhưng không giới hạn ở thiệt
                                hại do mất lợi nhuận, mất tín nhiệm,
                                mất dữ liệu, ngừng việc, độ chính xác của kết quả hoặc lỗi hay trục trặc máy tính, ngay cả khi có
                                thể dự đoán được hoặc TopCV đã được
                                thông báo hay lẽ ra phải biết về khả năng xảy ra các thiệt hại đó, cho dù theo hợp đồng, do sơ ý,
                                trách nhiệm pháp lý nghiêm ngặt hoặc sai
                                lầm cá nhân (bao gồm, nhưng không giới hạn ở nguyên nhân một phần hoặc toàn bộ do sơ ý, thiên tai,
                                lỗi viễn thông, lấy cắp hay hủy hoại
                                dịch vụ). Trong mọi trường hợp, TopCV không chịu trách nhiệm pháp lý với bạn hoặc bất kỳ ai khác về
                                mất mát, thiệt hại hoặc thương tích,
                                bao gồm nhưng không giới hạn ở thương tích cá nhân hoặc tử vong.</p>
                            <h2>9. GIẢI QUYẾT TRANH CHẤP</h2>
                            <ol>
                                <li>Bất kỳ tranh chấp phát sinh trong quá trình sử dụng dịch vụ của TopCV sẽ được giải quyết theo
                                    pháp luật hiện hành của nước
                                    Cộng hòa xã hội chủ nghĩa Việt Nam.
                                </li>
                                <li>
                                    Bất kỳ khiếu nại nào phát sinh trong quá sử dụng sản phẩm phải được gửi đến TopCV ngay sau khi
                                    xảy ra sự kiện phát sinh
                                    khiếu nại:<br>
                                    Địa chỉ liên lạc: Tầng 3, Tòa nhà Gold Season, 47 Nguyễn Tuân, P. Thanh Xuân Trung, Q. Thanh Xuân, Hà Nội<br>
                                    Điện thoại: 024 6680 5588<br>
                                    Email: legal@topcv.vn<br>
                                </li>
                                <li>TopCV sẽ căn cứ từng trường hợp cụ thể để có phương án giải quyết cho phù hợp. Khi thực hiện
                                    quyền khiếu nại, người khiếu
                                    nại có nghĩa vụ cung cấp các giấy tờ, bằng chứng, căn cứ có liên quan đến việc khiếu nại và phải
                                    chịu trách nhiệm về nội dung
                                    khiếu nại, giấy tờ, bằng chứng, căn cứ do mình cung cấp theo quy định pháp luật.
                                </li>
                                <li>TopCV chỉ hỗ trợ, giải quyết khiếu nại, tố cáo của Người Dùng trong trường hợp bạn đã ghi đầy
                                    đủ, trung thực và chính xác
                                    thông tin khi đăng ký tài khoản.
                                </li>
                                <li>Đối với tranh chấp giữa Người Dùng với nhau, hoặc tranh chấp với Bên Thứ Ba, có thể TopCV sẽ gửi
                                    thông tin liên hệ cho các
                                    đối tượng tranh chấp để các bên tự giải quyết hoặc TopCV sẽ căn cứ vào tình hình thực tế để giải
                                    quyết. Theo đó, TopCV sẽ
                                    bảo vệ quyền lợi tối đa có thể cho Người Dùng hợp pháp và chính đáng.
                                </li>
                                <li>Người Dùng đồng ý bảo vệ, bồi hoàn và loại trừ TopCV khỏi những nghĩa vụ pháp lý, tố tụng, tổn
                                    thất, chi phí bao gồm nhưng
                                    không giới hạn án phí, chi phí luật sư, chuyên gia tư vấn có liên quan đến việc giải quyết hoặc
                                    phát sinh từ sự vi phạm của
                                    Người Dùng trong quá trình sử dụng sản phẩm.
                                </li>
                                <li>Nếu tranh chấp không được giải quyết trong vòng sáu mươi (60) ngày kể từ ngày một Bên thông báo
                                    cho Bên còn lại bằng văn
                                    bản về việc phát sinh tranh chấp thì một trong các Bên có quyền đưa vụ việc ra giải quyết tại
                                    tòa án có thẩm quyền tại TP Hà
                                    Nội theo quy định của pháp luật, Bên thua kiện sẽ phải chịu toàn bộ các chi phí tố tụng tại tòa
                                    án.
                                </li>
                            </ol>
                            <h2>10. HIỆU LỰC</h2>
                            <ol>
                                <li>Các quy định tại Điều Khoản Sử Dụng này có thể được cập nhật, chỉnh sửa bất cứ lúc nào mà không
                                    cần phải thông báo trước
                                    tới người dùng. TopCV sẽ công bố rõ trên Website, về những thay đổi, bổ sung đó và cập nhật đến
                                    bạn để có được sự đồng ý
                                    của bạn. Các hình thức công bố bao gồm nhưng không giới hạn bởi các kênh email, đăng ký tài
                                    khoản TopCV và thông qua
                                    thông báo được hiển thị trên trang Website của chúng tôi trước khi áp dụng các thay đổi. Trong
                                    trường hợp bạn không đồng ý
                                    việc cập nhật, sửa đổi của TopCV thì bạn không thể tiếp tục sử dụng Dịch Vụ của TopCV.
                                </li>
                                <li>Trong trường hợp một hoặc một số điều Điều Khoản Sử Dụng này xung đột với các quy định của luật
                                    pháp và bị Tòa án tuyên
                                    là vô hiệu, điều khoản đó sẽ được chỉnh sửa cho phù hợp với quy định pháp luật hiện hành, và
                                    phần còn lại của Điều Khoản Sử
                                    Dụng này vẫn giữ nguyên giá trị.
                                </li>
                                <li>Điều Khoản Sử Dụng này có giá trị như Hợp Đồng. Người Dùng hiểu rằng, đây là hợp đồng điện tử,
                                    Giá trị pháp lý của hợp
                                    đồng điện tử không thể bị phủ nhận chỉ vì hợp đồng đó được thể hiện dưới dạng thông điệp dữ liệu
                                    theo Pháp Luật về Giao
                                    Dịch Điện Tử. Bằng cách nhấn vào nút “Tôi đồng ý”, Người Dùng hoàn toàn đồng ý và đã hiểu các
                                    điều khoản trong Hợp Đồng
                                    này và Hợp Đồng có hiệu lực kề từ thời điểm này. Nếu vi phạm các Điều khoản này, bạn đồng ý chịu
                                    hoàn toàn trách nhiệm và
                                    bồi thường thiệt hại (Nếu có) với TopCV.
                                </li>
                            </ol>
                            <h2>THÔNG TIN LIÊN LẠC</h2>
                            <p>Nếu bạn có câu hỏi về Điều Khoản Sử Dụng này, vui lòng gửi email tới địa chỉ legal@topcv.vn để được
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
                                          const user = document.querySelector('.js-user');
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
