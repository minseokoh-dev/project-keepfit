package com.keepfit.dao;

import java.util.List;

import com.keepfit.domain.MemberVO;
import com.keepfit.domain.PostVO;


public interface PostDAO {
	
	// 게시물 등록
	public int insertPost(PostVO vo);
	
	// 게시물 수정
	public void updatePost(PostVO vo) ;
	
	// 게시물 삭제
	public void deletePost(PostVO vo);

	// 게시물 상세 조회
	public PostVO getPost(PostVO vo);

	// id별 총 게시물 조회
	public List<PostVO> getPostList(PostVO vo);
	
	// 현재 게시물 번호 조회 (currval)
	public PostVO getPostId();
}
