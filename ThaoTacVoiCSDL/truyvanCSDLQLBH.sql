#Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
SELECT oID, odate, otatolprice
FROM orders;

#Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách
SELECT C.cname AS 'ten khach hang', P.pname AS 'danh sach san pham'
FROM customer AS C, product AS P, orderdetail AS ODT, orders AS OD
WHERE OD.cID = C.cID AND OD.oID = ODT.oID;

#Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
SELECT C.cname AS 'khach hang khong mua'
FROM customer AS C, orders AS OD
WHERE NOT C.cID = OD.cID;

#Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn. 
#Giá bán của từng loại được tính = odQTY*pPrice)
SELECT OD.oID AS 'ma khach hang', OD.odate AS 'ngay ban', P.pprice * ODT.odqty AS 'gia tien hoa don'
FROM orders AS OD, orderdetail AS ODT, product AS P
WHERE OD.oID = ODT.oID;

