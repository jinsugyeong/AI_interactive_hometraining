package kr.or.ksmart.dto;

public class Subject {
	private String subjectName;
	private String teacherName;
	private int subjectPrice;
	
	
	public String getSubjectName() {
		return subjectName;
	}
	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}
	public String getTeacherName() {
		return teacherName;
	}
	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}
	public int getSubjectPrice() {
		return subjectPrice;
	}
	public void setSubjectPrice(int subjectPrice) {
		this.subjectPrice = subjectPrice;
	}

}
