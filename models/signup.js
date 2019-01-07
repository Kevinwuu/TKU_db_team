const db = require('../util/database');

module.exports = class Post {
    constructor(id, title, category, date, article) {
        this.id = id;
        this.title = title;
        this.category = category;
        this.date = date;
        this.article = article;
    }

    // CREATE
    static addMember(req, res) {
        return db.execute(
            'INSERT INTO member (name, gender, id, birthday, school_id, major_id,student_id, tel, email) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)', [req.body.name, req.body.gender, req.body.id, req.body.birthday, req.body.school_id, req.body.major_id, req.body.student_id, req.body.tel, req.body.email]
        );
    }

    // READ school
    static fetchSchool() {
        return db.execute('SELECT * FROM school');
    }

    // READ major
    static fetchMajor() {
        return db.execute('SELECT * FROM major');
    }



};