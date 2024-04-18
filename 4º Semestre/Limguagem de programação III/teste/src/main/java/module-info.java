module org.example.teste {
    requires javafx.controls;
    requires javafx.fxml;


    opens org.example.teste to javafx.fxml;
    exports org.example.teste;
}