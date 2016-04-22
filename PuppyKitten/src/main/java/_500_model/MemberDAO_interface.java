package _500_model;

import java.util.List;

public interface MemberDAO_interface {

	public void insert(MemberBean bean);
	public List<MemberBean> select(String MEM_ACCOUNT);
	public MemberBean selectMemberByAccount(String account);
	public void update(MemberBean bean);
	public MemberBean selectMemberByMemId(Integer memberId);
	public List<MemberBean> selectmember();
	public List<MemberBean> selectId(String MEM_ACCOUNT);
	public List<MemberBean> selectId2(Integer MEM_ID);
	public MemberBean selectMemberBypwdaccount(String account);
	public List<MemberBean> selectBlockade(String MEN_STATUS);

}
