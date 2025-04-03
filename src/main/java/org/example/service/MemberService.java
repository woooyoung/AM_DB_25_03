package org.example.service;

import org.example.dao.MemberDao;
import org.example.dto.Member;

import java.sql.Connection;

public class MemberService {

    private MemberDao memberDao;

    public MemberService() {
        this.memberDao = new MemberDao();
    }

    public boolean isLoginIdDup(Connection conn, String loginId) {
        return memberDao.isLoginIdDup(conn, loginId);
    }

    public int doJoin(Connection conn, String loginId, String loginPw, String name) {
        return memberDao.doJoin(conn, loginId, loginPw, name);
    }

    public Member getMemberByLoginId(Connection conn, String loginId) {
        return memberDao.getMemberByLoginId(conn, loginId);
    }
}
