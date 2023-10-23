package com.beans_mall.member.dao;

import com.beans_mall.member.model.MemberVO;

public interface KKBMemberDAO {

    MemberJoinBuilder memberJoin(MemberVO member);

    int idCheck(String memberId);

    MemberVO memberLogin(MemberVO member);

    MemberVO getMemberInfo(String memberId);

    interface MemberJoinBuilder {
        int buildMemberJoin();
    }

    interface IdCheckBuilder {
        int buildIdCheck();
    }

    interface MemberLoginBuilder {
        MemberVO buildMemberLogin();
    }

    interface GetMemberInfoBuilder {
        MemberVO buildGetMemberInfo();
    }
}
