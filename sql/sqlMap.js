// sql语句
const sqlMap = {
    // 用户
    user: {
        add: 'insert into user(id, name, age) values (0, ?, ?)',
        gettext:'select * from text where isdel=0',
        postID:'select * from text where id = ?'
    }
}

module.exports = sqlMap;