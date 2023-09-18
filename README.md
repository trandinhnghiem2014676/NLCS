# Tên dự án: Web đọc truyện tích hợp

## Phân tích chức năng

### Đăng nhâp
* Quyền: admin, user
* Điều kiện: có tài khoản
* Mô tả:Từ giao diện trang chủ. Người dùng chọn vào mục tài khoản. Chọn đăng nhập. Người dùng sẽ được chuyển đến giao diện đăng nhập. Người dùng nhập các thông tin sau: tên tài khoản, mật khẩu. Nếu tên tài khoản và mật khẩu chính xác thì thông báo: "đăng nhập hoàn tất" rồi chuyển về tài khoản cá nhân, ngược lại thông báo: "tên hoặc mật khẩu không chính xác" rồi chuyển về giao diện đăng nhập và yêu cầu nhập lại tên và tài khoản.
### Đăng ký
* Quyền: tất cả
* Điều kiện:
* Mô tả: Từ giao diện trang chủ. Người dùng chọn vào mục tài khoản. Chọn đăng ký. Người dùng sẽ được chuyển đến giao diện đăng ký. Người dùng nhập các thông tin sau: tên tài khoản, mật khẩu, ngày tháng năm sinh, giới tính. Sau đó người dùng bấm đăng ký. Hiển thị: "Đăng ký tài khoản thành công" rồi chuyển về trang tài khoản cá nhân.

### Đăng xuất
* Quyền: user, admin
* Điều kiện: đang đăng nhập vào tài khoản
* Mô tả: Từ giao diện tài khoản cá nhân chọn đăng xuất. Thông báo đăng xuất thành công và trả về giao diện trang chủ.

### Đăng truyện
* Quyền: user
* Điều kiện: đã đăng nhập vào tài khoản
* Mô tả: Từ giao diện trang tài khoản cá nhân chọn vào mục truyện của tôi. Người dùng sẽ được chuyển đến giao diện truyện cá nhân. Chọn thêm , người dùng sẽ được chuyển đến giao diện thêm truyện. Người dùng nhập vào các thông tin sau: tên truyện,loại truyện(truyện chữ hoặc truyện tranh), thể loại. Người dùng sẽ được chuyển đến giao diện truyện vừa được tạo chọn thêm chương mới sau đó người dùng nhập tên chương sau khi nhập trong thì chọn đồng ý , người dùng sẽ được chuyển về giao diện nhập ảnh, sau khi nhập xong truyện thì chọn lưu. Hiển thị "Lưu thành công", rồi chuyển về giao diện truyện vừa mới được tạo.

### Đọc truyện
* Quyền: tất cả
* Điều kiện:
* Mô tả: Từ giao diện trang chủ tìm truyện mình muốn đọc sau đó click vào truyện đó , người dùng sẽ được trả về giao diện của truyện mình đã chọn , sau đó người dùng chọn vào chương mình muốn đọc rồi bắt đầu đọc.


### Xóa truyện
* Quyền: admin, user
* Điều kiện: đã đăng nhập vào tài khoản
* Mô tả: <1> Đối với admin: từ trang admin chọn mục quản lý truyện, chọn vào tài khoản có truyện muốn xóa, chọn truyện muốn xóa, hiển thị: "bạn có chắc chắn muốn xóa truyện...." chọn yes or no. Nếu chọn yes thì hiển thị " xóa truyện thành công" sau đó chuyển về trang truyện của tài khoản khi nãy, nếu chọn no thì chuyển đến trang truyện của tài khoản khi nãy.
         <2> Đối với user: từ trang tài khoản cá nhân chọn vào mục truyện của tôi. Người dùng sẽ được chuyển đến giao
diện truyện cá nhân, chọn vào truyện mình muốn thao tác. Người dùng sẽ được chuyển đến giao diện của truyện vừa được chọn. Nếu muốn xóa thì chọn vào mục xóa, hiển thị " bạn có chắc chắn muốn xóa truyện...." chọn yes or no. Nếu chọn yes thì hiển thị "xóa truyện thành công" sau đó quay về giao diện truyện cá nhân, nếu chọn no thì quay về giao diện truyện cá nhân.


### Sửa truyện
* Quyền: user
* Điều kiện: đã đăng nhập vào tài khoản
* Mô tả: từ trang tài khoản cá nhân chọn vào mục truyện của tôi. Người dùng sẽ được chuyển đến giao
diện truyện cá nhân, chọn vào truyện mình muốn thao tác.  Người dùng sẽ được chuyển đến giao diện của truyện vừa được chọn. Nếu muốn sửa truyện chọn vào mục sửa truyện tại đây người dùng có thể chọn các chức năng sau: " Thêm chương, xóa chương, sửa tên chương và sửa tên truyện". 
Nếu người dùng chọn thêm chương thì từ giao diện thêm chương mới  sau đó người dùng nhập tên chương sau khi nhập trong thì chọn đồng ý , người dùng sẽ được chuyển về giao diện nhập ảnh, sau khi nhập xong truyện thì chọn lưu. Hiển thị "Lưu thành công", rồi chuyển về giao diện của
truyện.
Nếu chọn vào mục xóa chương , chuyển đến giao diện xóa chương , người dùng sẽ chọn các chương muốn xóa sau đó chọn xóa, hiển thị: "Bạn có chắc chắn muốn xóa chương ...." chọn yes or no . Nếu chọn yes thì hiện thị :" Xóa chương thành công" sau đó quay về giao diện truyện khi nãy, nếu chọn no thì quay về trang truyện khi nãy.
Nêú người dùng chọn đổi tên truyện thị hiện ra giao diện đồi tên truyện , người dùng tiến hành sửa đổi tên truyện sau đó chọn yes or no. Nếu chọn yes thì hiện thị :" Đổi tên truyện thành công" sau đó quay về giao diện truyện khi nãy, nếu chọn no thì quay về trang truyện khi nãy.
Nêú người dùng chọn đổi tên chương thị hiện ra giao diện đồi tên chương , người dùng chọn chương muốn đổi tên rồi tiến hành sửa đổi tên chương sau đó chọn yes or no. Nếu chọn yes thì hiện thị :" Đổi tên chương thành công" sau đó quay về giao diện truyện khi nãy, nếu chọn no thì quay về trang truyện khi nãy.


### Tìm truyện
* Quyền: tất cả
* Điều kiện:
* Mô tả: Tại giao diện trang chủ chọn vào thanh tiềm kiểm nhập vào tên truyện cần tìm, người dùng sẽ được chuyển đến giao diện tất cả các truyện có tên trùng với từ được nhập. Hoặc người dùng có thể chọn vào mục thể loại chọn thể loại mình muốn tìm, người dùng sẽ được chuyển đến giao diện các truyện có thể loại muốn tìm.

### Báo cáo truyện
* Quyền: user
* Điều kiện: đã đăng nhập vào tài khoản
* Mô tả: Tại giao diện trang chủ người dùng tìm và chọn truyện mình muốn báo cáo , chọn vào mục thêm chọn báo cáo , người dùng sẽ được chuyển đến giao diện báo cáo truyện sau đó nhập nội dung mình muốn báo cáo , chọn gửi hoặc hủy.
Nêú người dùng chọn đổi tên truyện thị hiện ra giao diện đồi tên truyện , người dụng tiến hành sửa đổi tên truyện sau đó chọn yes or no. Nếu chọn gửi thì hiện thị :" Báo cáo truyện thành công" sau đó quay về giao diện truyện khi nãy, nếu chọn hủy thì quay về trang truyện khi nãy.

### Phản hồi báo cáo
* Quyền: admin
* Điều kiện: đã đăng nhập vào tài khoản
* Mô tả: Tại giao diện trang admin chọn phản hồi báo cáo, sau đó admin sẽ được chuyển đến trang phản hồi báo cáo . Chọn báo cáo muốn phản hồi tiến hành nhập phản hồi chọn gửi hoặc hủy.  Nếu chọn gửi thì hiện thị :" Gửi thành công" sau đó quay về giao diện phản hồi báo cáo, nếu chọn hủy thì quay về phản hồi báo cáo.

### Thêm truyện yêu thích
* Quyền: user
* Điều kiện: đã đăng nhập vào tài khoản
* Mô tả: Tại giao diện trang chủ người dùng tìm và chọn truyện mình muốn thêm vào mục yêu thích , chọn vào mục thêm chọn thêm vào mục yêu thích , hiển thị :"Thêm truyện yêu thích thành công", sau đó quay lại giao diện của trang truyện.

### Xem lịch sử đọc truyện
* Quyền: user
* Điều kiện: đã đăng nhập vào tài khoản
* Mô tả: Tại giao diện trang tài khoản cá nhân người dùng chọn vào mục lịch sử xem, người dùng sẽ được chuyển đến giao diện lịch sử các truyện đã xem gần đây.


### Thống kê truyện đọc và thích nhiều nhất
* Quyền: admin
* Điều kiện : đã đăng nhập vào tài khoản
* Mô tả: Tại giao diện trang tài admin chọn mục thống kê truyện, chọn loại thống kê (lượng đọc,lượng thích) giao diện hiển thị ra danh sách các truyện đã được thống kê từ nhiều đến ít.