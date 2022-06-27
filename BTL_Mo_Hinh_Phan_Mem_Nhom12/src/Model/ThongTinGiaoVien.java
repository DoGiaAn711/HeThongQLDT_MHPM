/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Hoanguyen
 */
public class ThongTinGiaoVien {
    private int MaGV;
    private int IDTK;
    private int MaLop;
    private String TenGV;
    private int SDT;
    private String DiaChi;

    public ThongTinGiaoVien() {
    }

    public ThongTinGiaoVien(int MaGV, int IDTK, int MaLop, String TenGV, int SDT, String DiaChi) {
        this.MaGV = MaGV;
        this.IDTK = IDTK;
        this.MaLop = MaLop;
        this.TenGV = TenGV;
        this.SDT = SDT;
        this.DiaChi = DiaChi;
    }

    public int getMaGV() {
        return MaGV;
    }

    public void setMaGV(int MaGV) {
        this.MaGV = MaGV;
    }

    public int getIDTK() {
        return IDTK;
    }

    public void setIDTK(int IDTK) {
        this.IDTK = IDTK;
    }

    public int getMaLop() {
        return MaLop;
    }

    public void setMaLop(int MaLop) {
        this.MaLop = MaLop;
    }

    public String getTenGV() {
        return TenGV;
    }

    public void setTenGV(String TenGV) {
        this.TenGV = TenGV;
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
    
}
