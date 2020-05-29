package com.airbnb.s1.place;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.airbnb.s1.booking.BookingVO;
import com.airbnb.s1.member.MemberVO;
import com.airbnb.s1.place.placeFile.PlaceFileVO;


@Repository
public class PlaceDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.airbnb.s1.place.PlaceDAO.";
	
	//file 추가되는 부분
	
	public List<PlaceVO> placeList(Map map) throws Exception{
		return sqlSession.selectList(NAMESPACE+"placeList",map);	
	}
	public List<PlaceVO> placeList(List<String> list) throws Exception{
		return sqlSession.selectList(NAMESPACE+"placeList",list);	
	}
	
	public long placeCount(Map map) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"placeCount",map);
	}
	
	public PlaceVO placeSelect(String placeNum) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"placeSelect", placeNum);
	}
	
	public List<BookingVO> checkDateSelect(String placeNum) throws Exception{
		List<BookingVO> ar = null;
		if(sqlSession.selectList(NAMESPACE+"checkDateSelect", placeNum) != null) {
			return sqlSession.selectList(NAMESPACE+"checkDateSelect", placeNum);
		}
		else {
			return ar;
		}
	}
	
	public List<String> selectFileNum(Map map) throws Exception{
		return sqlSession.selectList(NAMESPACE+"selectFileNum", map);		
	}
	
	
	public int hostPlaceAdd(PlaceVO placeVO) throws Exception{
		System.out.println("dao");
		return sqlSession.insert(NAMESPACE+"hostPlaceAdd", placeVO);
	}
	
	public List<PlaceVO> myPlace(MemberVO memberVO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"myPlace", memberVO);
	}

	
	public int placeUpdate1(PlaceVO placeVO) throws Exception{
		return sqlSession.update(NAMESPACE+"placeUpdate1", placeVO);
	}
	
	public int placeUpdate2(PlaceVO placeVO) throws Exception{
		return sqlSession.update(NAMESPACE+"placeUpdate2", placeVO);
	}
	
	public int placeUpdate3(PlaceVO placeVO) throws Exception{
		return sqlSession.update(NAMESPACE+"placeUpdate3", placeVO);
	}
	
	public int placeUpdate4(PlaceVO placeVO) throws Exception{
		return sqlSession.update(NAMESPACE+"placeUpdate4", placeVO);
	}
	
	public int placeUpdate5(PlaceVO placeVO) throws Exception{
		return sqlSession.update(NAMESPACE+"placeUpdate5", placeVO);
	}
	
	public int placeUpdate6(PlaceVO placeVO) throws Exception{
		return sqlSession.update(NAMESPACE+"placeUpdate6", placeVO);
	}
	
	public int placeUpdate7(PlaceVO placeVO) throws Exception{
		return sqlSession.update(NAMESPACE+"placeUpdate7", placeVO);
	}
	
	public int placeUpdate8(PlaceVO placeVO) throws Exception{
		return sqlSession.update(NAMESPACE+"placeUpdate8", placeVO);
	}
	
	public int placeUpdate9(PlaceVO placeVO) throws Exception{
		return sqlSession.update(NAMESPACE+"placeUpdate9", placeVO);
	}
	
	
	public int placeDelete(PlaceVO placeVO) throws Exception{
		return sqlSession.delete(NAMESPACE+"placeDelete", placeVO);
	}
	
	public PlaceFileVO picOne(PlaceVO placeVO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"picOne", placeVO);
	}
	
}
