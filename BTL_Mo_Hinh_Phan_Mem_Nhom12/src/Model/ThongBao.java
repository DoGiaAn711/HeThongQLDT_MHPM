package Model;

/**
 *
 * @author boston
 */
public class ThongBao {
    private String NoiDung;
    private String MaSV;
    private String NgayGui;
    private String TieuDe;

    public String getNoiDung() {
        return NoiDung;
    }

    public void setNoiDung(String NoiDung) {
        this.NoiDung = NoiDung;
    }

    public String getMaSV() {
        return MaSV;
    }

    public void setMaSV(String MaSV) {
        this.MaSV = MaSV;
    }

    public String getNgayGui() {
        return NgayGui;
    }

    public void setNgayGui(String NgayGui) {
        this.NgayGui = NgayGui;
    }

    public String getTieuDe() {
        return TieuDe;
    }

    public void setTieuDe(String TieuDe) {
        this.TieuDe = TieuDe;
    }

    public ThongBao () {

    }

    public ThongBao (String NoiDung, String MaSV, String NgayGui, String TieuDe) {
        this.NoiDung = NoiDung;
        this.MaSV = MaSV;
        this.NgayGui = NgayGui;
        this.TieuDe = TieuDe;
    }
}
