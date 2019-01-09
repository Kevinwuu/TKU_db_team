const db = require('../util/database');

module.exports = class Post {
    constructor(id, title, category, date, article) {
        this.id = id;
        this.title = title;
        this.category = category;
        this.date = date;
        this.article = article;
    }

    //
    static fetchAll() {
        return db.execute('select t.t_id,t.name,t.state,t.pay,count(tm.t_id) as number from volleyball.team t left join volleyball.team_member tm ON t.t_id = tm.t_id group by t.t_id');
    }

    static findById(name) {
        return db.execute('SELECT * FROM team where name = ?', [name]);
    }

    static addTeam(req) {
        return db.execute('INSERT INTO team(name) VALUES(?)', [req.body.name]);
    }

    static fetchDetail(id) {
        return db.execute('select m.name,m.m_id from volleyball.member m join team_member tm on tm.m_id = m.m_id where t_id = ? ', [id]);
    }
    static addMember(req) {
        return db.execute('UPDATE member SET ', [req.body.name]);
    }


    static fetchCombo() {
        return db.execute('select name,m_id from volleyball.member m where m_id not in (select m_id from volleyball.team_member)');
    }
    static delMember(m_id) {
        return db.execute('DELETE FROM volleyball.team_member where m_id= ?', [m_id]);
    }

    static delTeam(t_id) {
        return db.execute('DELETE FROM volleyball.team where t_id= ?', [t_id]);
    }



    // // UPDATE
    // static updateById(req, res) {
    //     const id = req.body.id;
    //     const title = req.body.title;
    //     const category = req.body.category;
    //     const date = req.body.date;
    //     //const date = new Date();
    //     const article = req.body.editor1;
    //     console.log('model:updateById()', id, title, category, date, article)
    //     return db.execute(
    //         'UPDATE post SET title = ?, category = ?, date = ?, article = ? WHERE id = ?', [title, category, date, article, id]
    //     );
    // }


    // // DELETE
    // static deleteById(id) {
    //     return db.execute(
    //         'DELETE FROM post WHERE id = ?', [id]
    //     );
    // }


    // static getCount() {
    //     return db.execute('SELECT COUNT(*) as count FROM post');
    // }
};