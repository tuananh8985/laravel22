<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Khoa Phạm - Quản Lý Học Sinh</title>
    <link type="text/css" href="{!!url('restfull/css/bootstrap.min.css')!!}" rel="stylesheet">
    <style type="text/css">
    .btn {padding:0px;font-weight:bold}
    </style>
    <script type="text/javascript">
    function xacnhanxoa(msg) {
        if (window.confirm(msg)) {
            return true;
        }
        return false;
    }
    </script>
</head>
<body>
    @if (session('status'))
        <div class="alert alert-success">
            {{ session('status') }}
        </div>
    @endif
    <div class="container" style="margin-top:20px">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">Danh Sách Học Sinh</h3>
            </div>
            <div class="panel-body">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>STT</th>
                            <th>Họ Tên</th>
                            <th>Điểm Toán</th>
                            <th>Điểm Lý</th>
                            <th>Điểm Hóa</th>
                            <th>Xóa</th>
                            <th>Sửa</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>Vũ Quốc Tuấn</td>
                            <td>7</td>
                            <td>8</td>
                            <td>9</td>
                            <th>
                                <form method="" action="">
                                    <button onclick="return xacnhanxoa('Bạn Có Chắc Muốn Xóa Không')" type="submit" id="delete" class="btn btn-link">Xóa</button>
                                </form>
                            </th>
                            <th><a href="#">Sửa</a></th>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>
</html>
