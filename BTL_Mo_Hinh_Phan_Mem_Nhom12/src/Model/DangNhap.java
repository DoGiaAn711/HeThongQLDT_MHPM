/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Hoanguyen
 */
public class DangNhap {
    private int ID;
    private String TaiKhoan;
    private String MatKhau;

    public DangNhap() {
    }

    public DangNhap(int ID, String TaiKhoan, String MatKhau) {
        this.ID = ID;
        this.TaiKhoan = TaiKhoan;
        this.MatKhau = MatKhau;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getTaiKhoan() {
        return TaiKhoan;
    }

    public void setTaiKhoan(String TaiKhoan) {
        this.TaiKhoan = TaiKhoan;
    }

    public String getMatKhau() {
        return MatKhau;
    }

    public void setMatKhau(String MatKhau) {
        this.MatKhau = MatKhau;
    }
    
}
