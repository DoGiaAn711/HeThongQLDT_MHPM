/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Hoanguyen
 */
public class ThongTinSinhVien {
    private int MaSV;
    private int IDTK;
    private String TenSV;
    private int SDT;
    private String DiaChi;
    private String Lop;

    public ThongTinSinhVien() {
    }

    public ThongTinSinhVien(int MaSV, int IDTK, String TenSV, int SDT, String DiaChi, String Lop) {
        this.MaSV = MaSV;
        this.IDTK = IDTK;
        this.TenSV = TenSV;
        this.SDT = SDT;
        this.DiaChi = DiaChi;
        this.Lop = Lop;
    }

    public int getMaSV() {
        return MaSV;
    }

    public void setMaSV(int MaSV) {
        this.MaSV = MaSV;
    }

    public int getIDTK() {
        return IDTK;
    }

    public void setIDTK(int IDTK) {
        this.IDTK = IDTK;
    }

    public String getTenSV() {
        return TenSV;
    }

    public void setTenSV(String TenSV) {
        this.TenSV = TenSV;
    }

    public int getSDT() {
        return SDT;
    }

    public void setSDT(int SDT) {
        this.SDT = SDT;
    }

    public String getDiaChi() {
        return DiaChi;
    }

    public void setDiaChi(String DiaChi) {
        this.DiaChi = DiaChi;
    }

    public String getLop() {
        return Lop;
    }

    public void setLop(String Lop) {
        this.Lop = Lop;
    }
    
}
