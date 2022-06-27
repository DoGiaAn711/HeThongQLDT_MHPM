/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Hoanguyen
 */
public class ThongTinHocPhan {
    private int MaHP;
    private String TenHP;
    private int SoTinChi;
    private int DonGia;

    public ThongTinHocPhan() {
    }

    public ThongTinHocPhan(int MaHP, String TenHP, int SoTinChi, int DonGia) {
        this.MaHP = MaHP;
        this.TenHP = TenHP;
        this.SoTinChi = SoTinChi;
        this.DonGia = DonGia;
    }

    public int getMaHP() {
        return MaHP;
    }

    public void setMaHP(int MaHP) {
        this.MaHP = MaHP;
    }

    public String getTenHP() {
        return TenHP;
    }

    public void setTenHP(String TenHP) {
        this.TenHP = TenHP;
    }

    public int getSoTinChi() {
        return SoTinChi;
    }

    public void setSoTinChi(int SoTinChi) {
        this.SoTinChi = SoTinChi;
    }

    public int getDonGia() {
        return DonGia;
    }

    public void setDonGia(int DonGia) {
        this.DonGia = DonGia;
    }
    
}
