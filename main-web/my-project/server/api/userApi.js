const models = require('../db');
const express = require('express');
const router = express.Router();
const mysql = require('mysql');
const $sql = require('../sqlMap');

// 连接数据库
const conn = mysql.createConnection(models.mysql);

conn.connect();
const jsonWrite = function(res, ret) {
    if(typeof ret === 'undefined') {
        res.json({
            code: '1',
            msg: '操作失败'
        });
    } else {
        res.json(ret);
    }
};

// 增加用户接口
router.post('/addUser', (req, res) => {
    const sql = $sql.user.add;
    const params = req.body;
    console.log(params);
    conn.query(sql, [params.username, params.age], function(err, result) {
        if (err) {
            console.log(err);
        }
        if (result) {
            jsonWrite(res, result);
        }
    })
});
// 获取所有数据
router.get('/getData',(req,res) => {
    const sql = $sql.user.gettext
    conn.query(sql,(err,result) => {
        if(err) return res.json({err_code:1,message:'获取数据失败',affectedRows:0})
        res.json({err_code:0,message:result,affectedRows:result.affectedRows})
    })
})
// 根据ID获取数据
router.get('/getID',(req,res) => {
    const sql = $sql.user.postID
    const id = req.query.id
    conn.query(sql,id,(err,result) => {
        if(err) return res.json({err_code:1,message:'获取数据失败',affectedRows:0})
        res.json({err_code:0,message:result,affectedRows:result.affectedRows})
    })
})

module.exports = router;