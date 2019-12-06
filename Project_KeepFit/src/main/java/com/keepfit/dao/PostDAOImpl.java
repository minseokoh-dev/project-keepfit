package com.keepfit.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.keepfit.domain.MemberVO;
import com.keepfit.domain.PostVO;



@Repository("postDAO")
public class PostDAOImpl implements PostDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;


	// 게시물 등록
	@Override
	public int insertPost(PostVO vo) {
		System.out.println("===> Mybatis insertPost() 호출");
		if (vo.getPost_writer() != null) {
			mybatis.insert("db.insertPost", vo);			
		} else {
			System.out.println("작성자가 없습니다! = " + vo.getPost_writer());
		}			
		return 1;
				
	}
	
	// 게시물 수정
	@Override
	public void updatePost(PostVO vo) {
		System.out.println("===> Mybatis updatePost() 호출");
		mybatis.update("db.updatePost", vo);		
	}

	// 게시물 삭제
	@Override
	public void deletePost(PostVO vo) {
		System.out.println("===> Mybatis deletePost() 호출");
		mybatis.delete("db.deletePost", vo);		
	}

	// 게시물 상세 조회
	@Override
	public PostVO getPost(PostVO vo) {
		System.out.println("===> Mybatis getPost() 호출");
		return mybatis.selectOne("db.getPost", vo);
	}

	// id별 총 게시물 조회
	@Override
	public List<PostVO> getPostList(PostVO vo) {
		System.out.println("===> Mybatis getPostList() 호출");
		return mybatis.selectList("db.getPostList", vo);
	}

	@Override
	public PostVO getPostId() {
		System.out.println("===> Mybatis getPostId() 호출");
		return mybatis.selectOne("db.getPostId");
	}


}	// end of PostDAOImpl
