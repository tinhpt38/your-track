# Yor Track.

# Kiến trúc xây dựng 
## Project Architecture

your_track/
- lib/
    - l10n/
    - main.dart
    - app/
        - app_module.dart: Quản lý các màn hình và các denpendency trong ứng dụng. 
        - app_widget.dart : Đây là root app
        - your_track/
            - domain/: 
                - entities/ : thực thể.Phần này thể hiện một thực thể mà lưu xuống database. Cái này thì không trực tiếp lưu xuống database mà phải thông qua repository. Có thể là model.
                - models/ : Là nơi ánh xạ dữ liệu, cái này cần phải có factory để tạo nó.
                - usecasees/: Sẽ chứa các thao tác làm việc với hệ thống.
                - repositories/ : Ứng dụng giao tiếp trực tiếp với cái này để lưu vào database.
            - extra/
                - const/ : Chứa các biến và các hằng số trong ứng dụng
                - utility/ : Chứa các hàm, biến, lớp tuỳ biến để thực hiện một tác vụ nào đó. 
            - infa/ : Chứa các lớp cơ sở của ứng dụng. Ví dụ như interface của repository, các class của DB, MySQL Resdis. Phần này implement interface của repositoroy
                - datasources/
                - errors/
                - repositories/
            - presenter/
                - pages/ : Chứa các màn hình trong ứng dụng
                    - ...modules/
                - store/ : Chứa các state và store của ứng dụng
                    - ...modules/


    

