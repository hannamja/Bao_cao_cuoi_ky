package com.example.demo.entity;
// Generated Jul 11, 2023, 9:57:41 PM by Hibernate Tools 4.3.5.Final

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.UniqueConstraint;

/**
 * Nhanvien generated by hbm2java
 */
@Entity
@Table(name = "nhanvien", uniqueConstraints = @UniqueConstraint(columnNames = "MATK"))
public class Nhanvien implements java.io.Serializable {

	private Integer manv;
	private Taikhoan taikhoan;
	private String tennv;
	private String gioitinh;
	private Date ngaysinh;
	private String sdt;
	private String diachi;
	private String email;
	private String cmnd;
	private String trangthai;
	private Set<Gia> gias = new HashSet<Gia>(0);
	private Set<Hoadon> hoadons = new HashSet<Hoadon>(0);
	private Set<Khuyenmai> khuyenmais = new HashSet<Khuyenmai>(0);
	private Set<Taikhoan> taikhoans = new HashSet<Taikhoan>(0);
	private Set<Phieunhap> phieunhaps = new HashSet<Phieunhap>(0);
	private Set<Phieudat> phieudats = new HashSet<Phieudat>(0);

	public Nhanvien() {
	}

	public Nhanvien(Integer manv) {
		super();
		this.manv = manv;
	}

	public Nhanvien(Taikhoan taikhoan, String tennv, String gioitinh, Date ngaysinh, String sdt, String diachi,
			String email, String cmnd, String trangthai, Set<Gia> gias, Set<Hoadon> hoadons, Set<Khuyenmai> khuyenmais,
			Set<Taikhoan> taikhoans, Set<Phieunhap> phieunhaps, Set<Phieudat> phieudats) {
		this.taikhoan = taikhoan;
		this.tennv = tennv;
		this.gioitinh = gioitinh;
		this.ngaysinh = ngaysinh;
		this.sdt = sdt;
		this.diachi = diachi;
		this.email = email;
		this.cmnd = cmnd;
		this.trangthai = trangthai;
		this.gias = gias;
		this.hoadons = hoadons;
		this.khuyenmais = khuyenmais;
		this.taikhoans = taikhoans;
		this.phieunhaps = phieunhaps;
		this.phieudats = phieudats;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "MANV", unique = true, nullable = false)
	public Integer getManv() {
		return this.manv;
	}

	public void setManv(Integer manv) {
		this.manv = manv;
	}

	@OneToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "MATK", unique = true)
	public Taikhoan getTaikhoan() {
		return this.taikhoan;
	}

	public void setTaikhoan(Taikhoan taikhoan) {
		this.taikhoan = taikhoan;
	}

	@Column(name = "TENNV", length = 45)
	public String getTennv() {
		return this.tennv;
	}

	public void setTennv(String tennv) {
		this.tennv = tennv;
	}

	@Column(name = "GIOITINH", length = 45)
	public String getGioitinh() {
		return this.gioitinh;
	}

	public void setGioitinh(String gioitinh) {
		this.gioitinh = gioitinh;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "NGAYSINH", length = 10)
	public Date getNgaysinh() {
		return this.ngaysinh;
	}

	public void setNgaysinh(Date ngaysinh) {
		this.ngaysinh = ngaysinh;
	}

	@Column(name = "SDT", length = 45)
	public String getSdt() {
		return this.sdt;
	}

	public void setSdt(String sdt) {
		this.sdt = sdt;
	}

	@Column(name = "DIACHI", length = 45)
	public String getDiachi() {
		return this.diachi;
	}

	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}

	@Column(name = "EMAIL", length = 45)
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "CMND", length = 45)
	public String getCmnd() {
		return this.cmnd;
	}

	public void setCmnd(String cmnd) {
		this.cmnd = cmnd;
	}

	@Column(name = "TRANGTHAI", length = 45)
	public String getTrangthai() {
		return this.trangthai;
	}

	public void setTrangthai(String trangthai) {
		this.trangthai = trangthai;
	}

	@OneToMany(fetch = FetchType.EAGER, mappedBy = "nhanvien")
	public Set<Gia> getGias() {
		return this.gias;
	}

	public void setGias(Set<Gia> gias) {
		this.gias = gias;
	}

	@OneToMany(fetch = FetchType.EAGER, mappedBy = "nhanvien")
	public Set<Hoadon> getHoadons() {
		return this.hoadons;
	}

	public void setHoadons(Set<Hoadon> hoadons) {
		this.hoadons = hoadons;
	}

	@OneToMany(fetch = FetchType.EAGER, mappedBy = "nhanvien")
	public Set<Khuyenmai> getKhuyenmais() {
		return this.khuyenmais;
	}

	public void setKhuyenmais(Set<Khuyenmai> khuyenmais) {
		this.khuyenmais = khuyenmais;
	}

	@OneToMany(fetch = FetchType.EAGER, mappedBy = "nhanvien")
	public Set<Taikhoan> getTaikhoans() {
		return this.taikhoans;
	}

	public void setTaikhoans(Set<Taikhoan> taikhoans) {
		this.taikhoans = taikhoans;
	}

	@OneToMany(fetch = FetchType.EAGER, mappedBy = "nhanvien")
	public Set<Phieunhap> getPhieunhaps() {
		return this.phieunhaps;
	}

	public void setPhieunhaps(Set<Phieunhap> phieunhaps) {
		this.phieunhaps = phieunhaps;
	}

	@OneToMany(fetch = FetchType.EAGER, mappedBy = "nhanvien")
	public Set<Phieudat> getPhieudats() {
		return this.phieudats;
	}

	public void setPhieudats(Set<Phieudat> phieudats) {
		this.phieudats = phieudats;
	}

}
